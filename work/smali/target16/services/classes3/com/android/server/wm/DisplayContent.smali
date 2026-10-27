.class public Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/RootDisplayArea;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# static fields
.field public static final COPY_SOURCE_VISIBILITY:Landroid/view/InsetsState$OnTraverseCallbacks;


# instance fields
.field public isDefaultDisplay:Z

.field public mA11yOverlayLayer:Landroid/view/SurfaceControl;

.field public mActiveSizeCompatActivities:Ljava/util/Set;

.field public final mAllSleepTokens:Ljava/util/ArrayList;

.field public mAnimationsDisabled:Z

.field public mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

.field public final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

.field public final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

.field public mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBaseDisplayCutout:Landroid/view/DisplayCutout;

.field public mBaseDisplayDensity:I

.field public mBaseDisplayHeight:I

.field public mBaseDisplayPhysicalXDpi:F

.field public mBaseDisplayPhysicalYDpi:F

.field public mBaseDisplayWidth:I

.field public mBaseRoundedCorners:Landroid/view/RoundedCorners;

.field final mCloseToSquareMaxAspectRatio:F

.field public final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mCompatibleScreenScale:F

.field public final mComputeImeLayeringTargetPredicate:Ljava/util/function/Predicate;

.field public mContentRecorder:Lcom/android/server/wm/ContentRecorder;

.field public mCurrentFocus:Lcom/android/server/wm/WindowState;

.field public mCurrentOverrideConfigurationChanges:I

.field public mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field public mCurrentUniqueDisplayId:Ljava/lang/String;

.field public final mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

.field public mDeferredRemoval:Z

.field final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDeviceStateListener:Lcom/android/server/wm/DeviceStateController$DeviceStateListener;

.field public final mDisplay:Landroid/view/Display;

.field public mDisplayAccessUIDs:Landroid/util/IntArray;

.field final mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

.field public mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public final mDisplayId:I

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDisplayReady:Z

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public mDisplayScalingDisabled:Z

.field public final mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

.field public final mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public mDontMoveToTop:Z

.field public mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

.field public final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

.field public mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

.field public final mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

.field public mFocusedApp:Lcom/android/server/wm/ActivityRecord;

.field public mForcedDisplayDensityRatio:F

.field public mHasSetIgnoreOrientationRequest:Z

.field public mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

.field public mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field public final mIgnoreActivitySizeRestrictions:Z

.field public mIgnoreDisplayCutout:Z

.field public mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mImeInputTargetTokenListenerPair:Landroid/util/Pair;

.field public mImeLayeringTarget:Lcom/android/server/wm/WindowState;

.field mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

.field public final mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

.field public mInEnsureActivitiesVisible:Z

.field public mInTouchMode:Z

.field public mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field public mInitialDisplayDensity:I

.field public mInitialDisplayHeight:I

.field public mInitialDisplayShape:Landroid/view/DisplayShape;

.field public mInitialDisplayWidth:I

.field public mInitialPhysicalXDpi:F

.field public mInitialPhysicalYDpi:F

.field public mInitialRoundedCorners:Landroid/view/RoundedCorners;

.field mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

.field public mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

.field public mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field public mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field public mInputOverlayLayer:Landroid/view/SurfaceControl;

.field public final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field public final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field public mIsDensityForced:Z

.field public mIsSizeForced:Z

.field public mLastContainsRunningSurfaceAnimator:Z

.field public mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

.field public mLastHasContent:Z

.field public mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field public mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mLastWallpaperVisible:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mMaxUiWidth:I

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinSizeOfResizeableTaskDp:I

.field public mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mOverlayLayer:Landroid/view/SurfaceControl;

.field public final mPerformLayout:Ljava/util/function/Consumer;

.field public final mPerformLayoutAttached:Ljava/util/function/Consumer;

.field public mPhysicalDisplaySize:Landroid/graphics/Point;

.field public final mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

.field public final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field public mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

.field public final mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

.field public final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

.field public mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

.field public final mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

.field public mRemoved:Z

.field public mRemoving:Z

.field mRestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

.field public final mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

.field public mSandboxDisplayApis:Z

.field public final mScheduleToastTimeout:Ljava/util/function/Consumer;

.field public final mShellRoots:Landroid/util/SparseArray;

.field public mSleeping:Z

.field public final mSysUiContextConfigCallback:Landroid/content/ComponentCallbacks;

.field public final mSystemGestureExclusion:Landroid/graphics/Region;

.field public mSystemGestureExclusionLimit:I

.field public final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

.field public final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field public mSystemGestureExclusionWasRestricted:Z

.field public final mSystemGestureFrameLeft:Landroid/graphics/Rect;

.field public final mSystemGestureFrameRight:Landroid/graphics/Rect;

.field public final mTempConfig:Landroid/content/res/Configuration;

.field public final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field public final mTmpConfiguration:Landroid/content/res/Configuration;

.field public final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field public mTmpInitial:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpUpdateAllDrawn:Ljava/util/LinkedList;

.field public mTmpWindow:Lcom/android/server/wm/WindowState;

.field public final mTokenMap:Ljava/util/HashMap;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

.field public final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field mUnrestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateImeLayeringTarget:Z

.field public final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

.field public final mVisibleBackgroundUserEnabled:Z

.field public mWaitingForConfig:Z

.field public mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field public final mWinAddedSinceNullFocus:Ljava/util/ArrayList;

.field public final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

.field public pendingLayoutChanges:I


