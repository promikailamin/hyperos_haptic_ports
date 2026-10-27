.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
.super Ljava/lang/Object;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityWindowsPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityWindow"
.end annotation


# instance fields
.field private mDisplayId:I

.field private mIgnoreDuetoRecentsAnimation:Z

.field private mInputConfig:I

.field private mIsFocused:Z

.field private mIsPIPMenu:Z

.field private final mLetterBoxBounds:Landroid/graphics/Region;

.field private mPrivateFlags:I

.field private mShouldMagnify:Z

.field private final mTouchableRegionInScreen:Landroid/graphics/Region;

.field private final mTouchableRegionInWindow:Landroid/graphics/Region;

.field private mType:I

.field private mWindow:Landroid/view/IWindow;

.field private mWindowInfo:Landroid/view/WindowInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 612
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 613
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    return-void
.end method

.method private static getLetterBoxBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 5
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 864
    .local v0, "letterboxInsets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 866
    .local v1, "nonLetterboxRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 868
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 869
    return-void
.end method

.method private static getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 8
    .param p0, "shouldMagnify"    # Z
    .param p1, "inRegion"    # Landroid/graphics/Region;
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "inverseMatrix"    # Landroid/graphics/Matrix;
    .param p5, "displayMatrix"    # Landroid/graphics/Matrix;

    .line 803
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 804
    .local v0, "touchRegion":Landroid/graphics/Region;
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 805
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 807
    invoke-static {p0, v0, p2, p4, p5}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 809
    return-void
.end method

