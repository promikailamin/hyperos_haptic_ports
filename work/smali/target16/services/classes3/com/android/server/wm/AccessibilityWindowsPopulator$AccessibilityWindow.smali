.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
.super Ljava/lang/Object;
.source "AccessibilityWindowsPopulator.java"


# instance fields
.field public mDisplayId:I

.field public mInputConfig:I

.field public mIsFocused:Z

.field public mIsPIPMenu:Z

.field public mPrivateFlags:I

.field public mShouldMagnify:Z

.field public mSystemBarInsetFrame:Landroid/graphics/Rect;

.field public final mTouchableRegionInScreen:Landroid/graphics/Region;

.field public final mTouchableRegionInWindow:Landroid/graphics/Region;

.field public mType:I

.field public mWindow:Landroid/os/IBinder;

.field public mWindowInfo:Landroid/view/WindowInfo;


# direct methods
.method public static synthetic $r8$lambda$mgve4lmpe0TAPbOqbfYHFvU6UUM(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 6

    .line 875
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 877
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 878
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 880
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget p3, v0, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 664
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public static getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 7

    .line 847
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 848
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 849
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 851
    invoke-static {p0, v0, p2, p4, p5}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 5

    if-eqz p0, :cond_8

    .line 868
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_8
    invoke-virtual {p4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 869
    invoke-virtual {p2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void

    .line 873
    :cond_12
    new-instance p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4, p3, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {p1, p0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;
    .registers 3

    .line 886
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 887
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 888
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 889
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 890
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 893
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    iput-boolean p0, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    return-object v0
.end method

.method public static initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;Landroid/os/IBinder;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .registers 15

    .line 678
    invoke-virtual {p1}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object p5

    if-eqz p5, :cond_f

    .line 679
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 681
    :goto_10
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    invoke-direct {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    .line 683
    iput-object p5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    .line 684
    iget v1, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 685
    iget v1, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 686
    iget v1, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_2f

    .line 687
    invoke-interface {p5, p3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f

    move p3, v1

    goto :goto_30

    :cond_2f
    move p3, v2

    :goto_30
    iput-boolean p3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-eqz p0, :cond_39

    .line 690
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_3a

    :cond_39
    move p3, v2

    :goto_3a
    iput p3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    if-eqz p0, :cond_46

    .line 693
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p3

    if-eqz p3, :cond_46

    move p3, v1

    goto :goto_47

    :cond_46
    move p3, v2

    :goto_47
    iput-boolean p3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    if-eqz p0, :cond_53

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result p3

    if-eqz p3, :cond_52

    goto :goto_53

    :cond_52
    move v1, v2

    :cond_53
    :goto_53
    iput-boolean v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 697
    new-instance v6, Landroid/graphics/Rect;

    iget-object p3, p1, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 698
    iget-boolean v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v4, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    move-object v7, p2

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 701
    iget-boolean p2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object p3, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object p4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-static {p2, p3, p4, v7, v8}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    if-eqz p0, :cond_77

    .line 705
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object p2

    goto :goto_7b

    :cond_77
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;

    move-result-object p2

    :goto_7b
    iput-object p2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 713
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 714
    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 715
    invoke-virtual {p2, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 716
    iget-object p1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 719
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 720
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->shouldMagnify()Z

    move-result p2

    if-eqz p2, :cond_d9

    if-eqz v7, :cond_d9

    .line 721
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p2

    if-nez p2, :cond_d9

    .line 722
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 723
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 724
    iget-object p1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p1, p1, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 725
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    aget p2, p2, v2

    iput p2, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 726
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    const/4 p3, 0x2

    aget p2, p2, p3

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 727
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    const/4 p3, 0x5

    aget p2, p2, p3

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_d9

    .line 729
    :cond_d0
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "can\'t find spec"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    if-eqz p0, :cond_f1

    .line 734
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 736
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_f1

    .line 738
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    :cond_f1
    return-object v0
.end method


# virtual methods
.method public getSystemBarInsetsFrame()Landroid/graphics/Rect;
    .registers 1

    .line 836
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTouchableRegionInScreen(Landroid/graphics/Region;)V
    .registers 2

    .line 749
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getTouchableRegionInWindow(Landroid/graphics/Region;)V
    .registers 2

    .line 757
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getType()I
    .registers 1

    .line 764
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    return p0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .registers 1

    .line 779
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    return-object p0
.end method

.method public isFocused()Z
    .registers 1

    .line 795
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    return p0
.end method

.method public isPIPMenu()Z
    .registers 1

    .line 827
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    return p0
.end method

.method public isTouchable()Z
    .registers 1

    .line 809
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isTrustedOverlay()Z
    .registers 1

    .line 802
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isUntouchableNavigationBar()Z
    .registers 3

    .line 816
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 820
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public shouldMagnify()Z
    .registers 1

    .line 786
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 900
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "(no window token)"

    .line 901
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A11yWindow=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inputConfig=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 903
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", privateFlag=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 905
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", focused="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldMagnify="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTrustedOverlay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", regionInScreen="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", touchableRegion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPIPMenu="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", windowInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