# direct methods
.method public static synthetic $r8$lambda$-dBz3LtsWovWVT0SE5m__EwNfT4(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$8(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$09LjI9IPIDqkx6xQRSSpO0paSaI(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$6(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0qT6GYhjGguOWMyvPDOpZD9lW8A(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$3(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4s34v7G8Lcuovx1P3TC5uoSxeCg(Lcom/android/internal/util/ToBooleanFunction;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 5325
    invoke-interface {p0, p2}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 5326
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$5VVSLdls3hPPHQhvQRptGbZEU1E(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayShape;I)Landroid/view/DisplayShape;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayShapeForRotationUncached(Landroid/view/DisplayShape;I)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7IbtJ5vcDEoEBbSRss1P4GA9bts(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->lambda$updateImeParent$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$88asbRtRQRO-4lt2ZTtPxoxHBOw(Lcom/android/server/wm/WindowState;Ljava/lang/Object;)Z
    .registers 2

    .line 4747
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$8Tbkbl0gMRbotzTkph34M6qMGyw(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)V
    .registers 3

    .line 6632
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8m85W3X3VTtS8gMEDbxe8BSEsl4(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->lambda$getTouchableWinAtPointLocked$18(IILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EAxKLQ9fzXNKScFUDO7xr75pThw(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 6

    .line 5043
    iget-object p3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Window #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    aget p0, p2, p1

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public static synthetic $r8$lambda$FRQuL_4aVvApdsUcGAI2BrKuoIc(ILcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 3927
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$G1BEtMnNnT3qbANa9oT-cr3awsM(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->lambda$remove$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$J_nVVTS7hpAA1ieKeOVnAV0RQdQ(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getPresentUIDs$40(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_UatSEBEnjL0_6C0gAzkKVNFRY(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$applyFixedRotationForNonTopVisibleActivityIfNeeded$10(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OlRwH3_Eqb403xPL7MPG5vhH0aE(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SHV7q-Jyd6jZ5g0DvGCtdI1OTNo([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x0

    .line 6053
    aget v1, p0, v0

    if-gtz v1, :cond_6

    return-void

    .line 6056
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6057
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    .line 6058
    aget p1, p0, v0

    if-le v1, p1, :cond_18

    .line 6059
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Rect;->top:I

    :cond_18
    sub-int/2addr p1, v1

    .line 6061
    aput p1, p0, v0

    .line 6062
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$UC7JTn7h5LBaqrg59-WrVdTisdg(Ljava/util/Set;Landroid/graphics/Rect;)V
    .registers 2

    .line 6153
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$VVR6nkYVCFYv5vZJyeZ8yl-okqg(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$new$9(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WD6mu_CiNoQ_jLZoo0XugJgffRc(Lcom/android/server/wm/DisplayContent;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotationAndFinishFixedRotation$35(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUTCyB_ZYJVkBqlu2Wl2mZroZ8I([ILcom/android/server/wm/Task;)V
    .registers 3

    const/4 p1, 0x0

    .line 2849
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static synthetic $r8$lambda$a-Tce7A25P-cBUmBTaNYJdVj11U(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 5

    .line 3833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$clSEWgbdD7J53-HveH07515_mzk([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 6248
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1d

    aget v2, p0, v1

    .line 6249
    iget-boolean v3, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v3, :cond_1a

    .line 6250
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 6251
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1a

    .line 6254
    :cond_17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public static synthetic $r8$lambda$dJ395VmnhyPZPOe5qx0D4f5B43M(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 6549
    const-string v0, "releaseSelfIfNeeded"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7tHAwMP7F9Y6GRaAF8mvZCW4p4(Lcom/android/server/wm/DisplayContent;Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g3NtyUymxIbR0_Zt8BGLWPTUWWk(Lcom/android/server/wm/DisplayContent;Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gj4xUVjCoPR2QLUsM6PitdEzB68(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 6792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    return-void
.end method

.method public static synthetic $r8$lambda$hkBcv35oI_sDzJ-r3_1RUH-fcfo(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$5(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hyu7zHFgtjAI7KSmHZsuQ6Quv9Q(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 3

    .line 2838
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jBYehbd4VoumxuHejP-OiyhtLds(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jb34Dh5W4dvkHzL-AlQ2T5FmX-I(ILcom/android/server/wm/Task;)Z
    .registers 2

    .line 2843
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$jktdVmFKwN8OxsEqxnCtQ9SVO3c(Landroid/os/IBinder;)V
    .registers 2

    .line 4809
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJlanI_5F9VN3anSXxaGP_CuMro(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 6759
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v1, "removeAllTasks"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3_QfYVQ2X5TCCaPfidklMmlJ3A(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$4(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nHpbDYFjwovt_MYdFLfuSs4yfjE(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$shouldWaitForSystemDecorWindowsOnBoot$26(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nSzlgovjqO6D-KA1rputZkWgFOY(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$2(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ro8qyeDvIUnuK9S-Ac1Fs1DW7Pc(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$7(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$su8KD4baV200sMd8a1sRx_0lGgU([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 9

    .line 6272
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_30

    aget v2, p0, v1

    .line 6274
    iget-boolean v3, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_24

    .line 6275
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_10
    if-ltz v3, :cond_2d

    .line 6276
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 6277
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_21

    .line 6278
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 6281
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v3

    if-ne v3, v2, :cond_2d

    .line 6282
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    return-void
.end method

.method public static synthetic $r8$lambda$t6d5V3y0Nwh6xc7M2jAqZdlSn5w(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateDisplayAreaOrganizers$15(Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFwadkA0xaRS9UrocVznZTsuDyo(ZLcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 3

    if-eqz p0, :cond_7

    .line 6495
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->prepareForRemoval()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_c

    :cond_7
    const/4 p0, 0x1

    .line 6496
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->setShouldKeepNoTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    :goto_c
    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    return-object p2
.end method

.method public static synthetic $r8$lambda$tJXVQaj2eE3V3eVOQCwZkLsb81Q(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->lambda$startAsyncRotation$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$te_8suCE_K3O0BujUJx4lIz4l1s(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6308
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u-7u_ZNmdstcBmcjoouQRd8SXdQ(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/DisplayContent;->lambda$calculateSystemGestureExclusion$28(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIDf84hAQLeTEIKvFjEc9pmA_4c(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 6545
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$viMLDYZeNr6UfQB2dUSXkWvClEk(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCyonaUIo9-bnergykzWme-fUF4(Lcom/android/server/wm/DisplayContent;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$requestChangeTransition$16(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvZkU9PUeGyMM60EKYd0bEFEAJ0(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 6147
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_25

    .line 6148
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V

    .line 6150
    iget-boolean p0, p4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz p0, :cond_25

    .line 6151
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object p0

    .line 6152
    invoke-virtual {p4, p0}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 6153
    new-instance p2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;-><init>(Ljava/util/Set;)V

    invoke-static {p0, p2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 6154
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    .line 6159
    :cond_25
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_33

    .line 6160
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-ne p0, p1, :cond_33

    return p1

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$yGTXgEoVpU8p1xo8ZWpetoI3GlQ(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$destroyLeakedSurfaces$21(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsgJp-Z_ffqiAWfy5_GnfHti7ik(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 3922
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayReady(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeLayeringTarget(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMinimalTaskSizeDp(Lcom/android/server/wm/DisplayContent;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 308
    new-instance v0, Lcom/android/server/wm/DisplayContent$1;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Landroid/view/InsetsState$OnTraverseCallbacks;

    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V
    .registers 22

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    .line 1151
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "DisplayContent"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v6}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 299
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mVisibleBackgroundUserEnabled:Z

    const/4 v3, -0x1

    .line 369
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 377
    new-instance v7, Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v7, v3}, Lcom/android/server/wm/DisplayContent$ImeContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v7, v2, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 389
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 399
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 402
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 403
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v3, 0x0

    .line 404
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 405
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 407
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 412
    new-instance v5, Lcom/android/server/wm/utils/RotationCache;

    new-instance v8, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;

    invoke-direct {v8, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v5, v8}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 417
    new-instance v5, Lcom/android/server/wm/utils/RotationCache;

    new-instance v8, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;

    invoke-direct {v8, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v5, v8}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 420
    new-instance v5, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v5}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 421
    new-instance v5, Lcom/android/server/wm/utils/RotationCache;

    new-instance v8, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;

    invoke-direct {v8, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v5, v8}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    .line 426
    new-instance v5, Lcom/android/server/wm/utils/RotationCache;

    new-instance v8, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;

    invoke-direct {v8, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v5, v8}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    .line 434
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 435
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 438
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    const/4 v8, 0x1

    .line 445
    iput-boolean v8, v2, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    .line 455
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 461
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    .line 462
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 467
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 468
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 476
    new-instance v11, Landroid/view/DisplayInfo;

    invoke-direct {v11}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v11, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 485
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 498
    new-instance v5, Landroid/os/RemoteCallbackList;

    invoke-direct {v5}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 500
    new-instance v5, Landroid/os/RemoteCallbackList;

    invoke-direct {v5}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    .line 502
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 503
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 504
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    .line 506
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    .line 507
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    .line 509
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 511
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 518
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 521
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 527
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 549
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 567
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 568
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 570
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 578
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 580
    new-instance v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent-IA;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 584
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 601
    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 608
    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 615
    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 639
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 642
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 647
    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 660
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mAnimationsDisabled:Z

    .line 729
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 730
    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 731
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    .line 741
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 744
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 758
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    .line 761
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    .line 767
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 814
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 830
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 847
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 925
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 980
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 1006
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mComputeImeLayeringTargetPredicate:Ljava/util/function/Predicate;

    .line 1015
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 1019
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 1124
    new-instance v5, Lcom/android/server/wm/DisplayContent$2;

    invoke-direct {v5, v2}, Lcom/android/server/wm/DisplayContent$2;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Landroid/content/ComponentCallbacks;

    .line 1152
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-nez v5, :cond_374

    .line 1159
    iput-object v1, v2, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1160
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1161
    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1162
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iput v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1163
    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 1164
    new-instance v9, Lcom/android/server/wm/WallpaperController;

    iget-object v10, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v9, v10, v2}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1165
    invoke-virtual {v9, v0}, Lcom/android/server/wm/WallpaperController;->resetLargestDisplay(Landroid/view/Display;)V

    .line 1166
    invoke-virtual {v0, v11}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1167
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1168
    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DeferredDisplayUpdater;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 1169
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0xa0

    iput v0, v2, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-nez v5, :cond_1d8

    move v0, v8

    goto :goto_1d9

    :cond_1d8
    move v0, v6

    .line 1171
    :goto_1d9
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1172
    new-instance v0, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, v2}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1173
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 1174
    new-instance v9, Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v10

    iget v3, v11, Landroid/view/DisplayInfo;->rotation:I

    .line 1175
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;

    move-result-object v12

    iget v3, v11, Landroid/view/DisplayInfo;->rotation:I

    .line 1176
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v13

    iget v3, v11, Landroid/view/DisplayInfo;->rotation:I

    .line 1177
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v14

    iget v3, v11, Landroid/view/DisplayInfo;->rotation:I

    .line 1178
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayShapeForRotation(I)Landroid/view/DisplayShape;

    move-result-object v15

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)V

    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1180
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WindowManager/displayId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v10, 0x2000000a

    invoke-virtual {v3, v10, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1183
    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1185
    new-instance v3, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-direct {v3, v2, v5}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 1186
    new-instance v9, Lcom/android/internal/policy/TransitionAnimation;

    iget-object v10, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v12, "WindowManager"

    invoke-direct {v9, v10, v6, v12}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v9, v2, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1187
    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1188
    new-instance v3, Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v6, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 1189
    new-instance v3, Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-direct {v3, v2}, Lcom/android/server/wm/RemoteDisplayChangeController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 1191
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PointerEventDispatcher"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1192
    invoke-virtual {v3, v6}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    .line 1193
    new-instance v6, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v6, v3}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v6, v2, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1195
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    if-eqz v3, :cond_28b

    .line 1196
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1197
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v3

    .line 1196
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1200
    :cond_28b
    iput-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 1202
    new-instance v3, Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v6, v2}, Lcom/android/server/wm/AppCompatCameraPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 1203
    new-instance v6, Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v6, v3, v2}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v6, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move-object v3, v0

    .line 1204
    new-instance v0, Lcom/android/server/wm/DisplayRotation;

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v11, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 1205
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayRotationCoordinator()Lcom/android/server/wm/DisplayRotationCoordinator;

    move-result-object v10

    move-object/from16 v17, v9

    move-object v9, v3

    move-object/from16 v3, v17

    move/from16 v17, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1207
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDeviceStateListener:Lcom/android/server/wm/DeviceStateController$DeviceStateListener;

    .line 1211
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/DeviceStateController;->registerDeviceStateCallback(Lcom/android/server/wm/DeviceStateController$DeviceStateListener;Ljava/util/concurrent/Executor;)V

    .line 1214
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v2, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 1216
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2e6

    .line 1219
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1221
    :cond_2e6
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_2ef

    .line 1222
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1224
    :cond_2ef
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v0, :cond_2f8

    .line 1225
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 1227
    :cond_2f8
    new-instance v0, Lcom/android/server/wm/PinnedTaskController;

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PinnedTaskController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 1231
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayAreaPolicyProvider()Lcom/android/server/wm/DisplayAreaPolicy$Provider;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {v0, v1, v2, v2, v7}, Lcom/android/server/wm/DisplayAreaPolicy$Provider;->instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 1233
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1234
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1235
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1238
    invoke-virtual {v2, v2}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1239
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateDisplayAreaOrganizers()V

    .line 1241
    new-instance v0, Lcom/android/server/wm/DisplayRotationReversionController;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotationReversionController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 1243
    new-instance v0, Lcom/android/server/wm/InputMonitor;

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1244
    new-instance v0, Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {v0, v9, v2}, Lcom/android/server/wm/InsetsPolicy;-><init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 1245
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v0

    iput v0, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 1248
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 1249
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1250
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 1251
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->isIgnoreActivitySizeRestrictionsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/wm/DisplayContent;->mIgnoreActivitySizeRestrictions:Z

    .line 1254
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    .line 1256
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    sget v14, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    sget v15, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/input/InputManagerService;->setInTouchMode(ZIIZI)Z

    .line 1258
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->start()V

    return-void

    .line 1153
    :cond_374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display with ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " already exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1155
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .registers 9

    .line 6047
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    .line 6048
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6050
    filled-new-array {p3}, [I

    move-result-object p2

    const/4 v0, 0x0

    .line 6051
    filled-new-array {v0}, [I

    move-result-object v1

    .line 6052
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;

    invoke-direct {v2, p2, v1, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;-><init>([I[ILandroid/graphics/Region;)V

    invoke-static {p0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 6065
    aget p1, p2, v0

    sub-int/2addr p3, p1

    .line 6066
    aget p1, v1, v0

    invoke-virtual {p4, p5, p1, p3}, Lcom/android/server/wm/WindowState;->setLastExclusionHeights(III)V

    .line 6068
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    .line 6069
    aget p0, p2, v0

    return p0
.end method

.method public static alwaysCreateRootTask(II)Z
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    :cond_6
    if-eq p0, v0, :cond_14

    const/4 p1, 0x5

    if-eq p0, p1, :cond_14

    const/4 p1, 0x2

    if-eq p0, p1, :cond_14

    const/4 p1, 0x6

    if-ne p0, p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    return v0
.end method

.method public static calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 7

    if-eqz p0, :cond_49

    .line 2417
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_7

    goto :goto_49

    :cond_7
    if-ne p2, p3, :cond_22

    .line 2421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore cutout because display size is square: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0

    :cond_22
    if-nez p1, :cond_29

    .line 2427
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 v0, 0x0

    .line 2431
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_34

    const/4 v2, 0x3

    if-ne p1, v2, :cond_35

    :cond_34
    move v0, v1

    .line 2433
    :cond_35
    new-instance p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    new-instance v1, Landroid/util/Size;

    if-eqz v0, :cond_3d

    move v2, p3

    goto :goto_3e

    :cond_3d
    move v2, p2

    :goto_3e
    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    move p2, p3

    .line 2435
    :goto_42
    invoke-direct {v1, v2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object p1

    .line 2418
    :cond_49
    :goto_49
    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method public static canComputeImeParent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 4937
    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->shouldComputeImeParentForEmbeddedActivity(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 4949
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4950
    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v0

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v2

    :goto_21
    if-eqz p1, :cond_2e

    .line 4953
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4954
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eq p0, p1, :cond_2c

    goto :goto_2e

    :cond_2c
    move p0, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move p0, v2

    :goto_2f
    if-eqz v1, :cond_34

    if-eqz p0, :cond_34

    move v0, v2

    :cond_34
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 6020
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    return v1

    .line 6023
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6024
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_37

    const/4 v3, 0x3

    if-eq v2, v3, :cond_37

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_37

    .line 6025
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 6029
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 6030
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasSideGestures()Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    return v1
.end method

.method public static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z
    .registers 6

    .line 6006
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6007
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6009
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-ne v2, v3, :cond_1b

    if-eqz p1, :cond_2f

    :cond_1b
    const/16 p1, 0x7db

    if-eq v1, p1, :cond_2f

    const/16 p1, 0x7f8

    if-eq v1, p1, :cond_2f

    .line 6012
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    if-eq p0, v3, :cond_2f

    and-int/lit8 p0, v0, 0x20

    if-nez p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldComputeImeParentForEmbeddedActivity(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    if-nez p0, :cond_6

    goto :goto_46

    .line 4986
    :cond_6
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 4987
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4988
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_46

    .line 4992
    :cond_19
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4993
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz p1, :cond_46

    if-eqz v2, :cond_46

    if-eq p1, v2, :cond_46

    .line 4996
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v3, v4, :cond_46

    .line 4997
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_46

    .line 5001
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-lez p0, :cond_46

    const/4 p0, 0x1

    return p0

    :cond_46
    :goto_46
    return v0
.end method

.method private shouldDeferRemoval()Z
    .registers 2

    .line 3474
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addShellRoot(Landroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .registers 5

    .line 1498
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    if-eqz v0, :cond_1d

    .line 1500
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object v1

    if-ne v1, p1, :cond_15

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 1503
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1506
    :cond_1d
    new-instance v0, Lcom/android/server/wm/ShellRoot;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/ShellRoot;-><init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V

    .line 1507
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 1510
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    const/4 p0, 0x0

    return-object p0

    .line 1513
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1514
    new-instance p0, Landroid/view/SurfaceControl;

    const-string p2, "DisplayContent.addShellRoot"

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-object p0
.end method

.method public addSleepToken(Ljava/lang/String;)V
    .registers 2

    .line 6589
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->addSleepTokenOnly(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 6590
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method public addSleepTokenOnly(Ljava/lang/String;)Z
    .registers 6

    .line 6582
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->hasSleepToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 6583
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    invoke-direct {v1, p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6584
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, 0x6af730a736203e45L    # 1.8613101525722904E207

    const/4 v0, 0x4

    invoke-static {p0, v2, v3, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_33
    return v1
.end method

.method public addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 7

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1451
    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_70

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_29

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_28

    .line 1483
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    .line 1484
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    :cond_28
    return-void

    .line 1464
    :cond_29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t map null token to display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1460
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1456
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already mapped to display="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " tokens="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V
    .registers 6

    .line 2727
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    if-nez p5, :cond_9

    goto :goto_15

    .line 2735
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 2736
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 2738
    :goto_15
    iget p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge p3, p0, :cond_1b

    .line 2739
    iput p3, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2741
    :cond_1b
    iget p0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le p3, p0, :cond_21

    .line 2742
    iput p3, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2744
    :cond_21
    iget p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge p4, p0, :cond_27

    .line 2745
    iput p4, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2747
    :cond_27
    iget p0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le p4, p0, :cond_2d

    .line 2748
    iput p4, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_2d
    return-void
.end method

.method public adjustForImeIfNeeded()V
    .registers 3

    .line 3542
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    .line 3543
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3544
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3545
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result v1

    .line 3546
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PinnedTaskController;->setAdjustedForIme(ZI)V

    return-void
.end method

.method public allowContentModeSwitch()Z
    .registers 3

    .line 3371
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 3376
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_13

    return v1

    .line 3381
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_34

    .line 3385
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldNeverShowSystemDecorations()Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    .line 3391
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public applyFixedRotationForNonTopVisibleActivityIfNeeded()V
    .registers 3

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSourceApp()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1852
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1e

    .line 1855
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    goto :goto_1e

    .line 1859
    :cond_15
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1874
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSourceApp()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1877
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    .line 1876
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_d
    return-void
.end method

.method public final applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 7

    .line 1887
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1891
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    :cond_11
    if-ne v0, p2, :cond_23

    .line 1895
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_77

    .line 1896
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p2

    if-ne v0, p2, :cond_77

    .line 1899
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    return-void

    .line 1903
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_77

    .line 1904
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_77

    .line 1905
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_77

    .line 1908
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p2

    .line 1909
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v0

    .line 1910
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    if-ne v0, p2, :cond_5b

    if-eqz v1, :cond_77

    .line 1911
    iget p2, v1, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    if-ne p2, v3, :cond_5b

    iget p2, v1, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    iget v1, v2, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    if-ne p2, v1, :cond_5b

    goto :goto_77

    .line 1915
    :cond_5b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 1916
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-eqz p2, :cond_77

    .line 1917
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, p1, :cond_77

    .line 1918
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 1920
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    :cond_77
    :goto_77
    return-void
.end method

.method public applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6

    .line 5528
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 5529
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    :cond_c
    const/4 v0, 0x0

    .line 5531
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 5534
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 5536
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_21

    .line 5537
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    goto :goto_28

    .line 5539
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 5541
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final applyRotation(II)V
    .registers 4

    .line 2310
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayRotation;->applyCurrentRotation(I)V

    const/4 p1, 0x0

    .line 2317
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/DisplayContent;->setFixedTransformHint(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 2324
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2326
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2328
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/RotationWatcherController;->dispatchDisplayRotationChange(II)V

    return-void
.end method

.method public final applyRotationAndFinishFixedRotation(II)V
    .registers 5

    .line 6427
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_8

    .line 6429
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void

    .line 6433
    :cond_8
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 6435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public applySurfaceChangesTransaction()V
    .registers 12

    .line 5156
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 5158
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->beginHoldScreenUpdate()V

    .line 5160
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5165
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17

    .line 5166
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 5169
    :cond_17
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 5170
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_20
    const/4 v0, 0x0

    .line 5178
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 5179
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5181
    const-string v0, "applyPostLayoutPolicy"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5183
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 5184
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5185
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_b0

    .line 5187
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5189
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 5191
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 5193
    const-string v0, "applyWindowSurfaceChanges"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5195
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_aa

    .line 5197
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5200
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 5201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 5202
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget v5, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    iget v6, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    iget v7, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIFFZZZ)V

    .line 5213
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 5215
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    .line 5216
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v0, v1, :cond_92

    .line 5217
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 5218
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5221
    :cond_92
    :goto_92
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 5222
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 5225
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateAllDrawn()V

    goto :goto_92

    .line 5228
    :cond_a6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishHoldScreenUpdate()V

    return-void

    :catchall_aa
    move-exception v0

    move-object p0, v0

    .line 5197
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5198
    throw p0

    :catchall_b0
    move-exception v0

    move-object p0, v0

    .line 5187
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5188
    throw p0
.end method

.method public asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    .line 5599
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 5600
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 10

    .line 5604
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_91

    .line 5612
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    if-eqz v0, :cond_12

    goto/16 :goto_91

    .line 5620
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 5621
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6e

    .line 5635
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_28

    .line 5636
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 5638
    :cond_28
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 5639
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    .line 5641
    :goto_3c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_6e

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v5, v4, :cond_6e

    .line 5643
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 5645
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_64

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x4840ed31d0d63d54L    # 1.1519607127994226E40

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5647
    :cond_64
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void

    .line 5654
    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_91

    .line 5658
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_8a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x271e763164b2ca99L    # -1.4152592439117868E120

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5660
    :cond_8a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    :cond_91
    :goto_91
    return-void
.end method

.method public assignRelativeLayerForImeLayeringTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 5675
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void
.end method

.method public assignWindowLayers(Z)V
    .registers 5

    .line 4169
    const-string v0, "assignWindowLayers"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4170
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_13

    .line 4172
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4179
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 4180
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 4703
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 4707
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotImmediately()V

    .line 4708
    new-instance v1, Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Builder;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 4709
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->attachAndShow(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final attachImeScreenshotOnTargetIfNeeded()V
    .registers 2

    .line 4692
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_20

    .line 4697
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4698
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final beginHoldScreenUpdate()V
    .registers 2

    const/4 v0, 0x0

    .line 1262
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1263
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;
    .registers 4

    .line 2410
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 2411
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2410
    :goto_b
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 2412
    invoke-virtual {p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public final calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 5

    .line 2441
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_9

    :cond_7
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_9
    if-eqz v0, :cond_e

    .line 2442
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_10

    :cond_e
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2440
    :goto_10
    invoke-static {p1, p2, v1, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public calculateDisplayShapeForRotation(I)Landroid/view/DisplayShape;
    .registers 3

    .line 2480
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/DisplayShape;

    return-object p0
.end method

.method public final calculateDisplayShapeForRotationUncached(Landroid/view/DisplayShape;I)Landroid/view/DisplayShape;
    .registers 3

    if-nez p1, :cond_5

    .line 2486
    sget-object p0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    return-object p0

    :cond_5
    if-nez p2, :cond_8

    return-object p1

    .line 2493
    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method

.method public calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    .line 2467
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public final calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    if-nez p1, :cond_b

    .line 2473
    new-instance p0, Landroid/view/PrivacyIndicatorBounds;

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object p0

    .line 2476
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/PrivacyIndicatorBounds;->rotate(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p0

    return-object p0
.end method

.method public calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;
    .registers 4

    .line 2446
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 2447
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 2446
    :goto_b
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public final calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 5

    if-eqz p1, :cond_1f

    .line 2452
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    if-ne p1, v0, :cond_7

    goto :goto_1f

    :cond_7
    if-nez p2, :cond_a

    return-object p1

    .line 2462
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_13
    if-eqz v0, :cond_18

    .line 2463
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1a

    :cond_18
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2460
    :goto_1a
    invoke-virtual {p1, p2, v1, p0}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0

    .line 2453
    :cond_1f
    :goto_1f
    sget-object p0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 12

    .line 5910
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    if-eqz p2, :cond_8

    .line 5912
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 5914
    :cond_8
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 5915
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 5917
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 5918
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 5919
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    invoke-virtual {v0, v1, v1, v3, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    .line 5921
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v6, v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 5922
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int v0, v4, v0

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5924
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v3

    .line 5925
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v4

    .line 5926
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    filled-new-array {v0, v0}, [I

    move-result-object v5

    .line 5931
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5989
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 5990
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    .line 5991
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 5992
    aget p1, v5, v8

    iget p2, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt p1, p2, :cond_74

    aget p1, v5, p0

    if-ge p1, p2, :cond_73

    goto :goto_74

    :cond_73
    return v8

    :cond_74
    :goto_74
    return p0
.end method

.method public canAddToastWindowForUid(I)Z
    .registers 4

    .line 3921
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    .line 3926
    :cond_d
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public canShowTasksInHostDeviceRecents()Z
    .registers 1

    .line 2286
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2289
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canShowTasksInHostDeviceRecents()Z

    move-result p0

    return p0
.end method

.method public canShowWithInsecureKeyguard()Z
    .registers 1

    .line 6674
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canStealTopFocus()Z
    .registers 1

    .line 3948
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x1000

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final clearAllTasksOnDisplay(Ljava/lang/Runnable;Z)V
    .registers 5

    .line 6491
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 6493
    :try_start_7
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;

    invoke-direct {v0, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;-><init>(Z)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_26

    .line 6503
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    if-eqz p1, :cond_20

    .line 6507
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_20
    if-eqz p2, :cond_25

    .line 6513
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    :cond_25
    return-void

    :catchall_26
    move-exception p1

    .line 6503
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 6504
    throw p1
.end method

.method public final clearFixedRotationLaunchingApp()V
    .registers 2

    .line 2160
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 2163
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    const/4 v0, 0x0

    .line 2164
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public clearForcedDensityRatio()V
    .registers 2

    const/4 v0, 0x0

    .line 3267
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    return-void
.end method

.method public final clearLayoutNeeded()V
    .registers 2

    const/4 v0, 0x0

    .line 5011
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method public collectDisplayChange(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 3601
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_5

    goto :goto_36

    .line 3602
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_36

    .line 3603
    :cond_c
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3604
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 3605
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    .line 3606
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_36

    .line 3607
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V

    return-void

    .line 3609
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result p1

    if-nez p1, :cond_36

    .line 3610
    const-string p1, "WindowManager"

    const-string v0, "Finish AsyncRotation for previous intermediate change"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    :cond_36
    :goto_36
    return-void
.end method

.method public final computeCompatSmallestWidth(ZII)I
    .registers 7

    .line 2650
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2651
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_e

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_e
    const/4 p1, 0x0

    .line 2660
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(ILandroid/util/DisplayMetrics;II)I

    move-result p1

    .line 2661
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(ILandroid/util/DisplayMetrics;II)I

    move-result p0

    return p0
.end method

.method public computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 4

    .line 4867
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-nez v0, :cond_11

    .line 4877
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isUserMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0

    .line 4888
    :cond_11
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4889
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v1, :cond_27

    .line 4890
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeHost(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v1, v2, :cond_2a

    .line 4891
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_2a
    return-object v0
.end method

.method public computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4248
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    .line 4252
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeLayeringTarget:Z

    .line 4253
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeLayeringTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    :goto_e
    if-eqz p1, :cond_13

    .line 4264
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V

    :cond_13
    return-object v0
.end method

.method public computeImeParent()Lcom/android/server/wm/WindowContainer;
    .registers 3

    .line 4911
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->canComputeImeParent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 4917
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4918
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    .line 4921
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public final computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V
    .registers 10

    .line 2526
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 2527
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 2529
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p2

    div-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2530
    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, p3

    div-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v0, v4

    .line 2531
    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v2

    .line 2532
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    int-to-float v3, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 2533
    iput v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_2e

    move v0, v3

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x2

    .line 2535
    :goto_2f
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2536
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2537
    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2536
    invoke-static {v0, v2, v4}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq p4, v3, :cond_46

    const/4 v0, 0x3

    if-ne p4, v0, :cond_47

    :cond_46
    move v1, v3

    .line 2541
    :cond_47
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZII)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2542
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p4}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    return-void
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_a

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_a

    :cond_8
    move v5, v0

    goto :goto_b

    :cond_a
    :goto_a
    move v5, v1

    :goto_b
    if-eqz v5, :cond_11

    .line 2502
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_f
    move v6, v1

    goto :goto_14

    :cond_11
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_f

    :goto_14
    if-eqz v5, :cond_1a

    .line 2503
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_18
    move v7, v1

    goto :goto_1d

    :cond_1a
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_18

    .line 2504
    :goto_1d
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0, v0, v6, v7}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    .line 2505
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2506
    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V

    .line 2508
    new-instance v4, Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v4, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 2509
    iput p2, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 2510
    iput v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2511
    iput v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2512
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2513
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 2514
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 2515
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;

    move-result-object p2

    .line 2516
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 p2, 0x0

    :cond_58
    iput-object p2, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2517
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x0

    move-object v3, p0

    move-object v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    return-object v4
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 16

    .line 2550
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2551
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2552
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2553
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2554
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2555
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 2556
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2558
    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V

    .line 2560
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0x301

    .line 2561
    iget v2, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_37

    const/16 v2, 0x200

    goto :goto_39

    :cond_37
    const/16 v2, 0x100

    :goto_39
    or-int/2addr v1, v2

    .line 2563
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2565
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2567
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getDisplayUiMode()I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2570
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v1

    if-eqz v1, :cond_59

    const/16 v1, 0x8

    goto :goto_5a

    :cond_59
    const/4 v1, 0x4

    .line 2573
    :goto_5a
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v2

    goto :goto_6d

    :cond_6c
    move v0, v3

    :goto_6d
    or-int/2addr v0, v1

    .line 2575
    iput v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 2579
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 2580
    iput v3, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2581
    iput v3, p1, Landroid/content/res/Configuration;->navigation:I

    .line 2585
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 2586
    array-length v1, v0

    goto :goto_83

    :cond_82
    move v1, v4

    :goto_83
    move v5, v4

    move v6, v5

    move v7, v6

    :goto_86
    if-ge v5, v1, :cond_e5

    .line 2588
    aget-object v8, v0, v5

    .line 2590
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-eqz v9, :cond_91

    goto :goto_e2

    .line 2595
    :cond_91
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v9

    if-nez v9, :cond_a2

    goto :goto_e2

    .line 2599
    :cond_a2
    invoke-virtual {v8}, Landroid/view/InputDevice;->getSources()I

    move-result v9

    .line 2600
    invoke-virtual {v8}, Landroid/view/InputDevice;->isExternal()Z

    move-result v10

    if-eqz v10, :cond_ae

    move v10, v2

    goto :goto_af

    :cond_ae
    move v10, v3

    .line 2603
    :goto_af
    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    const/4 v12, 0x3

    if-eqz v11, :cond_bf

    and-int/lit16 v11, v9, 0x1002

    const/16 v13, 0x1002

    if-ne v11, v13, :cond_c1

    .line 2605
    iput v12, p1, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_c1

    .line 2608
    :cond_bf
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    :cond_c1
    :goto_c1
    const v11, 0x10004

    and-int v13, v9, v11

    if-ne v13, v11, :cond_cc

    .line 2612
    iput v12, p1, Landroid/content/res/Configuration;->navigation:I

    :goto_ca
    or-int/2addr v6, v10

    goto :goto_d9

    :cond_cc
    and-int/lit16 v9, v9, 0x201

    const/16 v11, 0x201

    if-ne v9, v11, :cond_d9

    .line 2614
    iget v9, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v9, v3, :cond_d9

    .line 2616
    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    goto :goto_ca

    .line 2620
    :cond_d9
    :goto_d9
    invoke-virtual {v8}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v8

    if-ne v8, v2, :cond_e2

    .line 2621
    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    or-int/2addr v7, v10

    :cond_e2
    :goto_e2
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 2626
    :cond_e5
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v3, :cond_f3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v0, :cond_f3

    .line 2627
    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    or-int/lit8 v6, v6, 0x1

    .line 2633
    :cond_f3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_f8

    move v4, v3

    .line 2634
    :cond_f8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v4, v1, :cond_10e

    .line 2635
    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 2636
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2640
    :cond_10e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2643
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2644
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2645
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2646
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, v7, v6}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    return-void
.end method

.method public computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V
    .registers 15

    if-eqz p2, :cond_5

    move v4, p3

    move v3, p4

    goto :goto_7

    :cond_5
    move v3, p3

    move v4, p4

    :goto_7
    const/high16 p2, 0x40000000    # 2.0f

    .line 2703
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2704
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 p2, 0x0

    .line 2705
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2706
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p7

    .line 2707
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    const/4 v2, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    .line 2708
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    move v6, v4

    move v4, v3

    move v3, v6

    if-eqz v5, :cond_31

    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 2712
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    const/4 v2, 0x3

    move v6, v4

    move v4, v3

    move v3, v6

    .line 2714
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    :cond_31
    if-nez p6, :cond_34

    return-void

    .line 2721
    :cond_34
    iget p0, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float p0, p0

    div-float/2addr p0, p5

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return-void
.end method

.method public configureDisplayPolicy()V
    .registers 3

    .line 2336
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 2337
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayRotation;->configure(II)V

    return-void
.end method

.method public final configurePointerEventDispatcherOverlayLayer(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 9

    .line 1399
    new-instance v0, Landroid/view/InputWindowHandle;

    new-instance v1, Landroid/view/InputApplicationHandle;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v3, v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, p2, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v0, v1, v3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 1402
    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 1403
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {p2}, Landroid/view/InputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p2, 0x7df

    .line 1404
    iput p2, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    int-to-long v1, v2

    .line 1405
    iput-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 1406
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iput p2, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 1407
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    iput p2, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1408
    iput p2, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 1409
    invoke-virtual {v0, v5}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    const p2, 0x104004

    .line 1410
    iput p2, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 1412
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 1413
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    .line 1414
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    const v0, 0x7fffffff

    .line 1415
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    .line 1417
    invoke-virtual {p1, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 1347
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1348
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "DisplayContent"

    .line 1350
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_28
    if-ltz v2, :cond_3c

    .line 1353
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_39

    .line 1355
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 1359
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_53

    .line 1360
    const-string v1, "Display Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_58

    .line 1362
    :cond_53
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1365
    :goto_58
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_6f

    .line 1366
    const-string v1, "Input Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_74

    .line 1368
    :cond_6f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1371
    :goto_74
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_9e

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerEventDispatcherOverlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    .line 1375
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayContent;->configurePointerEventDispatcherOverlayLayer(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 1378
    :cond_9e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_b5

    .line 1379
    const-string v1, "Accessibility Overlays"

    .line 1380
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_ba

    .line 1382
    :cond_b5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1385
    :goto_ba
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1386
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1387
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    .line 1388
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1389
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffe

    .line 1390
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    .line 1391
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    .line 1392
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffd

    .line 1393
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    .line 1394
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public continueUpdateOrientationForDiffOrienLaunchingApp()V
    .registers 4

    .line 2133
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    goto :goto_26

    .line 2137
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2140
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    return-void

    .line 2145
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteDisplayChangeController;->isWaitingForRemoteDisplayChange()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    :goto_26
    return-void

    .line 2150
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    return-void
.end method

.method public destroyLeakedSurfaces()Z
    .registers 4

    const/4 v0, 0x0

    .line 4186
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4187
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 4188
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4211
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4213
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11

    .line 3746
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display: mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, " (organized)"

    goto :goto_1d

    :cond_1b
    const-string v1, ""

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3749
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3750
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3751
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3752
    const-string v5, " mMinSizeOfResizeableTaskDp="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3753
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_7a

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_7a

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_97

    .line 3756
    :cond_7a
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3758
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3760
    :cond_97
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_a0

    .line 3761
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    :cond_a0
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3765
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3766
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3767
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3768
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3769
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3770
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3771
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3772
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3777
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3778
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasSetIgnoreOrientationRequest="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3779
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3780
    const-string v2, " ignoreOrientationRequest="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3781
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mImeLayeringTarget="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3784
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mImeInputTarget="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3785
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mImeControlTarget="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3786
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRemoteInsetsControlTarget="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3787
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3790
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFixedRotationLaunchingApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3791
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3792
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v2, :cond_1a9

    .line 3793
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AsyncRotationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3796
    :cond_1a9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mHoldScreenWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3798
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mObscuringWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3800
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastWakeLockHoldingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3802
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastWakeLockObscuringWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3806
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3807
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3809
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_236

    .line 3810
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3811
    const-string v2, "  mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3812
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3815
    :cond_236
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24b

    .line 3816
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3817
    const-string v2, "  restrictedKeepClearAreas="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3818
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3820
    :cond_24b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_260

    .line 3821
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3822
    const-string v2, "  unrestrictedKeepClearAreas="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3823
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3826
    :cond_260
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Display areas in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3830
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Task display areas in top down Z order:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3836
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3839
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_2c1

    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rootHomeTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    :cond_2c1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_2e6

    .line 3845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rootPinnedTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3848
    :cond_2e6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_30d

    .line 3851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rootRecentsTask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_30d
    const/4 p3, 0x5

    .line 3854
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_32f

    .line 3856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rootDreamTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    :cond_32f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3860
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/PinnedTaskController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3862
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3863
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3864
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3865
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3866
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3867
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3868
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3869
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p3, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3870
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3871
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3872
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/InsetsPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3873
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3874
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3875
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p3, p0, p2, p1}, Lcom/android/server/wm/DisplayWindowSettings;->dump(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3876
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 3667
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 3671
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000015L

    .line 3672
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/DisplayArea;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10500000002L

    .line 3674
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000009L

    .line 3675
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3676
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const-wide v1, 0x10b00000021L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayRotation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10500000027L

    .line 3679
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const-wide v1, 0x10b00000010L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/TransitionController;->dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3681
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_68

    const-wide v1, 0x1090000000fL

    .line 3682
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3685
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-wide v1, 0x10500000017L

    if-eqz v0, :cond_8d

    .line 3687
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3688
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3689
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_91

    const-wide v1, 0x10b00000018L

    .line 3691
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_91

    :cond_8d
    const/4 v0, -0x1

    .line 3694
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_91
    :goto_91
    const-wide v0, 0x1080000001aL

    .line 3696
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000024L

    .line 3697
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    .line 3698
    :goto_aa
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c5

    .line 3699
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    const-wide v2, 0x20900000025L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->writeTagToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 3702
    :cond_c5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d1

    const-wide v1, 0x10b00000028L

    .line 3703
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3706
    :cond_d1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_e9

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 3707
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b00000029L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3710
    :cond_e9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_10d

    .line 3711
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b0000002aL

    if-eqz v0, :cond_102

    .line 3712
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_10d

    .line 3714
    :cond_102
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    instance-of v3, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v3, :cond_10d

    check-cast v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 3715
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3719
    :cond_10d
    :goto_10d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v0, :cond_119

    const-wide v1, 0x10b0000002cL

    .line 3720
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3723
    :cond_119
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_125

    const-wide v1, 0x10b0000002bL

    .line 3724
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3726
    :cond_125
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v0, :cond_12c

    .line 3727
    invoke-virtual {v0, p1, p4}, Lcom/android/server/wm/InsetsStateController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    :cond_12c
    const-wide v0, 0x10500000022L

    .line 3729
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3730
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_13e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide v1, 0x20b00000026L

    if-eqz v0, :cond_153

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3731
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_13e

    .line 3733
    :cond_153
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_159
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_169

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 3734
    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_159

    .line 3736
    :cond_169
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 5019
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5022
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mInTouchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5025
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_64

    .line 5026
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 5027
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5028
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_60

    const/16 v2, 0x3a

    .line 5030
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 5031
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_3f

    .line 5033
    :cond_60
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3f

    .line 5037
    :cond_64
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 5041
    new-array v0, v0, [I

    .line 5042
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public enableHighFrameRate(Z)V
    .registers 5

    if-eqz p1, :cond_1b

    .line 3581
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-nez p1, :cond_15

    .line 3582
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v1, "WindowAnimation"

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 3585
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->start()V

    return-void

    .line 3586
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-eqz p0, :cond_22

    .line 3587
    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    :cond_22
    return-void
.end method

.method public enableHighPerfTransition(Z)V
    .registers 5

    .line 3565
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsHighPerfTransitions:Z

    if-nez v1, :cond_7

    goto :goto_27

    :cond_7
    if-eqz p1, :cond_20

    .line 3569
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-nez p1, :cond_1a

    .line 3570
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v1, "Transition"

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 3573
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->start()V

    return-void

    .line 3574
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-eqz p0, :cond_27

    .line 3575
    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    :cond_27
    :goto_27
    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    .line 6624
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    if-eqz v0, :cond_5

    return-void

    .line 6628
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6630
    :try_start_e
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 6631
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6634
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 6635
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 6636
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 6640
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_36

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_42

    .line 6643
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 6644
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    return-void

    .line 6643
    :goto_42
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 6644
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 6645
    throw p1
.end method

.method public executeAppTransition()V
    .registers 2

    .line 5726
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public fillsParent()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;
    .registers 5

    .line 7281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowType()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;
    .registers 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v0, 0x63

    if-gt p1, v0, :cond_e

    .line 7255
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 v0, 0x7db

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x7dc

    if-ne p1, v0, :cond_17

    goto :goto_1e

    .line 7263
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaPolicy;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0

    .line 7261
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v0, 0x0

    .line 3974
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3977
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2b

    .line 3980
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0xf989b4f5abccb00L    # -2.905484252462301E233

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3983
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public findFocusedWindow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowState;
    .registers 5

    .line 3990
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    .line 3991
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3993
    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3995
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 3997
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3999
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object p0

    :catchall_12
    move-exception p1

    .line 3997
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3998
    throw p1
.end method

.method public findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .registers 3

    .line 3962
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasOwnFocus()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 3963
    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPresentationController:Lcom/android/server/wm/PresentationController;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3964
    invoke-virtual {p1, v0}, Lcom/android/server/wm/PresentationController;->isPresentationVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    return-object p0

    .line 3965
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 6828
    new-instance v0, Lcom/android/server/wm/DisplayContent$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$4;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 2242
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_d

    .line 2243
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AsyncRotationController;->completeRotation(Lcom/android/server/wm/WindowToken;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 2244
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    :cond_d
    return-void
.end method

.method public finishAsyncRotationIfPossible()V
    .registers 2

    .line 2233
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_a

    .line 2235
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->completeAll()V

    const/4 v0, 0x0

    .line 2236
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    :cond_a
    return-void
.end method

.method public final finishHoldScreenUpdate()V
    .registers 8

    .line 1267
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-eqz v3, :cond_21

    .line 1268
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v4, :cond_21

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v5, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, v5, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1272
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    .line 1273
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1275
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eq v3, v4, :cond_7d

    if-eqz v3, :cond_58

    .line 1278
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x1b3082ae327a34b2L

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1280
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 1281
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1282
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    .line 1284
    :cond_58
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4e5e286c1b9323dL

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1286
    :cond_72
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 1287
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1288
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7d
    return-void
.end method

.method public forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 3

    .line 2947
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public getA11yOverlayLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 5858
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;
    .registers 1

    .line 2069
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    return-object p0
.end method

.method public final getBaseDensityFromRatio()I
    .registers 3

    .line 3222
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 3223
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    and-int/lit8 p0, p0, -0x2

    return p0

    .line 3224
    :cond_f
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    return p0
.end method

.method public final getBounds(Landroid/graphics/Rect;I)V
    .registers 4

    .line 5232
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 5235
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 5236
    invoke-static {p0, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_13

    const/4 p2, 0x3

    if-ne p0, p2, :cond_12

    goto :goto_13

    :cond_12
    return-void

    .line 5238
    :cond_13
    :goto_13
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getContentRecorder()Lcom/android/server/wm/ContentRecorder;
    .registers 2

    .line 6878
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-nez v0, :cond_b

    .line 6879
    new-instance v0, Lcom/android/server/wm/ContentRecorder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ContentRecorder;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    .line 6881
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    return-object p0
.end method

.method public getCurrentOverrideConfigurationChanges()I
    .registers 1

    .line 2867
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    return p0
.end method

.method public getCustomHomeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 2296
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-nez p0, :cond_b

    goto :goto_10

    .line 2299
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->getCustomHomeComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 3439
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicy;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 1

    .line 1592
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 1442
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 1

    .line 1596
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 1

    .line 1600
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 1604
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .registers 1

    .line 1609
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object p0
.end method

.method public getDisplayUiContext()Landroid/content/Context;
    .registers 1

    .line 6764
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 6231
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getIgnoreOrientationRequest()Z
    .registers 2

    .line 6775
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-nez v0, :cond_16

    .line 6780
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0

    .line 6777
    :cond_16
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result p0

    return p0
.end method

.method public getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    .line 5846
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object p0
.end method

.method public getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    .line 4352
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public getImeHost(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 3

    if-eqz p1, :cond_d

    .line 4315
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 4318
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 4319
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0
.end method

.method public getImeInputTarget()Lcom/android/server/wm/InputTarget;
    .registers 1

    .line 4346
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    return-object p0
.end method

.method public getImeLayeringTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 4340
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getImeParentWindow()Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 1631
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getImePolicy()I
    .registers 2

    .line 4359
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 4362
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->getImePolicyLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    return p0
.end method

.method public getInitialDisplayDensity()I
    .registers 3

    .line 2874
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2875
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v1, :cond_10

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-le p0, v1, :cond_10

    mul-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_10
    return v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 6

    .line 3550
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 3551
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 3552
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_46

    .line 3555
    :cond_18
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 3556
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 3557
    :goto_27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3558
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3559
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, p0, p0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3561
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0

    :cond_46
    :goto_46
    return v2
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 1

    .line 5689
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object p0
.end method

.method public getInputOverlayLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 5854
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    return-object p0
.end method

.method public getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .registers 1

    .line 1613
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method public getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6

    .line 6144
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    .line 6145
    new-array v1, v1, [F

    .line 6146
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    return-void
.end method

.method public getLastHasContent()Z
    .registers 1

    .line 5696
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return p0
.end method

.method public getLastOrientation()I
    .registers 1

    .line 1627
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result p0

    return p0
.end method

.method public final getLastOrientationSourceApp()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayerCaptureArgs(Lcom/android/internal/util/ToBooleanFunction;Z)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;
    .registers 6

    .line 5307
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 5315
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 5316
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p2, :cond_20

    .line 5318
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p2

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    .line 5319
    :goto_24
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    invoke-direct {v0, p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p2

    check-cast p2, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    if-eqz p1, :cond_52

    .line 5322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5323
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/util/ToBooleanFunction;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5329
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_52

    .line 5330
    new-array p0, v1, [Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 5333
    :cond_52
    invoke-virtual {p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object p0

    return-object p0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 1

    .line 7249
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object p0
.end method

.method public getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 6165
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 6166
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 6168
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public final getMinimalTaskSizeDp()I
    .registers 6

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1799
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x1050177

    const/4 v2, 0x1

    .line 1800
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1801
    iget p0, v0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v3, p0, 0xf

    .line 1802
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_25

    if-ne v3, v2, :cond_25

    .line 1807
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 1803
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID #0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not in valid type or unit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 3887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNaturalOrientation()I
    .registers 2

    .line 5244
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-gt v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x2

    return p0
.end method

.method public getOrientation()I
    .registers 10

    const-wide/16 v0, -0x1

    .line 2979
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2958
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraPolicy;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_13

    .line 2960
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return v1

    .line 2964
    :cond_13
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v1

    .line 2966
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_81

    const/4 v4, 0x1

    .line 2967
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/16 v6, 0x15

    if-eqz v4, :cond_5e

    .line 2968
    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 2969
    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v7

    .line 2970
    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatOrientationOverrides;->shouldUseDisplayLandscapeNaturalOrientation()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2971
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5d

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p0

    int-to-long v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x1084493da93cff3L    # -4.06866715200439E303

    invoke-static {v4, v0, v1, v6, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5d
    return v5

    .line 2977
    :cond_5e
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 2979
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_80

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, p0

    int-to-long v1, v1

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x2f1f911a189bc558L    # -3.897004126463244E81

    invoke-static {p0, v1, v2, v6, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_80
    return v3

    :cond_81
    const/4 v2, -0x2

    if-ne v1, v2, :cond_a1

    .line 2987
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_a0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x2fb9527de1ad3e30L    # 8.542463866029204E-79

    const/4 v4, 0x5

    invoke-static {p0, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a0
    return v3

    :cond_a1
    return v1
.end method

.method public getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 4164
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getOverlayLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 5850
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;
    .registers 1

    .line 2801
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    return-object p0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 8

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 2771
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/16 v2, 0x55

    const v3, 0x800053

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x51

    if-ge v1, p0, :cond_1a

    if-eq v0, v5, :cond_19

    if-eq v0, v4, :cond_18

    return v6

    :cond_18
    return v3

    :cond_19
    return v2

    :cond_1a
    if-eq v0, v5, :cond_24

    const/4 p0, 0x2

    if-eq v0, p0, :cond_23

    if-eq v0, v4, :cond_22

    return v2

    :cond_22
    return v6

    :cond_23
    return v3

    :cond_24
    return v6
.end method

.method public getPresentUIDs()Landroid/util/IntArray;
    .registers 3

    .line 6557
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 6558
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6559
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    .line 0
    const-wide v0, 0x10b00000003L

    return-wide v0
.end method

.method public getRelativeDisplayRotation()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getRemoveContentMode()I
    .registers 2

    .line 6569
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    return p0
.end method

.method public getRootTask(I)Lcom/android/server/wm/Task;
    .registers 3

    .line 2843
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(II)Lcom/android/server/wm/Task;
    .registers 4

    .line 2837
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootTaskCount()I
    .registers 3

    const/4 v0, 0x1

    .line 2847
    new-array v0, v0, [I

    .line 2848
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 2851
    aget p0, v0, p0

    return p0
.end method

.method public getRotation()I
    .registers 1

    .line 1622
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result p0

    return p0
.end method

.method public getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;
    .registers 1

    .line 1421
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    return-object p0
.end method

.method public getStableRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 3428
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 3429
    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3430
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method public getTaskOccludingKeyguard()Lcom/android/server/wm/Task;
    .registers 3

    .line 6746
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6747
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 6748
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->getTopOccludingActivity(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 6749
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->getTopOccludingActivity(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 6751
    :cond_1b
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->getDismissKeyguardActivity(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 6752
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->getDismissKeyguardActivity(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 2856
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 4

    float-to-int p1, p1

    float-to-int p2, p2

    .line 3894
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionAnimationScaleLocked()F
    .registers 2

    .line 1333
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAnimationsDisabledLocked()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAnimationsDisabled:Z

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1337
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getAnimationScaleLocked(I)F

    move-result p0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public final getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 4

    .line 4325
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 4326
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getUserMainDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_13

    return-object p0

    .line 4328
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default display was assigned to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValidForcedSize(II)Landroid/graphics/Point;
    .registers 4

    .line 3322
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    const/16 v0, 0xc8

    .line 3323
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3324
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 3325
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public getWindowAnimationScaleLocked()F
    .registers 2

    .line 1322
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAnimationsDisabledLocked()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAnimationsDisabled:Z

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1326
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getAnimationScaleLocked(I)F

    move-result p0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 2

    .line 1446
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    return-object p0
.end method

.method public getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 5842
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicy;->getWindowingArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 6440
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_c

    .line 6442
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 6446
    :cond_c
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6447
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 6449
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    return-void

    .line 6454
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 6456
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    :cond_31
    return-void
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 4

    .line 3532
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_1b

    .line 3534
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v2, :cond_1b

    .line 3535
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return v1

    :cond_1b
    return v0
.end method

.method public final handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 7

    .line 1988
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1991
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFinishingFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 1994
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 1995
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_23

    .line 1999
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    .line 1998
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_23
    return v2

    .line 2004
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    :cond_2b
    if-eqz p3, :cond_47

    .line 2010
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p3

    if-nez p3, :cond_36

    return v1

    .line 2015
    :cond_36
    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-nez p3, :cond_4e

    return v1

    .line 2024
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eq p1, p3, :cond_4e

    return v1

    .line 2028
    :cond_4e
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eqz p3, :cond_61

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result p3

    if-eqz p3, :cond_61

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2029
    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    if-nez p3, :cond_61

    return v1

    .line 2034
    :cond_61
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_69

    return v1

    .line 2042
    :cond_69
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p3

    if-nez p3, :cond_74

    return v1

    .line 2048
    :cond_74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    return v2
.end method

.method public handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 3

    .line 1971
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .registers 2

    .line 1761
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public hasAccess(I)Z
    .registers 5

    .line 2808
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2811
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mVisibleBackgroundUserEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 2814
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_17

    return v2

    .line 2818
    :cond_17
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p1, :cond_2b

    .line 2819
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2820
    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return v1

    :cond_2b
    :goto_2b
    return v2
.end method

.method public hasAlertWindowSurfaces()Z
    .registers 4

    .line 4217
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_20

    .line 4218
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public hasFixedRotationTransientLaunch()Z
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2060
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public hasOwnFocus()Z
    .registers 2

    .line 6729
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public hasSleepToken(Ljava/lang/String;)Z
    .registers 5

    .line 6573
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    .line 6574
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public hasTopFixedRotationLaunchingApp()Z
    .registers 1

    .line 2054
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public initializeDisplayBaseInfo()V
    .registers 8

    .line 3053
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1a

    .line 3056
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3058
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3061
    :cond_13
    new-instance v0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 3064
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v5, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v6, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3067
    iget-object p0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3068
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3069
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3070
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3071
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3072
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3073
    iget-object p0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object p0, v1, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3074
    new-instance p0, Landroid/view/PrivacyIndicatorBounds;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, v0, v2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object p0, v1, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3076
    iget-object p0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    .line 3077
    iget-object p0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 3078
    invoke-static {p0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object p0

    .line 3079
    new-instance v0, Landroid/graphics/Point;

    if-nez p0, :cond_69

    .line 3080
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_6d

    :cond_69
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    :goto_6d
    if-nez p0, :cond_72

    .line 3081
    iget p0, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_76

    :cond_72
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    :goto_76
    invoke-direct {v0, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public isAodShowing()Z
    .registers 3

    .line 6694
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6695
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isAodShowing(I)Z

    move-result v0

    .line 6696
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 6697
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method public isDisplayIgnoreActivitySizeRestrictions()Z
    .registers 1

    .line 5834
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreActivitySizeRestrictions:Z

    return p0
.end method

.method public isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 2064
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isHomeSupported()Z
    .registers 2

    .line 5822
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->isHomeSupportedLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5823
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isImeAttachedToApp()Z
    .registers 2

    .line 4300
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4303
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 4302
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isImeControlledByApp()Z
    .registers 1

    .line 4271
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isInTouchMode()Z
    .registers 1

    .line 1438
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    return p0
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 5

    const/4 v0, 0x0

    .line 5135
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_8

    return v0

    .line 5151
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    if-ne v1, p1, :cond_14

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, p2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public isKeyguardAlwaysUnlocked()Z
    .registers 1

    .line 6714
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardGoingAway()Z
    .registers 2

    .line 6706
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6707
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 6682
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6683
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLockedOrAodShowing()Z
    .registers 2

    .line 6687
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    .line 6737
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6738
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result p0

    return p0
.end method

.method public isLargeScreen()Z
    .registers 2

    .line 6769
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isLayoutNeeded()Z
    .registers 1

    .line 5015
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return p0
.end method

.method public isNextTransitionForward()Z
    .registers 3

    .line 5732
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5733
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x3

    if-ne p0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method public isPrivate()Z
    .registers 1

    .line 2824
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z
    .registers 4

    .line 5783
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_39

    :cond_12
    const/4 v0, 0x5

    .line 5786
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->isWindowingModeSupported(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 5790
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 5791
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5792
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_37

    return v1

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method public isReady()Z
    .registers 2

    .line 1426
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoved()Z
    .registers 2

    .line 6475
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 6478
    :cond_e
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    return p0
.end method

.method public isRemoving()Z
    .registers 1

    .line 6485
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    return p0
.end method

.method public isRotationChanging()Z
    .registers 2

    .line 2196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    if-eq v0, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenSleeping()Z
    .registers 3

    .line 6617
    const-string v0, "Display-off"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->hasSleepToken(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 6620
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result p0

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isSleeping()Z
    .registers 1

    .line 6649
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return p0
.end method

.method public isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .registers 2

    .line 1929
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-virtual {p0}, Lcom/android/server/wm/RemoteDisplayChangeController;->isWaitingForRemoteDisplayChange()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSystemDecorationsSupported()Z
    .registers 4

    .line 5753
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldNeverShowSystemDecorations()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5756
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5757
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1e

    goto :goto_38

    .line 5761
    :cond_1e
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_37

    .line 5762
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5766
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-nez p0, :cond_37

    return v2

    :cond_37
    return v1

    :cond_38
    :goto_38
    return v2
.end method

.method public isTaskMoveAllowedOnDisplay()Z
    .registers 2

    .line 7308
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>()V

    .line 7309
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 2828
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public isUidPresent(I)Z
    .registers 4

    .line 6461
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6462
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6461
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 6463
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 6464
    :goto_1e
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return p0
.end method

.method public final isUserMainDisplay()Z
    .registers 3

    .line 4903
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 4904
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p0

    if-ne v1, p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isVisibleRequested()Z
    .registers 2

    .line 2915
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isWindowingModeSupported(I)Z
    .registers 3

    .line 5804
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->isWindowingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 5810
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    return p0

    .line 5808
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    return p0

    .line 5809
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    return p0
.end method

.method public final synthetic lambda$applyFixedRotationForNonTopVisibleActivityIfNeeded$10(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1860
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1863
    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applyRotationAndFinishFixedRotation$35(II)V
    .registers 3

    .line 6434
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void
.end method

.method public final synthetic lambda$calculateSystemGestureExclusion$28(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 16

    move-object v4, p7

    .line 5932
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_ae

    .line 5934
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_ae

    .line 5940
    :cond_1d
    invoke-virtual {p7, p2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 5941
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5943
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5944
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_4b

    .line 5946
    :cond_2f
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 5949
    iget v1, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p3, v1}, Landroid/graphics/Region;->scale(F)V

    .line 5950
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 5951
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Region;->translate(II)V

    .line 5954
    invoke-virtual {p3, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_4b
    const/4 v6, 0x0

    .line 5958
    invoke-static {p7, v6}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_85

    .line 5961
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    aget v3, p4, v6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p4, v6

    .line 5965
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    aget v3, p4, v7

    const/4 v5, 0x1

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p4, v7

    .line 5969
    invoke-static {p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p4

    .line 5970
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p4, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5971
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    invoke-virtual {p4, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5972
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, p4, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5973
    invoke-virtual {p4}, Landroid/graphics/Region;->recycle()V

    goto :goto_a2

    .line 5975
    :cond_85
    invoke-static {p7, v7}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result p4

    if-eqz p4, :cond_9d

    .line 5977
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    const v3, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5979
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    const/4 v5, 0x1

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5982
    :cond_9d
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_a2
    if-eqz p6, :cond_a9

    .line 5985
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p6, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5987
    :cond_a9
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_ae
    :goto_ae
    return-void
.end method

.method public final synthetic lambda$destroyLeakedSurfaces$21(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 4189
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4190
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_8

    goto/16 :goto_b0

    .line 4193
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " token="

    const-string v3, " surface="

    const-string v4, "WindowManager"

    if-nez v1, :cond_63

    .line 4194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4200
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4201
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-void

    .line 4202
    :cond_63
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 4203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_ab

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x39522324fc01c450L    # -3.0284392815177353E32

    invoke-static {v2, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4207
    :cond_ab
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4208
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_b0
    :goto_b0
    return-void
.end method

.method public final synthetic lambda$getPresentUIDs$40(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 6558
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method public final synthetic lambda$getTouchableWinAtPointLocked$18(IILcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 3895
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3896
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    return v2

    .line 3903
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3904
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    .line 3908
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    and-int/lit8 p3, v0, 0x28

    .line 3911
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-nez p0, :cond_32

    if-nez p3, :cond_31

    goto :goto_32

    :cond_31
    return v2

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 734
    :try_start_9
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 735
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 815
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 816
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 817
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    if-eqz v1, :cond_11

    .line 818
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 819
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 820
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1d
    return-void
.end method

.method public final synthetic lambda$new$2(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 832
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 833
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d5

    if-ne v1, v2, :cond_27

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v1, v0, :cond_27

    const/16 v0, 0x34

    .line 834
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 835
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    return-void
.end method

.method public final synthetic lambda$new$3(Lcom/android/server/wm/WindowState;)Z
    .registers 10

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 849
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    .line 850
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_36

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    int-to-long v4, v4

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeysReason(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v4, 0x13e01f7bb62a3decL    # 5.986575007244763E-213

    const/16 v6, 0x34

    invoke-static {v7, v4, v5, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_36
    if-nez v1, :cond_39

    return v3

    .line 864
    :cond_39
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    .line 865
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_6d

    .line 866
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 873
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 874
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 875
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_6c

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x762aed5dbe91cb86L    # -2.676860732746817E-261

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6c
    return v3

    .line 868
    :cond_6d
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_7d

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x6f594b48e5753af6L    # 2.396821195868201E228

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7d
    return v3

    .line 881
    :cond_7e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x1

    if-nez v0, :cond_9e

    .line 884
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_9b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x1bbdc48e43fccda6L    # -9.018756768844263E174

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v6, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 886
    :cond_9b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    .line 890
    :cond_9e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v5

    if-nez v5, :cond_bf

    .line 892
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_bc

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x150002912957ca17L    # -2.567620893806859E207

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v6, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 894
    :cond_bc
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_bf
    if-eqz v1, :cond_10a

    .line 900
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_10a

    .line 901
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-lez v5, :cond_e9

    .line 903
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_e6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x3c30d7ddea7380fL

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v5, v6, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 905
    :cond_e6
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    .line 911
    :cond_e9
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_10a

    .line 912
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 913
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-ne v2, v5, :cond_10a

    .line 914
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eq v1, v0, :cond_10a

    return v3

    .line 920
    :cond_10a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_122

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x2a8ea20a22d9383fL    # 1.068514868993723E-103

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v6, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 921
    :cond_122
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4
.end method

.method public final synthetic lambda$new$4(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 926
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    goto :goto_4e

    .line 932
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 951
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_4e

    .line 952
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_1a

    .line 953
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    :cond_1a
    const/4 v0, 0x1

    .line 955
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 957
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v0

    .line 958
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 959
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-nez v0, :cond_4e

    .line 966
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 967
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 968
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 970
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 971
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->onResizeHandled()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final synthetic lambda$new$5(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 981
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_5

    goto :goto_18

    .line 990
    :cond_5
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_19

    :cond_f
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    :goto_18
    return-void

    .line 992
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_20

    .line 993
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    :cond_20
    const/4 v0, 0x1

    .line 995
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    const/4 v0, 0x0

    .line 996
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 997
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 998
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    return-void
.end method

.method public final synthetic lambda$new$6(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1012
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeLayeringTarget()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$7(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/wm/DisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final synthetic lambda$new$8(Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 1020
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_9

    .line 1022
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    .line 1026
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_105

    .line 1029
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1034
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1035
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 1038
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v2

    .line 1042
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v3, :cond_47

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayPolicy;->isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1044
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v2, v4

    iput-boolean v2, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 1047
    :cond_47
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_105

    if-eqz v0, :cond_105

    .line 1048
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_58

    .line 1049
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_7f

    .line 1050
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_7f

    .line 1051
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v5, 0x57353cd059d832daL    # 1.2768588890467934E112

    invoke-static {v3, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1057
    :cond_7f
    :goto_7f
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d8

    if-eq v0, v2, :cond_99

    const/16 v2, 0x7da

    if-eq v0, v2, :cond_99

    const/16 v2, 0x7f8

    if-ne v0, v2, :cond_9d

    .line 1058
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1061
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1062
    :cond_99
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 1064
    :cond_9d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v2, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_b0

    .line 1066
    iput v2, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 1070
    :cond_b0
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v5, v4, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    or-int/2addr v2, v5

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 1073
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 1074
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isHdrConversionEnabled()Z

    move-result v4

    xor-int/2addr v1, v4

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 1077
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    if-eqz v1, :cond_e1

    .line 1079
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v2, :cond_e1

    .line 1081
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_e1

    .line 1082
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 1086
    :cond_e1
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v1

    .line 1087
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_f3

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_f3

    .line 1089
    iput v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 1094
    :cond_f3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v0

    .line 1095
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_105

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_105

    .line 1097
    iput v0, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1103
    :cond_105
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 1108
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_12b

    .line 1109
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1110
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 1111
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1112
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 1113
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_12b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    return-void
.end method

.method public final synthetic lambda$new$9(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V
    .registers 3

    .line 1209
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;)V

    return-void
.end method

.method public final synthetic lambda$remove$37()V
    .registers 2

    const/4 v0, 0x1

    .line 6521
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 6523
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_a

    .line 6524
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->stopRecording()V

    :cond_a
    return-void
.end method

.method public final synthetic lambda$requestChangeTransition$16(J)V
    .registers 3

    .line 3648
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public final synthetic lambda$shouldWaitForSystemDecorWindowsOnBoot$26(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 5064
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 5065
    :goto_f
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-eqz v0, :cond_35

    if-nez v3, :cond_35

    .line 5067
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_34

    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x21c2b129bbcd39d0L    # 4.677877926656815E-146

    invoke-static {p2, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_34
    return v2

    :cond_35
    if-eqz v3, :cond_59

    .line 5073
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p2, v2, :cond_56

    const/16 v0, 0x7dd

    if-eq p2, v0, :cond_56

    const/16 v0, 0x7e5

    if-eq p2, v0, :cond_56

    const/16 v0, 0x7f8

    if-eq p2, v0, :cond_4a

    goto :goto_59

    .line 5080
    :cond_4a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5081
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result p0

    .line 5080
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_59

    .line 5077
    :cond_56
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_59
    :goto_59
    return v1
.end method

.method public final synthetic lambda$startAsyncRotation$11()V
    .registers 3

    .line 2213
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2214
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 2215
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2217
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_22

    .line 2219
    :cond_1d
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateDisplayAreaOrganizers$15(Lcom/android/server/wm/DisplayArea;)V
    .registers 3

    .line 3453
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_18

    .line 3457
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 3459
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 3461
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final synthetic lambda$updateImeParent$24()V
    .registers 2

    .line 4845
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onImeParentChanged(I)V

    return-void
.end method

.method public loadDisplayCutout(II)Landroid/view/DisplayCutout;
    .registers 10

    .line 3409
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_9

    goto :goto_22

    .line 3413
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    move v5, p1

    move v6, p2

    .line 3412
    invoke-static/range {v1 .. v6}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadRoundedCorners(II)Landroid/view/RoundedCorners;
    .registers 10

    .line 3418
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v1, :cond_9

    goto :goto_22

    .line 3422
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    move v5, p1

    move v6, p2

    .line 3421
    invoke-static/range {v1 .. v6}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 5516
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 5517
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 5495
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    if-nez p1, :cond_d

    return-object v0

    .line 5500
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5501
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 5511
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_23

    .line 1298
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v1, :cond_20

    .line 1300
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ContentRecorder;->resetRecordingDisplay(I)V

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1303
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1304
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public notifyInsetsChanged(Ljava/util/function/Consumer;)V
    .registers 5

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    .line 2253
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2255
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 2256
    sget-object v2, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v0, v1, v2}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    :cond_15
    const/4 v0, 0x1

    .line 2259
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2260
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz p1, :cond_20

    .line 2261
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->notifyInsetsChanged()V

    .line 2265
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 2266
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_39

    .line 2267
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 2268
    :goto_3a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/AccessibilityController;->updateImeVisibilityIfNeeded(IZ)V

    :cond_43
    return-void
.end method

.method public notifyKeyguardFlagsChanged()V
    .registers 2

    .line 6661
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6665
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 6667
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void
.end method

.method public okToAnimate(ZZ)Z
    .registers 4

    .line 5357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5358
    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result p2

    if-eqz p2, :cond_20

    :cond_14
    if-nez p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5359
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public okToDisplay()Z
    .registers 2

    const/4 v0, 0x0

    .line 5344
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result p0

    return p0
.end method

.method public okToDisplay(ZZ)Z
    .registers 5

    .line 5348
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_18

    .line 5349
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz p1, :cond_17

    if-nez p2, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5350
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    return v1

    :cond_17
    return v0

    .line 5352
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_20

    return v1

    :cond_20
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 2885
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2886
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1}, Lcom/android/server/wm/PinnedTaskController;->onPostDisplayConfigurationChanged()V

    .line 2888
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 2891
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p1, :cond_1c

    .line 2892
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 2895
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_4a

    .line 2896
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x67b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2898
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2899
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x67c

    invoke-virtual {v0, v1, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 2896
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_4a
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationAndComputeConfig(Z)Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz p1, :cond_c

    .line 1736
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v2

    goto :goto_d

    :cond_c
    const/4 v2, -0x2

    .line 1738
    :goto_d
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant(I)Z

    move-result v2

    if-nez v1, :cond_14

    goto :goto_27

    :cond_14
    if-eqz v2, :cond_28

    .line 1743
    instance-of v3, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_28

    .line 1744
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 1745
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    if-nez p1, :cond_27

    .line 1748
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_27
    :goto_27
    return v2

    :cond_28
    const/4 p1, 0x0

    .line 1753
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    return v2
.end method

.method public onDescendantOverrideConfigurationChanged()V
    .registers 1

    .line 5338
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5339
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 3042
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3043
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    return-void
.end method

.method public onDisplayInfoChangeApplied()V
    .registers 4

    .line 3329
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3330
    const-string v0, "WindowManager"

    const-string v1, "ShouldShowSystemDecors shouldn\'t be updated when the flag is off."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->allowContentModeSwitch()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_26

    .line 3337
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->canHostTasks()Z

    move-result v0

    .line 3338
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 3339
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-ne v0, v1, :cond_27

    :goto_26
    return-void

    .line 3342
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V

    if-nez v0, :cond_3e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3345
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->clearAllTasksOnDisplay(Ljava/lang/Runnable;Z)V

    .line 3349
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->moveErrorDialogsToDefaultDisplay(I)V

    .line 3354
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->onDisplayBelongToTopologyChanged(IZ)V

    return-void
.end method

.method public onDisplayInfoChanged()V
    .registers 4

    const/4 v0, 0x0

    .line 3020
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(Z)V

    .line 3021
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 3022
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V
    .registers 10

    .line 6185
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 6186
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo(Landroid/view/DisplayInfo;)V

    .line 6189
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 6190
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    if-eqz p1, :cond_4f

    const/4 p1, 0x1

    .line 6192
    const-string v2, "Display-off"

    if-ne v1, p1, :cond_1c

    .line 6193
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->addSleepToken(Ljava/lang/String;)V

    goto :goto_22

    :cond_1c
    const/4 p1, 0x2

    if-ne v1, p1, :cond_22

    .line 6195
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->removeSleepToken(Ljava/lang/String;)V

    .line 6197
    :cond_22
    :goto_22
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v2, 0x0

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_4a

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p1

    int-to-long v4, v0

    int-to-long v6, v1

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x7151094ac082c431L

    const/16 v5, 0x15

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4a
    if-eq v0, v1, :cond_4f

    .line 6204
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 6208
    :cond_4f
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WallpaperController;->resetLargestDisplay(Landroid/view/Display;)V

    .line 6211
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 6212
    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result p1

    if-nez p1, :cond_6d

    if-eqz v1, :cond_6d

    .line 6213
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6214
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContextListenerController;->dispatchPendingConfigurationIfNeeded(I)V

    .line 6216
    :cond_6d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public onIsIgnoreOrientationRequestDisabledChanged()V
    .registers 2

    .line 6803
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    .line 6806
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 6808
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_12

    .line 6809
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    :cond_12
    return-void
.end method

.method public onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    .line 4156
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method

.method public onMirrorOutputSurfaceOrientationChanged()V
    .registers 1

    .line 6885
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_7

    .line 6886
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->onMirrorOutputSurfaceOrientationChanged()V

    :cond_7
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 4

    .line 5561
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result p1

    if-nez p1, :cond_3d

    const/4 p1, 0x1

    .line 5564
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 5566
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p2, :cond_15

    .line 5567
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setDisplayInfoOverride()V

    .line 5568
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5571
    :cond_15
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez p2, :cond_1e

    .line 5572
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    .line 5575
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 5576
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5577
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V

    .line 5578
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAnimationsDisabled:Z

    .line 5579
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAnimationsDisabledChanged(IZ)V

    .line 5583
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->registerSystemUiContext()V

    :cond_3d
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 6395
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6396
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 6397
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    if-eq v2, v3, :cond_1a

    if-eq v1, v2, :cond_1a

    .line 6400
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationAndFinishFixedRotation(II)V

    .line 6402
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 6403
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 6404
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 6405
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_2c

    .line 6406
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 6408
    :cond_2c
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    return-void
.end method

.method public onResize()V
    .registers 2

    .line 6414
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 6415
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6416
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AccessibilityController;->onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_14
    return-void
.end method

.method public onRunningActivityChanged()V
    .registers 1

    .line 4151
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->onRunningActivityChanged()V

    return-void
.end method

.method public onShowImeRequested()V
    .registers 3

    .line 4367
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    goto :goto_15

    .line 4372
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_15

    .line 4373
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 4376
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_15

    .line 4377
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->hideImeImmediately()V

    :cond_15
    :goto_15
    return-void
.end method

.method public onTransitionFinished()V
    .registers 3

    .line 2921
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2922
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2924
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2925
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 2930
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2931
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2932
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 2933
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v0

    if-nez v0, :cond_56

    .line 2934
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_53

    .line 2935
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 2937
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_56
    return-void
.end method

.method public pauseRecording()V
    .registers 1

    .line 6894
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_7

    .line 6895
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    :cond_7
    return-void
.end method

.method public performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I
    .registers 6

    .line 6359
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6360
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_b2

    .line 6362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override config changes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6364
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "dispOverCfg"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    .line 6365
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v1, :cond_6d

    .line 6366
    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 6367
    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    goto :goto_6d

    :cond_69
    const/4 v1, 0x0

    .line 6369
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/ActionChain;)V

    .line 6372
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6373
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_a7

    .line 6376
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_a7

    .line 6377
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 6381
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v2, 0x18

    .line 6383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    .line 6384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6381
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6385
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6387
    :cond_a7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 6388
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6387
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    :cond_b2
    return p1
.end method

.method public performLayout(ZZ)V
    .registers 6

    .line 5249
    const-string v0, "performLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5251
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 5253
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5254
    throw p0
.end method

.method public final performLayoutNoTrace(ZZ)V
    .registers 6

    .line 5258
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2c

    .line 5261
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 5269
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_12

    move v0, v2

    .line 5271
    :cond_12
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 5273
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 5277
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5282
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5285
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_2c

    .line 5287
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public prepareSurfaces()V
    .registers 4

    .line 5680
    const-string v0, "prepareSurfaces"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5682
    :try_start_7
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->prepareSurfaces()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 5684
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5685
    throw p0
.end method

.method public providesMaxBounds()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5

    .line 1547
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p0, :cond_7

    goto :goto_46

    :cond_7
    if-eqz v0, :cond_20

    .line 1552
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1555
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1559
    :cond_20
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1561
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_46

    if-eqz v0, :cond_36

    .line 1562
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    goto :goto_37

    :cond_36
    const/4 p1, -0x1

    .line 1563
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    .line 1563
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public reapplyMagnificationSpec()V
    .registers 2

    .line 5545
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public reapplyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 5549
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_7

    .line 5550
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    :cond_7
    return-void
.end method

.method public reconfigureDisplayLocked()V
    .registers 8

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1638
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 1639
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1643
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1644
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1645
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    or-int/2addr v0, v4

    if-eqz v0, :cond_99

    .line 1649
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1650
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1651
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1652
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1653
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "recfgDisp"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    .line 1654
    invoke-virtual {v4}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1655
    new-instance v5, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v5, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 1657
    invoke-virtual {v5, v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1658
    invoke-virtual {v5, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1659
    invoke-virtual {p0, v2, v5, v4}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/ActionChain;)V

    goto :goto_7a

    .line 1661
    :cond_6b
    invoke-virtual {v4}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    .line 1662
    invoke-virtual {v4, p0, v2}, Lcom/android/server/wm/Transition;->setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V

    .line 1665
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v0, v1, p0}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V

    .line 1666
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    .line 1668
    :goto_7a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 1670
    :cond_81
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-nez v0, :cond_8d

    const/high16 v0, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_8d

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded()V

    .line 1675
    :cond_8d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    move-result v0

    if-nez v0, :cond_99

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1684
    :cond_99
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method public final reduceCompatConfigWidthSize(ILandroid/util/DisplayMetrics;II)I
    .registers 5

    .line 2666
    iput p3, p2, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2667
    iput p4, p2, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 p0, 0x0

    .line 2668
    invoke-static {p2, p0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p0

    .line 2669
    iget p3, p2, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float p3, p3

    div-float/2addr p3, p0

    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p3, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p3, p0

    float-to-int p0, p3

    if-eqz p1, :cond_1a

    if-ge p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    return p1

    :cond_1a
    :goto_1a
    return p0
.end method

.method public refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 3

    .line 4515
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->canScreenshotIme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 4516
    :goto_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z

    move-result p0

    return p0
.end method

.method public registerDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;)V
    .registers 2

    .line 6100
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 2

    .line 5705
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 4

    .line 6073
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6075
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 6076
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_2e

    .line 6082
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v0, :cond_1d

    .line 6083
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 6087
    :goto_1e
    :try_start_1e
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v1, p0, v0}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 6090
    const-string p1, "WindowManager"

    const-string v0, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    return-void
.end method

.method public final registerSystemUiContext()V
    .registers 11

    .line 5588
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    .line 5589
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5590
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 5589
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 5591
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 5592
    invoke-virtual {v0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    move-object v6, p0

    .line 5591
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IZLandroid/os/Bundle;)V

    .line 5594
    iget-object p0, v6, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public releaseSelfIfNeeded()V
    .registers 2

    .line 6539
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_5

    goto :goto_28

    .line 6544
    :cond_5
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6546
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 6549
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void

    .line 6550
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_28

    .line 6551
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    :cond_28
    :goto_28
    return-void
.end method

.method public remove()V
    .registers 3

    const/4 v0, 0x1

    .line 6518
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 6520
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->clearAllTasksOnDisplay(Ljava/lang/Runnable;Z)V

    .line 6527
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContextListenerController;->dispatchDisplayRemoval(I)V

    .line 6529
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 6530
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->release()V

    .line 6532
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 6533
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6534
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_2e
    return-void
.end method

.method public removeAllTasks()V
    .registers 2

    .line 6759
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 5

    const/4 v0, 0x1

    .line 1569
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1570
    const-string v1, "WindowManager"

    if-nez v0, :cond_1e

    .line 1571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1575
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_41

    .line 1578
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to remove non-App token: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1582
    :cond_41
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 1583
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_4f

    .line 1585
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    const/4 p1, 0x0

    .line 1586
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_4f
    return-void
.end method

.method public removeIfPossible()V
    .registers 2

    .line 3479
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 3480
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return-void

    .line 3483
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return-void
.end method

.method public removeImeScreenshotByTarget(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 4735
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-nez v0, :cond_5

    goto :goto_16

    .line 4740
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4741
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    :goto_16
    return-void

    .line 4745
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_2c

    .line 4746
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 4747
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-void

    .line 4749
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotImmediately()V

    return-void
.end method

.method public removeImeScreenshotImmediately()V
    .registers 3

    .line 4755
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_e

    .line 4756
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeSurface(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 4757
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    :cond_e
    return-void
.end method

.method public removeImmediately()V
    .registers 4

    const/4 v0, 0x0

    .line 3488
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 3490
    :try_start_3
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 3491
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3492
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayRemoveSystemDecorations()V

    goto :goto_1e

    :catchall_1b
    move-exception v1

    goto/16 :goto_a3

    .line 3494
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 3495
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 3496
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDeviceStateListener:Lcom/android/server/wm/DeviceStateController$DeviceStateListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DeviceStateController;->unregisterDeviceStateCallback(Lcom/android/server/wm/DeviceStateController$DeviceStateListener;)V

    .line 3497
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    .line 3499
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    const/4 v1, 0x0

    .line 3502
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V

    .line 3503
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 3504
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 3505
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 3506
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcherOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 3507
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V

    .line 3508
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 3509
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->onDisplayRemoved()V

    .line 3510
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AccessibilityController;->onDisplayRemoved(I)V

    .line 3511
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3512
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 3513
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->resetLargestDisplay(Landroid/view/Display;)V

    .line 3514
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 3515
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_1b

    .line 3517
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3523
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3525
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->dispose()V

    return-void

    .line 3517
    :goto_a3
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 3518
    throw v1
.end method

.method public varargs removeRootTasksInWindowingModes([I)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 6239
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2b

    .line 6246
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6247
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_2b

    .line 6258
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_2b
    :goto_2b
    return-void
.end method

.method public varargs removeRootTasksWithActivityTypes([I)V
    .registers 5

    if-eqz p1, :cond_2f

    .line 6263
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2f

    .line 6270
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6271
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1d
    if-ltz p1, :cond_2f

    .line 6287
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1d

    :cond_2f
    :goto_2f
    return-void
.end method

.method public removeShellRoot(I)V
    .registers 4

    .line 1519
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1520
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ShellRoot;

    if-nez v1, :cond_19

    .line 1522
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    goto :goto_26

    .line 1524
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1525
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1526
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeSleepToken(Ljava/lang/String;)V
    .registers 8

    .line 6594
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_21

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x7fa1e2b52cfdc566L    # -6.700681533124078E-307

    const/4 v5, 0x4

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6596
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_28
    if-ltz v0, :cond_3e

    .line 6598
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3e

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3e
    :goto_3e
    if-gez v0, :cond_64

    .line 6601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove non-existent sleep token: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6604
    :cond_64
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6605
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 6606
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_76
    return-void
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;
    .registers 3

    .line 1489
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    if-eqz p0, :cond_13

    .line 1490
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1491
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    :cond_13
    return-object p0
.end method

.method public reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 5524
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public replaceContent(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 7298
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 7299
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    .line 7300
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    .line 7301
    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 7302
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/ActionChain;)V
    .registers 10

    .line 3621
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x6

    move-object v3, p0

    move-object v5, p2

    .line 3622
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TransitionController;->requestStartDisplayTransition(IILcom/android/server/wm/DisplayContent;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    .line 3624
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 3625
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 3626
    iget-object p2, v3, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 3627
    iget-object p2, v3, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p2, :cond_1e

    .line 3630
    invoke-virtual {p2}, Lcom/android/server/wm/AsyncRotationController;->updateRotation()V

    .line 3632
    :cond_1e
    iget-object p2, v3, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_29

    .line 3633
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    .line 3636
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V

    goto :goto_5e

    .line 3637
    :cond_29
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result p2

    if-eqz p2, :cond_5e

    const/4 p2, 0x0

    if-eqz v5, :cond_45

    .line 3639
    iget-object p3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 3640
    invoke-virtual {v5}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v1

    invoke-virtual {v5}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v2

    .line 3639
    invoke-virtual {p3, v1, v2, p2}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result p3

    if-eqz p3, :cond_45

    .line 3643
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V

    .line 3646
    :cond_45
    iget-object p3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 3647
    iget-object p3, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;

    invoke-direct {v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p3, v0, v1}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V

    .line 3649
    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    .line 3651
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/Transition;->setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method public requestDisplayUpdate(Ljava/lang/Runnable;)V
    .registers 3

    .line 6176
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 6178
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->updateDisplayInfo(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 6180
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_10
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6181
    throw p1
.end method

.method public requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)V
    .registers 11

    .line 5722
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    move-object v4, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/Transition;

    return-void
.end method

.method public rotateBounds(IILandroid/graphics/Rect;)V
    .registers 5

    .line 3593
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 3594
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, p0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2188
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 2190
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    :cond_a
    return-void
.end method

.method public rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 5

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 1941
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    .line 1942
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    if-eqz v2, :cond_52

    .line 1943
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_52

    :cond_19
    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 1947
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1950
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    move-object p1, v2

    :cond_27
    if-ne v0, v1, :cond_30

    .line 1953
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    .line 1956
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result p1

    .line 1957
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_44

    goto :goto_52

    .line 1960
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p1

    .line 1961
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result p0

    if-ne p0, p1, :cond_51

    return v1

    :cond_51
    return p0

    :cond_52
    :goto_52
    return v1
.end method

.method public sandboxDisplayApis()Z
    .registers 1

    .line 6874
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    return p0
.end method

.method public scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p1, :cond_13

    if-eqz p2, :cond_b

    .line 3933
    iget p2, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p2, v0, :cond_b

    goto :goto_13

    .line 3938
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3940
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method public sendNewConfiguration()Z
    .registers 6

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1692
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteDisplayChangeController;->isWaitingForRemoteDisplayChange()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 1696
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 1697
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v3, "displayConfig"

    invoke-direct {v0, v3, p0, v2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_2b

    .line 1700
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    goto :goto_4d

    .line 1701
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v3, :cond_4d

    .line 1702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Direct invocation of sendNewConfiguration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    move-result v3

    if-eqz v0, :cond_56

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_56
    if-eqz v3, :cond_59

    return v2

    .line 1715
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 1721
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_6c

    .line 1722
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1724
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_6c
    return v1
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .registers 2

    .line 6906
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getContentRecorder()Lcom/android/server/wm/ContentRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ContentRecorder;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method public final setDisplayInfoOverride()V
    .registers 4

    .line 2399
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 2402
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    if-nez v0, :cond_16

    .line 2403
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    .line 2406
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public setDisplayMirroring()Z
    .registers 11

    .line 6923
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    return v2

    .line 6928
    :cond_f
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v1, :cond_31

    if-eqz v1, :cond_30

    .line 6930
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_30

    int-to-long v0, v0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x39c39c27173c3a3cL    # 1.9336924814073833E-30

    invoke-static {p0, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_30
    return v2

    .line 6939
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_57

    .line 6940
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v5, :cond_57

    .line 6941
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_56

    int-to-long v0, v0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x4c2f4daab1c03d0eL    # 9.824726878648732E58

    invoke-static {p0, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_56
    return v2

    :cond_57
    const/4 v5, 0x5

    if-nez v1, :cond_80

    .line 6949
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6950
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v4, v6, v4

    if-eqz v4, :cond_80

    int-to-long v6, v0

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v4

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x8d6071275dc810L

    invoke-static {v4, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6958
    :cond_80
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object v1

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6959
    invoke-virtual {v1, v4}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    move-result-object v1

    .line 6960
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 6961
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b1

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, p0

    int-to-long v6, v0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x5ad5c39f7dc03509L    # 3.7715503598578044E129

    invoke-static {p0, v1, v2, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b1
    return v3
.end method

.method public setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 2098
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_f

    .line 2100
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_f

    goto :goto_39

    :cond_f
    if-eqz v0, :cond_28

    .line 2105
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_28

    .line 2107
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2112
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 2115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    return-void

    .line 2119
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 2122
    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    if-eqz v0, :cond_39

    .line 2124
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    :cond_39
    :goto_39
    return-void
.end method

.method public setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, -0x1

    .line 2073
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 4

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_17

    if-eqz p1, :cond_17

    .line 2078
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V

    .line 2081
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    .line 2082
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    goto :goto_31

    :cond_17
    if-eqz v0, :cond_31

    if-nez p1, :cond_31

    .line 2084
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V

    .line 2086
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    invoke-virtual {p2, p0, v0}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(Lcom/android/server/wm/WindowContainer;I)Z

    move-result p2

    if-nez p2, :cond_31

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 2090
    :cond_31
    :goto_31
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public setFixedTransformHint(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 4

    .line 2332
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    add-int/2addr p3, p0

    rem-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9

    if-eqz p1, :cond_3e

    .line 4122
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eq v0, p0, :cond_37

    .line 4124
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2a

    .line 4125
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_2a
    const-string p0, "none"

    :goto_2c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4130
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 4132
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_44

    return v1

    .line 4135
    :cond_44
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x69f1e19686dd336cL

    invoke-static {v6, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4137
    :cond_6f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_7a

    :cond_79
    move-object v0, v2

    :goto_7a
    if-eqz p1, :cond_80

    .line 4138
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 4139
    :cond_80
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8f

    if-eqz v0, :cond_8a

    .line 4141
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    :cond_8a
    if-eqz v2, :cond_8f

    .line 4142
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    .line 4145
    :cond_8f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V

    return v3
.end method

.method public setForcedDensity(II)V
    .registers 6

    .line 3237
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    const/4 v0, -0x2

    if-ne p2, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    .line 3239
    :goto_12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v0, p2, :cond_1a

    if-eqz v1, :cond_1f

    .line 3240
    :cond_1a
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3241
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_1f
    if-eqz v1, :cond_22

    return-void

    .line 3248
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    move-result v0

    if-ne p1, v0, :cond_29

    move p1, v2

    .line 3251
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Landroid/view/DisplayInfo;II)V

    return-void
.end method

.method public setForcedDensityRatio(FI)V
    .registers 5

    .line 3256
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3257
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    .line 3258
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensityRatio(Landroid/view/DisplayInfo;F)V

    .line 3262
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getBaseDensityFromRatio()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    :cond_1e
    return-void
.end method

.method public setForcedScalingMode(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    move p1, v0

    :cond_5
    if-eqz p1, :cond_8

    move v0, v1

    .line 3276
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using display scaling mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_1b

    const-string v1, "off"

    goto :goto_1d

    :cond_1b
    const-string v1, "auto"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3280
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    return-void
.end method

.method public setForcedSize(II)V
    .registers 4

    const/4 v0, 0x0

    .line 3285
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/DisplayContent;->setForcedSize(IIFF)V

    return-void
.end method

.method public setForcedSize(IIFF)V
    .registers 13

    .line 3293
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v0, p2, :cond_a

    goto :goto_c

    :cond_a
    move v0, v1

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_29

    .line 3295
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_1e

    if-le p1, v0, :cond_1e

    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v2

    float-to-int p2, p1

    move p1, v0

    .line 3300
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getValidForcedSize(II)Landroid/graphics/Point;

    move-result-object p1

    .line 3301
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3302
    iget p1, p1, Landroid/graphics/Point;->y:I

    move v4, p1

    move v3, p2

    goto :goto_2b

    :cond_29
    move v3, p1

    move v4, p2

    .line 3305
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Using new display size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz p1, :cond_51

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :goto_4f
    move v5, p1

    goto :goto_54

    :cond_51
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    goto :goto_4f

    :goto_54
    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-eqz p2, :cond_5b

    :goto_59
    move v6, p3

    goto :goto_5e

    .line 3308
    :cond_5b
    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    goto :goto_59

    :goto_5e
    cmpl-float p1, p4, p1

    if-eqz p1, :cond_65

    :goto_62
    move-object v2, p0

    move v7, p4

    goto :goto_68

    .line 3309
    :cond_65
    iget p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    goto :goto_62

    .line 3306
    :goto_68
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3310
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3312
    iget-boolean p0, v2, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-nez p0, :cond_74

    move v4, v1

    goto :goto_75

    :cond_74
    move v1, v3

    .line 3315
    :goto_75
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    return-void
.end method

.method public setIgnoreOrientationRequest(Z)Z
    .registers 5

    const/4 v0, 0x1

    .line 6785
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    .line 6786
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-ne v0, p1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 6787
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v0

    .line 6788
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 6789
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 6788
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->setIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_24

    .line 6791
    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_24
    return v0
.end method

.method public setImeControlTargetForTesting(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 2

    .line 4527
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public setImeInputTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 8

    .line 4465
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTargetTokenListenerPair:Landroid/util/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 4467
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1a

    .line 4469
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTargetTokenListenerPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4471
    :cond_1a
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTargetTokenListenerPair:Landroid/util/Pair;

    .line 4473
    :cond_1c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x4a5cfc70904ac12cL    # -2.540985037008795E-50

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4474
    :cond_36
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz p1, :cond_6b

    .line 4478
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_76

    .line 4480
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/wm/DisplayContent$3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/DisplayContent$3;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTargetTokenListenerPair:Landroid/util/Pair;

    .line 4493
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4495
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4496
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 4495
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZI)V

    goto :goto_76

    .line 4498
    :cond_6b
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_76

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne p1, v0, :cond_76

    .line 4502
    invoke-interface {p1, v2, v1}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4505
    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 4506
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_85
    return-void
.end method

.method public setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V
    .registers 12

    .line 4395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne v1, v2, :cond_b

    return-void

    .line 4398
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_37

    .line 4405
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_29

    const/16 v1, 0x10

    .line 4407
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v3

    .line 4408
    :goto_2a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-nez v1, :cond_34

    if-eqz v0, :cond_37

    .line 4410
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 4414
    :cond_37
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_50

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x219208fd465c3bfaL    # 5.641843468024411E-147

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4415
    :cond_50
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    move v0, v3

    .line 4416
    :goto_57
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_78

    .line 4418
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isImeOverlayLayeringTarget()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 4419
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4420
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v7

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 4419
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->dispatchImeOverlayLayeringTargetVisibilityChanged(Landroid/os/IBinder;IZZI)V

    goto :goto_8c

    :cond_78
    if-eqz p1, :cond_80

    .line 4423
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_7e
    move v6, v1

    goto :goto_82

    :cond_80
    const/4 v1, -0x1

    goto :goto_7e

    .line 4424
    :goto_82
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->dispatchImeOverlayLayeringTargetVisibilityChanged(Landroid/os/IBinder;IZZI)V

    :goto_8c
    if-eqz p1, :cond_b4

    .line 4431
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 4432
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 4433
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-eq p1, v1, :cond_b4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 4436
    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootDisplayArea;->placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 4441
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_b3

    .line 4442
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_b3
    move v0, v2

    .line 4448
    :cond_b4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4450
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4451
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v1

    .line 4450
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 4455
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public setInTouchMode(Z)Z
    .registers 3

    .line 1430
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1433
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 4230
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4231
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4232
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getImeSourceFrameProvider()Lcom/android/internal/util/function/TriFunction;

    move-result-object v1

    const/4 v2, 0x0

    .line 4231
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    .line 4233
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;

    const/4 p1, 0x0

    .line 4234
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public setIsSleeping(Z)V
    .registers 2

    .line 6653
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return-void
.end method

.method public setLastHasContent()V
    .registers 2

    const/4 v0, 0x1

    .line 5701
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return-void
.end method

.method public setLayoutNeeded()V
    .registers 2

    const/4 v0, 0x1

    .line 5006
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method public setMaxUiWidth(I)V
    .registers 8

    .line 3169
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 3172
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    return-void
.end method

.method public setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    .registers 5

    .line 1530
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1531
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->-$$Nest$fgetmRemoteInsetsController(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1533
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :cond_15
    if-eqz p1, :cond_27

    .line 1537
    :try_start_17
    invoke-interface {p1}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1538
    new-instance v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method public setSandboxDisplayApis(Z)V
    .registers 2

    .line 6866
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    return-void
.end method

.method public final setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V
    .registers 2

    .line 3655
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V

    .line 3658
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_a

    .line 3659
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    :cond_a
    return-void
.end method

.method public shouldDestroyContentOnRemove()Z
    .registers 2

    .line 6564
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRemoveContentMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public shouldImeAttachedToApp()Z
    .registers 4

    .line 4275
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 4281
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-nez v0, :cond_2c

    .line 4283
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2c

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2c

    .line 4286
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4289
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayAreaBounds()Z

    move-result p0

    if-eqz p0, :cond_2c

    return v2

    :cond_2c
    return v1
.end method

.method public final shouldNeverShowSystemDecorations()Z
    .registers 4

    .line 5738
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 5742
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p0

    if-nez p0, :cond_11

    return v2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public shouldRotateWithContent()Z
    .registers 1

    .line 6722
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSleep()Z
    .registers 2

    .line 6611
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public shouldWaitForSystemDecorWindowsOnBoot()Z
    .registers 19

    move-object/from16 v0, p0

    .line 5051
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 5058
    :cond_e
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v3, 0x7f8

    const/4 v4, 0x1

    .line 5061
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5063
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_25

    return v4

    .line 5095
    :cond_25
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11101af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5097
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_49

    move v5, v4

    goto :goto_4a

    :cond_49
    move v5, v2

    :goto_4a
    const/16 v6, 0x7e5

    .line 5100
    invoke-virtual {v1, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 5101
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    const/16 v8, 0x7dd

    .line 5102
    invoke-virtual {v1, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 5103
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 5105
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v9, 0x2

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_97

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v3, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v11, 0x4ee00d7e5c833dadL    # 8.863338260925845E71

    const/16 v9, 0x3fff

    invoke-static {v10, v11, v12, v9, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5113
    :cond_97
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_a0

    if-nez v6, :cond_a0

    return v4

    :cond_a0
    if-eqz v0, :cond_ab

    if-nez v7, :cond_a6

    if-eqz v1, :cond_aa

    :cond_a6
    if-eqz v5, :cond_ab

    if-nez v8, :cond_ab

    :cond_aa
    return v4

    :cond_ab
    return v2
.end method

.method public showImeScreenshot()V
    .registers 1

    .line 4719
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->attachImeScreenshotOnTargetIfNeeded()V

    return-void
.end method

.method public showImeScreenshot(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 4727
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final startAsyncRotation(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2212
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 2223
    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-nez p1, :cond_22

    .line 2224
    new-instance p1, Lcom/android/server/wm/AsyncRotationController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AsyncRotationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/wm/AsyncRotationController;->start()V

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public final startAsyncRotationIfNeeded()V
    .registers 2

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2201
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    :cond_a
    return-void
.end method

.method public final startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V
    .registers 11

    .line 2168
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2169
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 2170
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;

    move-result-object v4

    .line 2171
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v5

    .line 2173
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v6

    .line 2174
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayShapeForRotation(I)Landroid/view/DisplayShape;

    move-result-object v7

    .line 2175
    new-instance v1, Lcom/android/server/wm/DisplayFrames;

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)V

    .line 2177
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v3, v1, p0}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public switchUser(I)V
    .registers 3

    .line 3468
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 3469
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3470
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 3883
    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x0

    .line 6293
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 6307
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public unregisterDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;)V
    .registers 2

    .line 6104
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 2

    .line 5709
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 2

    .line 6096
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public updateAccessibilityOnWindowFocusChanged(Lcom/android/server/wm/AccessibilityController;)V
    .registers 2

    .line 4111
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNot(I)V

    return-void
.end method

.method public updateBaseDisplayMetrics(IIIFF)V
    .registers 6

    .line 3179
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3180
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3181
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3182
    iput p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3183
    iput p5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3184
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz p3, :cond_1a

    .line 3185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadDisplayCutout(II)Landroid/view/DisplayCutout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    .line 3186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadRoundedCorners(II)Landroid/view/RoundedCorners;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    .line 3190
    :cond_1a
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2f

    .line 3192
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getBaseDensityFromRatio()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3195
    :cond_2f
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez p1, :cond_58

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le p2, p1, :cond_58

    int-to-float p3, p1

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 3197
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3198
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3199
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3200
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3201
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-nez p1, :cond_58

    .line 3204
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3212
    :cond_58
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 3213
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->invalidate()V

    :cond_6b
    return-void
.end method

.method public final updateBaseDisplayMetricsIfNeeded(Landroid/view/DisplayInfo;)V
    .registers 15

    .line 3091
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3092
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    .line 3093
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_16

    const/4 v5, 0x3

    if-ne v2, v5, :cond_14

    goto :goto_16

    :cond_14
    move v2, v3

    goto :goto_17

    :cond_16
    :goto_16
    move v2, v4

    :goto_17
    if-eqz v2, :cond_1c

    .line 3095
    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1e

    :cond_1c
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_1e
    if-eqz v2, :cond_23

    .line 3096
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_25

    :cond_23
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3097
    :goto_25
    iget v6, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 3098
    iget v7, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 3099
    iget v8, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 3100
    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v9, :cond_32

    .line 3101
    sget-object v9, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_34

    :cond_32
    iget-object v9, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 3102
    :goto_34
    iget-object v10, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 3103
    iget-object v11, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 3104
    iget-object v1, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 3106
    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v12, v5, :cond_6c

    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v12, v2, :cond_6c

    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne v12, v6, :cond_6c

    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    cmpl-float v12, v12, v7

    if-nez v12, :cond_6c

    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    cmpl-float v12, v12, v8

    if-nez v12, :cond_6c

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3111
    invoke-static {v12, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3112
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    .line 3113
    invoke-static {v12, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v3

    .line 3114
    :cond_6c
    :goto_6c
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v4, :cond_76

    if-nez v12, :cond_d6

    :cond_76
    if-nez v12, :cond_89

    .line 3121
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 3123
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->physicalDisplayChanged()V

    .line 3124
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->physicalDisplayChanged()V

    .line 3128
    :cond_89
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3129
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3130
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3131
    iput v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3132
    iput v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3133
    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3134
    iput-object v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3135
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    .line 3136
    iput-object v10, p0, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 3139
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_a1

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :cond_a1
    if-eqz v1, :cond_a5

    .line 3140
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3141
    :cond_a5
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v3, :cond_ab

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_ab
    move v3, v6

    if-eqz v1, :cond_b0

    .line 3142
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    :cond_b0
    move v4, v7

    if-eqz v1, :cond_b5

    .line 3143
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    :cond_b5
    move-object v0, p0

    move v1, v5

    move v5, v8

    .line 3139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3145
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    if-nez v12, :cond_c7

    .line 3151
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 3154
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    if-nez v12, :cond_d6

    .line 3157
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->physicalDisplayUpdated()V

    .line 3158
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    invoke-virtual {v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplayContentDisplayPropertiesPostChanged()V

    :cond_d6
    return-void
.end method

.method public updateDecorViewGestureIntercepted(Landroid/os/IBinder;Z)V
    .registers 7

    .line 6108
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 6110
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    .line 6111
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/IDecorViewGestureListener;

    .line 6112
    invoke-interface {v1, p1, p2}, Landroid/view/IDecorViewGestureListener;->onInterceptionChanged(Landroid/os/IBinder;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v1

    .line 6114
    const-string v2, "WindowManager"

    const-string v3, "Failed to notify DecorViewGestureListener"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6117
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .registers 12

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    move v4, v1

    if-eqz v4, :cond_13

    .line 2350
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_11
    move v5, v1

    goto :goto_16

    :cond_13
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_11

    :goto_16
    if-eqz v4, :cond_1c

    .line 2351
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1a
    move v6, v1

    goto :goto_1f

    :cond_1c
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1a

    .line 2354
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;

    move-result-object v1

    .line 2355
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v2

    .line 2356
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayShapeForRotation(I)Landroid/view/DisplayShape;

    move-result-object v3

    .line 2358
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v0, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 2359
    iput v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2360
    iput v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2361
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v0, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2362
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput v0, v7, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 2363
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iput v0, v7, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 2364
    iput v5, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 2365
    iput v6, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 2366
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_4f

    .line 2367
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v9, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v0, v9, v8}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2370
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_58

    move-object v1, v8

    :cond_58
    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2371
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v2, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 2372
    iput-object v3, v0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 2373
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 2374
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_73

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_7d

    .line 2377
    :cond_73
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 2380
    :goto_7d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v9, 0x0

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    .line 2383
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setDisplayInfoOverride()V

    .line 2385
    iget-boolean p0, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_9a

    .line 2386
    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, v2, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p0, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p0

    iput p0, v2, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 2390
    :cond_9a
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 2392
    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public updateDisplayAreaOrganizers()V
    .registers 2

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3452
    :cond_7
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateDisplayFrames(Z)V
    .registers 6

    .line 3026
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(Lcom/android/server/wm/DisplayFrames;III)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3028
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->onDisplayFramesUpdated(Z)V

    :cond_15
    return-void
.end method

.method public updateDisplayFrames(Lcom/android/server/wm/DisplayFrames;III)Z
    .registers 13

    .line 3034
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Landroid/view/DisplayCutout;

    move-result-object v4

    .line 3035
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v5

    .line 3036
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v6

    .line 3037
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayShapeForRotation(I)Landroid/view/DisplayShape;

    move-result-object v7

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 3033
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    move-result p0

    return p0
.end method

.method public updateDisplayInfo(Landroid/view/DisplayInfo;)V
    .registers 5

    .line 2998
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded(Landroid/view/DisplayInfo;)V

    .line 3002
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    .line 3004
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 3007
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public updateDisplayOverrideConfigurationLocked()Z
    .registers 6

    .line 6312
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 6313
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 6315
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6317
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6315
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6319
    invoke-static {v0}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6320
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method public updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 7

    .line 6333
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 6336
    :try_start_8
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_17

    .line 6340
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, -0x2710

    invoke-virtual {v1, p1, v0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result p1

    goto :goto_1d

    :catchall_15
    move-exception p1

    goto :goto_25

    .line 6344
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    move-result p1

    goto :goto_1d

    :cond_1c
    move p1, v0

    :goto_1d
    if-nez p3, :cond_2b

    .line 6349
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_15

    goto :goto_2b

    .line 6352
    :goto_25
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6353
    throw p1

    .line 6352
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz p1, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method

.method public updateFocusedWindowLocked(IZI)Z
    .registers 14

    .line 4019
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4022
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4023
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4024
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x1e6bfea8ee3eccc1L    # -1.1250228363483395E162

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, v1, p3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3a
    return v1

    .line 4027
    :cond_3b
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4028
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v2, v0, :cond_44

    return v1

    .line 4032
    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6a

    .line 4034
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4035
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eq v2, v5, :cond_54

    move v2, v4

    goto :goto_55

    :cond_54
    move v2, v1

    :goto_55
    if-eq p1, v4, :cond_5c

    if-eq p1, v3, :cond_5c

    .line 4040
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_5c
    if-eqz v2, :cond_6b

    .line 4044
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4045
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4046
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    move v2, v1

    .line 4050
    :cond_6b
    :goto_6b
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean p3, p3, v4

    if-eqz p3, :cond_9d

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x4

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {p3, v5, v6, v8}, [Ljava/lang/Object;

    move-result-object p3

    const-wide v5, 0x2b0988e340a038f8L    # 2.280145332301628E-101

    const/16 v7, 0x10

    invoke-static {v9, v5, v6, v7, p3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4052
    :cond_9d
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4053
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b7

    .line 4056
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4057
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4059
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 4063
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v5, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 4067
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5, p3, v0}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 4068
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/BackNavigationController;->onFocusChanged(Lcom/android/server/wm/WindowState;)V

    const/4 v5, 0x2

    if-eqz v2, :cond_d7

    .line 4070
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq p3, v2, :cond_d7

    if-ne p1, v5, :cond_d2

    .line 4073
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_d7

    :cond_d2
    if-ne p1, v3, :cond_d7

    .line 4077
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_d7
    :goto_d7
    if-eq p1, v4, :cond_e0

    .line 4083
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 4086
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 4091
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    if-ne p1, v5, :cond_ee

    .line 4094
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4101
    :cond_ee
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 4102
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10c
    return v4
.end method

.method public updateImeControlTarget(Z)V
    .registers 8

    .line 4794
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 4795
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 4796
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x18ffa3e0bbd8c8abL    # -1.423661301604474E188

    invoke-static {v2, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4797
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 4801
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v1, :cond_2e

    goto :goto_30

    :cond_2e
    if-eqz p1, :cond_33

    .line 4803
    :goto_30
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 4806
    :cond_33
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1}, Lcom/android/server/wm/InsetsControlTarget;->asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 4807
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    .line 4809
    :goto_43
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 7

    .line 4767
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eq v0, p1, :cond_59

    .line 4768
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x7b6be0eadc715L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4769
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 4770
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4771
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v2

    .line 4770
    invoke-virtual {v0, v2}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 4776
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v2, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4d

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 4779
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4778
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v1, 0x1

    .line 4780
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 4782
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onImeInputTargetChanged(Lcom/android/server/wm/InputTarget;)V

    :cond_59
    return-void
.end method

.method public updateImeParent()V
    .registers 8

    .line 4817
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 4823
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    .line 4824
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    return-void

    .line 4828
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4830
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 4831
    :cond_18
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0xc4903c02a853be8L    # 1.7469000240458983E-249

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_32
    if-eqz v1, :cond_6c

    .line 4832
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eq v1, v2, :cond_6c

    .line 4833
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    .line 4834
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    .line 4835
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4836
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_54

    const/16 v0, 0x7d03

    .line 4837
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4841
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4842
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 4844
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4846
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_92

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_92

    .line 4850
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastRelativeLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 4851
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v0, v1, :cond_92

    .line 4852
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4853
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastRelativeLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eq v0, v1, :cond_92

    .line 4854
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_92
    return-void
.end method

.method public updateKeepClearAreas()V
    .registers 4

    .line 6121
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6122
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6123
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    .line 6125
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6126
    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    .line 6127
    :cond_1f
    :goto_1f
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 6128
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6129
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchKeepClearAreasChanged(Lcom/android/server/wm/DisplayContent;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public updateOrientation()Z
    .registers 2

    const/4 v0, 0x0

    .line 1773
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p0

    return p0
.end method

.method public final updateOrientation(Z)Z
    .registers 6

    .line 1811
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, v0, :cond_19

    .line 1815
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 1816
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationReversionController;->isRotationReversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1817
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationReversionController;->updateForNoSensorOverride()V

    :cond_19
    if-eqz v2, :cond_20

    .line 1820
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_51

    .line 1822
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1823
    iget v3, v2, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    if-eq v1, v3, :cond_3a

    .line 1824
    iput v1, v2, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 1825
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1826
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRequestedOrientationChanged(II)V

    .line 1829
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_46

    :cond_45
    move-object v2, v0

    :goto_46
    if-eqz v2, :cond_51

    const/4 v3, 0x1

    .line 1830
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p0, 0x0

    return p0

    .line 1836
    :cond_51
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result p0

    return p0
.end method

.method public updateOrientationAndComputeConfig(Z)Landroid/content/res/Configuration;
    .registers 4

    .line 1784
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1789
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1790
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 1791
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    return-object p1

    :cond_15
    return-object v1
.end method

.method public updatePrivacyIndicatorBounds([Landroid/graphics/Rect;)V
    .registers 3

    .line 3011
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3013
    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3014
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 3015
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(Z)V

    :cond_12
    return-void
.end method

.method public updateRecording()V
    .registers 2

    .line 6974
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->isContentRecordingSessionSet()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6975
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setDisplayMirroring()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 6980
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->updateRecording()V

    return-void
.end method

.method public updateRotationUnchecked()Z
    .registers 2

    .line 2279
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result p0

    return p0
.end method

.method public updateShouldShowSystemDecorations()V
    .registers 3

    .line 3399
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->canHostTasks()Z

    move-result v0

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->allowContentModeSwitch()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 3402
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 3403
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 3404
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowSystemDecorsInternalLocked(Lcom/android/server/wm/DisplayContent;Z)V

    :cond_1d
    return-void
.end method

.method public updateSystemGestureExclusion()Z
    .registers 8

    .line 5867
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 5872
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5873
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 5876
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2e

    if-eqz v2, :cond_22

    .line 5894
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v1

    .line 5879
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5880
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_30

    .line 5881
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_5d

    :cond_30
    const/4 v1, 0x0

    .line 5882
    :goto_31
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_2e

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_39
    if-ltz v2, :cond_54

    .line 5884
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5885
    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_48} :catch_49
    .catchall {:try_start_3b .. :try_end_48} :catchall_2e

    goto :goto_51

    :catch_49
    move-exception v4

    .line 5888
    :try_start_4a
    const-string v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 5891
    :cond_54
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_2e

    .line 5894
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v3

    :goto_5d
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5895
    throw p0
.end method

.method public updateSystemGestureExclusionLimit()V
    .registers 3

    .line 3047
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 3049
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    return-void
.end method

.method public updateWindowsForAnimator()V
    .registers 3

    .line 5128
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5129
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_d

    .line 5130
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->updateTargetWindows()V

    :cond_d
    return-void
.end method