.method private static getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 6
    .param p0, "shouldMagnify"    # Z
    .param p1, "inRegion"    # Landroid/graphics/Region;
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "inverseMatrix"    # Landroid/graphics/Matrix;
    .param p4, "displayMatrix"    # Landroid/graphics/Matrix;

    .line 824
    if-eqz p0, :cond_8

    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    invoke-virtual {p4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 825
    invoke-virtual {p2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 826
    return-void

    .line 829
    :cond_12
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4, p3, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {p1, v0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 839
    return-void
.end method

.method private static getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;
    .registers 5
    .param p0, "window"    # Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 842
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 843
    .local v0, "windowInfo":Landroid/view/WindowInfo;
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 844
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 845
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 846
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v1, v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 848
    iput-boolean v3, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 852
    iget v1, v0, Landroid/view/WindowInfo;->type:I

    const/16 v3, 0x7f2

    if-ne v1, v3, :cond_2e

    .line 853
    const-string v1, "Splitscreen Divider"

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    goto :goto_38

    .line 854
    :cond_2e
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-eqz v1, :cond_38

    .line 855
    const-string v1, "Picture-in-Picture menu"

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 857
    iput-boolean v2, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 859
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .registers 21
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "magnificationInverseMatrix"    # Landroid/graphics/Matrix;
    .param p3, "pipIBinder"    # Landroid/os/IBinder;
    .param p4, "displayMatrix"    # Landroid/graphics/Matrix;

    .line 626
    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v9

    .line 627
    .local v9, "window":Landroid/view/IWindow;
    if-eqz v9, :cond_1b

    move-object/from16 v10, p0

    iget-object v1, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 628
    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 627
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_1e

    .line 628
    :cond_1b
    move-object/from16 v10, p0

    const/4 v1, 0x0

    :goto_1e
    move-object v11, v1

    .line 630
    .local v11, "windowState":Lcom/android/server/wm/WindowState;
    new-instance v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    invoke-direct {v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    move-object v12, v1

    .line 632
    .local v12, "instance":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    invoke-virtual/range {p1 .. p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    .line 633
    iget v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    iput v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 634
    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 635
    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    .line 639
    const/4 v14, 0x0

    if-eqz v11, :cond_4f

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_50

    :cond_4f
    move v1, v14

    :goto_50
    iput v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 641
    const/4 v1, 0x1

    if-eqz v11, :cond_5d

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5d

    move v2, v1

    goto :goto_5e

    :cond_5d
    move v2, v14

    :goto_5e
    iput-boolean v2, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    .line 642
    if-eqz v11, :cond_6b

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_6b

    :cond_69
    move v2, v14

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v2, v1

    :goto_6c
    iput-boolean v2, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v15

    .line 645
    .local v15, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v11, :cond_7d

    if-eqz v15, :cond_7d

    .line 646
    invoke-virtual {v15, v11}, Lcom/android/server/wm/RecentsAnimationController;->shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_7d

    goto :goto_7e

    :cond_7d
    move v1, v14

    :goto_7e
    iput-boolean v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    .line 649
    if-eqz v11, :cond_8d

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 650
    iget-object v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-static {v11, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getLetterBoxBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    .line 653
    :cond_8d
    new-instance v4, Landroid/graphics/Rect;

    iget v1, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    iget v2, v0, Landroid/view/InputWindowHandle;->frameTop:I

    iget v3, v0, Landroid/view/InputWindowHandle;->frameRight:I

    iget v5, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 656
    .local v4, "windowFrame":Landroid/graphics/Rect;
    iget-boolean v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v2, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 659
    iget-boolean v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v2, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 662
    if-eqz v11, :cond_b7

    .line 663
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v1

    goto :goto_bb

    :cond_b7
    invoke-static {v12}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;

    move-result-object v1

    :goto_bb
    iput-object v1, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 667
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 668
    .local v1, "inverseTransform":Landroid/graphics/Matrix;
    iget-object v2, v0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 669
    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 670
    iget-object v2, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object v2, v2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 673
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    .local v2, "magnificationSpecMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->shouldMagnify()Z

    move-result v3

    if-eqz v3, :cond_119

    if-eqz v7, :cond_119

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_119

    .line 676
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 677
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 678
    iget-object v3, v12, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object v3, v3, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 679
    .local v3, "spec":Landroid/view/MagnificationSpec;
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object v5

    aget v5, v5, v14

    iput v5, v3, Landroid/view/MagnificationSpec;->scale:F

    .line 680
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    iput v5, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 681
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object v5

    const/4 v6, 0x5

    aget v5, v5, v6

    iput v5, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 682
    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_119

    .line 683
    :cond_110
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "can\'t find spec"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_119
    :goto_119
    return-object v12
.end method

.method static synthetic lambda$getUnMagnifiedTouchableRegion$0(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 10
    .param p0, "displayMatrix"    # Landroid/graphics/Matrix;
    .param p1, "inverseMatrix"    # Landroid/graphics/Matrix;
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 831
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 833
    .local v0, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 834
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 836
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 838
    return-void
.end method


# virtual methods
.method public getPrivateFlag()I
    .registers 2

    .line 717
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    return v0
.end method

.method public getTouchableRegionInScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 695
    return-void
.end method

.method public getTouchableRegionInWindow(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 703
    return-void
.end method

.method public getType()I
    .registers 2

    .line 709
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    return v0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    return-object v0
.end method

.method public ignoreRecentsAnimationForAccessibility()Z
    .registers 2

    .line 760
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 753
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    return v0
.end method

.method public isPIPMenu()Z
    .registers 2

    .line 792
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    return v0
.end method

.method public isTouchable()Z
    .registers 2

    .line 774
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isTrustedOverlay()Z
    .registers 2

    .line 767
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUntouchableNavigationBar()Z
    .registers 3

    .line 781
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_8

    .line 782
    const/4 v0, 0x0

    return v0

    .line 785
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setLetterBoxBoundsIfNeeded(Landroid/graphics/Region;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Region;

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 735
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 738
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 739
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public shouldMagnify()Z
    .registers 2

    .line 746
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A11yWindow=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputConfig=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 875
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", privateFlag=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 877
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoreDuetoRecentsAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrustedOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 881
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", letterBoxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPIPMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "builder":Ljava/lang/String;
    return-object v0
.end method
