.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private blacklist isBanSurfaceSize:Z

.field private blacklist mCurDisplay:Landroid/view/Display;

.field private blacklist mCurMetricsBounds:Landroid/graphics/Rect;

.field private blacklist mDisplayRatio:[F

.field private blacklist mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private blacklist mIsFakeTouchForScroll:Z

.field private blacklist mIsFirstMove:Z

.field private blacklist mIsRecyclerView:Z

.field private blacklist mIsReverseLayout:Z

.field private blacklist mLastCaptureBottom:I

.field private blacklist mMainScrollView:Landroid/view/View;

.field private blacklist mMainScrollViewTop:I

.field private blacklist mMaxMetricsBounds:Landroid/graphics/Rect;

.field private blacklist mNavBarHeight:I

.field private blacklist mNeedUseMultiTouch:Z

.field private blacklist mPrevScrolledY:I

.field private blacklist mPrevScrolledYChildView:Landroid/view/View;

.field private blacklist mScreenRect:Landroid/graphics/Rect;

.field private blacklist mScrollbarFadingEnabled:Z

.field private blacklist mTempLoc:[I

.field private blacklist mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private blacklist mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private blacklist mTopActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalScrollDistance:I

.field private blacklist mTouchY:I

.field private blacklist mVerticalEdge:I

.field private blacklist mVerticalScrollBarEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainScrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastCallback(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstart(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v0, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    .line 210
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    .line 218
    new-array v1, v0, [F

    fill-array-data v1, :array_52

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    .line 476
    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 477
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_51

    .line 480
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 481
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 482
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 483
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 484
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 486
    .end local v1    # "i":I
    :cond_51
    return-void

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist atBlackList(Landroid/view/View;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isSurfaceView(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 386
    :cond_c
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 387
    .local v0, "curTopActivity":Landroid/app/Activity;
    const-string v2, "LongScreenshotUtils"

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.vipaccount.newbrowser.NormalWebActivity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 389
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mUrl"

    invoke-static {v0, v3, v4}, Landroid/media/ReflectUtil;->getObjectDeclaredField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "web.vip.miui.com/page/info/mio/mio/message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_44} :catch_48

    if-eqz v4, :cond_47

    .line 391
    return v1

    .line 395
    .end local v3    # "url":Ljava/lang/String;
    :cond_47
    goto :goto_4e

    .line 393
    :catch_48
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "NormalWebActivity mUrl Reflect error"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.taobao.idlefish.powercontainer.ui.PowerNestedParentRecyclerView"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    if-eqz v0, :cond_67

    .line 398
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isYouKuSquare(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_95

    .line 402
    :cond_67
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_93

    .line 403
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 404
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_93

    .line 405
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 406
    .local v4, "lastChildView":Landroid/view/View;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.shopee.app.ui.home.native_home.cell.ReactNativeCell"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 407
    const-string v5, "at atBlackList com.shopee.app.ui.home.native_home.cell.ReactNativeCell"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v1

    .line 412
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "lastChildView":Landroid/view/View;
    :cond_93
    const/4 v1, 0x0

    return v1

    .line 399
    :cond_95
    :goto_95
    return v1
.end method

.method private blacklist atWhiteList(Landroid/view/View;)Z
    .registers 5
    .param p1, "currView"    # Landroid/view/View;

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "rtn":Z
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.smartmijia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.react.views.scroll.ReactScrollView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 727
    const/4 v0, 0x1

    .line 729
    :cond_26
    return v0
.end method

.method private blacklist broadcastCallback()V
    .registers 16

    .line 515
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->canScrollVertically(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 516
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lt v0, v3, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 519
    .local v0, "isEnd":Z
    :goto_1a
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v3, :cond_34

    .line 520
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 521
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    .local v3, "scrolledY":I
    goto :goto_49

    .line 523
    .end local v3    # "scrolledY":I
    :cond_34
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 524
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->getRealScrollY(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int/2addr v3, v4

    .line 526
    .restart local v3    # "scrolledY":I
    :goto_49
    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v4, v3

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 527
    const-string v4, "LongScreenshotUtils"

    if-nez v0, :cond_5a

    if-nez v3, :cond_5a

    .line 528
    const/4 v0, 0x1

    .line 529
    const-string v5, "scrolledY == 0 isEnd:true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_5a
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->calculateScrollViewTop()V

    .line 534
    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 536
    .local v5, "headerViewAndScrollViewHeight":I
    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int v6, v5, v6

    .line 537
    .local v6, "moveRectBottomLocBottom":I
    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    if-nez v7, :cond_6f

    .line 538
    sub-int v7, v6, v3

    .local v7, "moveRectBottomLocTop":I
    goto :goto_73

    .line 540
    .end local v7    # "moveRectBottomLocTop":I
    :cond_6f
    sub-int/2addr v7, v3

    .line 541
    .restart local v7    # "moveRectBottomLocTop":I
    if-gt v6, v7, :cond_73

    .line 542
    move v6, v5

    .line 545
    :cond_73
    :goto_73
    iput v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    .line 547
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "IsEnd"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    invoke-direct {p0, v7}, Lmiui/util/LongScreenshotUtils$ContentPort;->transformH(I)I

    move-result v9

    const-string v10, "TopLoc"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    invoke-direct {p0, v6}, Lmiui/util/LongScreenshotUtils$ContentPort;->transformH(I)I

    move-result v9

    const-string v10, "BottomLoc"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    iget v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0, v9}, Lmiui/util/LongScreenshotUtils$ContentPort;->transformH(I)I

    move-result v9

    .line 552
    .local v9, "viewTop":I
    const-string v10, "ViewTop"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v10

    invoke-direct {p0, v10}, Lmiui/util/LongScreenshotUtils$ContentPort;->transformH(I)I

    move-result v10

    add-int/2addr v10, v9

    const-string v11, "ViewBottom"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    if-eqz v0, :cond_13c

    .line 556
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNavigationBarImmersive()Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 557
    iget-object v10, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurMetricsBounds:Landroid/graphics/Rect;

    if-eqz v10, :cond_b9

    goto :goto_bb

    :cond_b9
    iget-object v10, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    :goto_bb
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v10, v11

    .local v10, "visibleHeight":I
    goto :goto_cc

    .line 559
    .end local v10    # "visibleHeight":I
    :cond_c3
    iget-object v10, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v10, v11

    .line 561
    .restart local v10    # "visibleHeight":I
    :goto_cc
    iget-object v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_d8

    if-ge v7, v6, :cond_d8

    move v11, v2

    goto :goto_d9

    :cond_d8
    move v11, v1

    .line 562
    .local v11, "shouldScrollMore":Z
    :goto_d9
    if-eqz v11, :cond_13c

    .line 563
    iget-object v12, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v10

    .line 564
    .local v12, "scrollOffset":I
    invoke-direct {p0, v12}, Lmiui/util/LongScreenshotUtils$ContentPort;->transformH(I)I

    move-result v13

    const-string v14, "scroll_offset"

    invoke-virtual {v8, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "viewTop:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " visibleHeight:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " scrollOffset:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isNavigationBarImmersive:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNavigationBarImmersive()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v10    # "visibleHeight":I
    .end local v11    # "shouldScrollMore":Z
    .end local v12    # "scrollOffset":I
    :cond_13c
    iget-object v10, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    .line 569
    .local v10, "activity":Landroid/app/Activity;
    const/4 v11, 0x4

    if-eqz v10, :cond_15a

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_15a

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v12

    and-int/2addr v12, v11

    if-eqz v12, :cond_15a

    move v12, v2

    goto :goto_15b

    :cond_15a
    move v12, v1

    .line 571
    .local v12, "isSplitMode":Z
    :goto_15b
    iget-object v13, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v2, v13, v2

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v14

    if-nez v2, :cond_18a

    aget v1, v13, v1

    cmpl-float v1, v1, v14

    if-nez v1, :cond_18a

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_18a

    if-nez v12, :cond_18a

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsNoBgPackage()Z

    move-result v1

    if-nez v1, :cond_18a

    .line 572
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "CurrentSurfaceControl"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 574
    :cond_18a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1af

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->isBanSurfaceSize:Z

    if-nez v1, :cond_1af

    .line 576
    :try_start_194
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const-string v2, "mSurfaceSize"

    invoke-static {v1, v2}, Landroid/media/ReflectUtil;->getObjectDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 577
    .local v1, "mSurfaceSize":Landroid/graphics/Point;
    const-string v2, "CurrentSurfaceSize"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a7} :catch_1a9

    .line 580
    nop

    .end local v1    # "mSurfaceSize":Landroid/graphics/Point;
    goto :goto_1af

    .line 578
    :catch_1a9
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get size of current surface failed: "

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1af
    :goto_1af
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    if-eqz v0, :cond_1c5

    .line 585
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v1, v11, v13, v14}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    .line 587
    :cond_1c5
    return-void
.end method

.method private blacklist calculateScrollViewTop()V
    .registers 3

    .line 922
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 924
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 925
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-static {v1, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 926
    return-void
.end method

.method private blacklist canScrollVertically(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.compose.ui.platform.AndroidComposeView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 599
    const-string v0, "LongScreenshotUtils"

    const-string v2, "can not run invoke canScrollVertically on background thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return v1

    .line 602
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->atWhiteList(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    move v1, v0

    :cond_27
    return v1
.end method

.method private blacklist checkIsMainScrollView(Landroid/view/View;)Z
    .registers 15
    .param p1, "currView"    # Landroid/view/View;

    .line 733
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->canScrollVertically(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 734
    return v1

    .line 737
    :cond_8
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 738
    .local v0, "minWidth":I
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 739
    .local v2, "minHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const-string v4, " height:"

    const-string v5, "LongScreenshotUtils"

    const/4 v6, 0x1

    if-lt v3, v0, :cond_d8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v3, v2, :cond_2b

    goto/16 :goto_d8

    .line 744
    :cond_2b
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 745
    new-instance v3, Landroid/graphics/Rect;

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v3, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 746
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v8, v7, v1

    aget v7, v7, v6

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v10, v10, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 746
    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 748
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lt v7, v0, :cond_6b

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v7, v2, :cond_5e

    goto :goto_6b

    .line 753
    :cond_5e
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v1, v1, v6

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 754
    invoke-static {p1, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v1

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 755
    return v6

    .line 749
    :cond_6b
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsMainScrollView !intersect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v9, v8, v1

    aget v8, v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    iget-object v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v11, v11, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v8

    xor-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v9, v0, :cond_af

    move v9, v6

    goto :goto_b0

    :cond_af
    move v9, v1

    :goto_b0
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v7, v2, :cond_cb

    goto :goto_cc

    :cond_cb
    move v6, v1

    :goto_cc
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v1

    .line 740
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_d8
    :goto_d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsMainScrollView: width:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lt v7, v0, :cond_eb

    move v7, v6

    goto :goto_ec

    :cond_eb
    move v7, v1

    :goto_ec
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_fb

    goto :goto_fc

    :cond_fb
    move v6, v1

    :goto_fc
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return v1
.end method

.method private blacklist checkIsMayHasBg()Z
    .registers 4

    .line 616
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "mainClsName":Ljava/lang/String;
    const-string v2, "com.miui.notes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 619
    const-string v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_24
    nop

    .line 620
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 621
    const-string v2, "com.tencent.mobileqq.bubble.ChatXListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_35
    nop

    .line 622
    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_46

    :cond_44
    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    .line 618
    :goto_47
    return v2
.end method

.method private blacklist checkIsNoBgPackage()Z
    .registers 4

    .line 606
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "com.miui.home"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v2, "com.mi.android.globallauncher"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    const-string v2, "com.jeejen.family"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v2, "com.jeejen.family.miui"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private blacklist checkNeedFakeTouchForScroll()Z
    .registers 4

    .line 627
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    if-nez v1, :cond_5a

    .line 628
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5a

    .line 631
    :cond_12
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsRecyclerView:Z

    .line 632
    if-nez v0, :cond_59

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_50

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_59

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ucmobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 636
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    :cond_50
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_57

    :cond_56
    goto :goto_59

    .line 640
    :cond_57
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_59
    :goto_59
    return v2

    .line 629
    :cond_5a
    :goto_5a
    return v2
.end method

.method private blacklist dispatchFakeTouchEvent(I)V
    .registers 21
    .param p1, "action"    # I

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 490
    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v2

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 491
    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v2

    iget v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v7, p1

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 496
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 497
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 498
    return-void
.end method

.method private blacklist dispatchMoveAndReset(I)V
    .registers 6
    .param p1, "distance"    # I

    .line 501
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 502
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 503
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 504
    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    goto :goto_29

    .line 506
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 507
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v3

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 508
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 509
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 510
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 512
    :goto_29
    return-void
.end method

.method private blacklist findMainScrollView(Landroid/app/Activity;)Landroid/view/View;
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 665
    const/4 v0, 0x0

    const-string v1, "LongScreenshotUtils"

    if-eqz p1, :cond_6d

    .line 670
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 672
    .local v2, "forceImmersive":Z
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurDisplay:Landroid/view/Display;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurMetricsBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_18

    goto :goto_67

    .line 677
    :cond_18
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurMetricsBounds:Landroid/graphics/Rect;

    .line 678
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 677
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 679
    if-nez v2, :cond_5a

    .line 680
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 681
    .local v0, "degree":I
    if-eqz v0, :cond_35

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    :cond_35
    const/4 v4, 0x1

    :cond_36
    move v1, v4

    .line 682
    .local v1, "isPortrait":Z
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_45

    .line 683
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_5a

    .line 685
    :cond_45
    if-eqz v1, :cond_51

    .line 686
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_5a

    .line 688
    :cond_51
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 692
    .end local v0    # "degree":I
    .end local v1    # "isPortrait":Z
    :cond_5a
    :goto_5a
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 673
    :cond_67
    :goto_67
    const-string v3, "display or metrics initialized failed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-object v0

    .line 694
    .end local v2    # "forceImmersive":Z
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get top activity in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-object v0
.end method

.method private blacklist findScrollView(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "currView"    # Landroid/view/View;

    .line 700
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_36

    .line 703
    :cond_a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 704
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 705
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->atWhiteList(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 706
    return-object v1

    .line 708
    :cond_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_2e

    .line 709
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 710
    .local v3, "result":Landroid/view/View;
    if-eqz v3, :cond_2b

    .line 711
    return-object v3

    .line 708
    .end local v3    # "result":Landroid/view/View;
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 716
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2e
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 717
    return-object p1

    .line 719
    :cond_35
    return-object v0

    .line 701
    :cond_36
    :goto_36
    return-object v0
.end method

.method private static blacklist findVisibleTop(Landroid/view/View;I)I
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "absTop"    # I

    .line 759
    const/4 v0, 0x0

    .line 761
    .local v0, "offset":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_16

    .line 763
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Landroid/view/View;

    goto :goto_1

    .line 768
    :cond_16
    if-gez v0, :cond_19

    .line 769
    sub-int/2addr p1, v0

    .line 771
    :cond_19
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private blacklist finish()V
    .registers 3

    .line 458
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 460
    :cond_5
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 462
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScrollbarFadingEnabled:Z

    if-eqz v0, :cond_20

    .line 463
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 466
    :cond_20
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_27

    .line 467
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 470
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 471
    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    .line 474
    return-void
.end method

.method private blacklist getDisplayRatio(Landroid/app/Activity;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;

    .line 349
    const-string v0, "LongScreenshotUtils"

    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 350
    .local v1, "wManager":Landroid/view/IWindowManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 351
    .local v2, "windowManager":Landroid/view/WindowManager;
    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 352
    .local v3, "dManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_b9

    if-eqz v3, :cond_b9

    if-nez v2, :cond_1a

    goto/16 :goto_b9

    .line 359
    :cond_1a
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 360
    .local v4, "targetPoint":Landroid/graphics/Point;
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 363
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurMetricsBounds:Landroid/graphics/Rect;

    .line 364
    invoke-virtual {v3, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurDisplay:Landroid/view/Display;

    .line 365
    invoke-interface {v2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    .line 366
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eqz v6, :cond_b8

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_b8

    .line 367
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v5

    .line 368
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v6, v8

    .line 369
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v7, v6, v5

    aget v9, v6, v8

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_90

    .line 370
    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    aput v7, v6, v5

    .line 371
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    aput v7, v6, v8

    .line 373
    :cond_90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current ratio width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v1    # "wManager":Landroid/view/IWindowManager;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    .end local v3    # "dManager":Landroid/hardware/display/DisplayManager;
    .end local v4    # "targetPoint":Landroid/graphics/Point;
    :cond_b8
    goto :goto_c5

    .line 353
    .restart local v1    # "wManager":Landroid/view/IWindowManager;
    .restart local v2    # "windowManager":Landroid/view/WindowManager;
    .restart local v3    # "dManager":Landroid/hardware/display/DisplayManager;
    :cond_b9
    :goto_b9
    const-string v4, "IWindowManager or DisplayManager or WindowManager is null "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_be} :catch_bf

    .line 354
    return-void

    .line 375
    .end local v1    # "wManager":Landroid/view/IWindowManager;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    .end local v3    # "dManager":Landroid/hardware/display/DisplayManager;
    :catch_bf
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "getDisplayRatio error: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c5
    return-void
.end method

.method private blacklist getExpectScrollDistance()I
    .registers 3

    .line 783
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 785
    .local v0, "h":I
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isDeviceLandscape()Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_13

    :cond_11
    div-int/lit8 v1, v0, 0x2

    :goto_13
    return v1
.end method

.method private blacklist getRealScrollY(Landroid/view/View;)I
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 873
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 874
    return v0

    .line 877
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 879
    .local v1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2f

    const-string v2, "com.android.browser.BrowserWebView"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 880
    const-string v2, "getContentScrollY"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 881
    .local v2, "getContentScrollY":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 882
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_30

    return v0

    .line 886
    .end local v1    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getContentScrollY":Ljava/lang/reflect/Method;
    :cond_2f
    goto :goto_49

    .line 884
    :catch_30
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealScrollY exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongScreenshotUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method private blacklist getScrollViewVisibleHeight()I
    .registers 4

    .line 911
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 912
    .local v0, "height":I
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_12

    .line 913
    return v0

    .line 915
    :cond_12
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static blacklist getTopActivity()Landroid/app/Activity;
    .registers 9

    .line 644
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 646
    .local v0, "activityThread":Landroid/app/ActivityThread;
    :try_start_4
    const-class v1, Landroid/app/ActivityThread;

    const-string v2, "mActivities"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 647
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 649
    .local v3, "map":Landroid/util/ArrayMap;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 650
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 651
    .local v5, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 652
    .local v6, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 653
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 654
    .local v7, "activity":Landroid/app/Activity;
    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v8
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_3f

    if-eqz v8, :cond_3b

    .line 655
    return-object v7

    .line 649
    .end local v5    # "activityClientRecord":Ljava/lang/Object;
    .end local v6    # "activityField":Ljava/lang/reflect/Field;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 660
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "map":Landroid/util/ArrayMap;
    .end local v4    # "i":I
    :cond_3e
    goto :goto_43

    .line 658
    :catch_3f
    move-exception v1

    .line 659
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_43
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isDeviceLandscape()Z
    .registers 3

    .line 956
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist isInFloatingWindowMode()Z
    .registers 7

    .line 897
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .local v2, "activity":Landroid/app/Activity;
    if-nez v0, :cond_f

    goto :goto_30

    .line 901
    :cond_f
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "windowFloating"

    const-string v5, "attr"

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 903
    .local v0, "windowFloatingAttr":I
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v1

    .line 904
    .local v3, "attrs":[I
    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 905
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 906
    .local v1, "windowFloating":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 907
    return v1

    .line 898
    .end local v0    # "windowFloatingAttr":I
    .end local v1    # "windowFloating":Z
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "attrs":[I
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_30
    :goto_30
    return v1
.end method

.method private blacklist isNavigationBarImmersive()Z
    .registers 4

    .line 590
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_27

    .line 593
    :cond_c
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 591
    :cond_27
    :goto_27
    return v1
.end method

.method private blacklist isNestedScrollView(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "cls"    # Ljava/lang/Class;

    .line 794
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "className":Ljava/lang/String;
    const-string v1, "androidx.core.widget.NestedScrollView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 796
    const-string v1, "miuix.core.widget.NestedScrollView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 797
    const-string v1, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 798
    const-string v1, "com.android.thememanager.settings.superwallpaper.widget.CustomNestedScrollView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_38

    .line 802
    :cond_25
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 803
    const/4 v1, 0x0

    return v1

    .line 805
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 800
    :cond_38
    :goto_38
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isRecyclerView(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "cls"    # Ljava/lang/Class;

    .line 809
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 810
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 811
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix.recyclerview.widget.RecyclerView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_38

    .line 814
    :cond_25
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 815
    const/4 v0, 0x0

    return v0

    .line 817
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 812
    :cond_38
    :goto_38
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isReverseLayout(Landroid/view/ViewGroup;)Z
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "rtn":Z
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsRecyclerView:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 932
    return v2

    .line 934
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 935
    .local v1, "lastChildY":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 936
    .local v2, "firstChildY":I
    if-ge v1, v2, :cond_20

    .line 937
    const/4 v0, 0x1

    .line 939
    :cond_20
    return v0
.end method

.method private blacklist isSplitActivity()Z
    .registers 4

    .line 944
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .local v2, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_29

    .line 945
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_29

    .line 948
    :cond_15
    invoke-static {}, Lmiui/util/LongScreenshotUtils;->inLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1

    .line 946
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_29
    :goto_29
    return v1
.end method

.method private blacklist isSurfaceView(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "cls"    # Ljava/lang/Class;

    .line 821
    if-eqz p1, :cond_22

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 824
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.view.SurfaceView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 825
    const/4 v0, 0x1

    return v0

    .line 827
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isSurfaceView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 822
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isTencentApp()Z
    .registers 3

    .line 789
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist isYouKuSquare(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSquareActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 418
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mViewPager"

    invoke-static {p1, v0, v2}, Landroid/media/ReflectUtil;->getObjectDeclaredField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "viewPager":Ljava/lang/Object;
    const-string v2, "mCurItem"

    invoke-static {v0, v2}, Landroid/media/ReflectUtil;->getObjectDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_30

    .line 420
    .local v2, "currentItem":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    move v1, v3

    :cond_2f
    return v1

    .line 421
    .end local v0    # "viewPager":Ljava/lang/Object;
    .end local v2    # "currentItem":I
    :catch_30
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LongScreenshotUtils"

    const-string v3, "isYouKuSquare Reflect error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    return v1
.end method

.method private blacklist scrollView()V
    .registers 3

    .line 775
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->canScrollVertically(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 776
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    .line 778
    :cond_11
    return-void
.end method

.method private blacklist scrollY(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "distance"    # I

    .line 831
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_5a

    .line 833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5a

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_5a

    instance-of v0, p1, Landroid/widget/AbsoluteLayout;

    if-nez v0, :cond_5a

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 836
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5a

    .line 837
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 838
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 839
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-boolean v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsReverseLayout:Z

    if-nez v3, :cond_3d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_3d

    .line 840
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isReverseLayout(Landroid/view/ViewGroup;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsReverseLayout:Z

    .line 842
    :cond_3d
    iget-boolean v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsReverseLayout:Z

    if-eqz v3, :cond_43

    move v3, v1

    goto :goto_48

    :cond_43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_48
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 843
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v2, v4, v2

    add-int/2addr v3, v2

    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 844
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    goto :goto_6d

    .line 845
    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 846
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 847
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->getRealScrollY(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v2, v3, v2

    sub-int/2addr v0, v2

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 850
    :goto_6d
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_83

    .line 851
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v0, :cond_79

    .line 852
    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    goto :goto_91

    .line 854
    :cond_79
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p2

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 855
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_91

    .line 858
    :cond_83
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_8e

    .line 859
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_91

    .line 862
    :cond_8e
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 865
    :goto_91
    return-void
.end method

.method private blacklist start()V
    .registers 5

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsReverseLayout:Z

    .line 430
    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsRecyclerView:Z

    .line 431
    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 432
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    .line 433
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    .line 434
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    .line 436
    if-eqz v1, :cond_3f

    .line 439
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    if-nez v1, :cond_2e

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v2

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    .line 441
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v1

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 442
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 443
    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 446
    :cond_3f
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    if-eqz v1, :cond_53

    .line 447
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScrollbarFadingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScrollbarFadingEnabled:Z

    .line 448
    if-eqz v1, :cond_58

    .line 449
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_58

    .line 452
    :cond_53
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 454
    :cond_58
    :goto_58
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 455
    return-void
.end method

.method private blacklist transformH(I)I
    .registers 5
    .param p1, "originalHeightValue"    # I

    .line 381
    int-to-float v0, p1

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist getTopWindowColorMode()I
    .registers 6

    .line 328
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 330
    .local v0, "windowManagerGlobal":Landroid/view/WindowManagerGlobal;
    :try_start_4
    const-class v1, Landroid/view/WindowManagerGlobal;

    const-string v2, "mParams"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 331
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 332
    nop

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 334
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/WindowManager$LayoutParams;>;"
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 335
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_30

    return v2

    .line 339
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/WindowManager$LayoutParams;>;"
    :cond_2f
    goto :goto_38

    .line 337
    :catch_30
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LongScreenshotUtils"

    const-string v3, "getTopWindowColorMode Reflect error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist longScreenshot(II)Z
    .registers 11
    .param p1, "cmd"    # I
    .param p2, "navBarHeight"    # I

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "curTopActivity":Landroid/app/Activity;
    const-string v1, "LongScreenshotUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_124

    goto/16 :goto_123

    .line 320
    :pswitch_a
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto/16 :goto_123

    .line 315
    :pswitch_12
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 316
    goto/16 :goto_123

    .line 265
    :pswitch_1a
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 266
    invoke-static {}, Lmiui/util/LongScreenshotUtils;->isPad()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {}, Lmiui/util/LongScreenshotUtils;->isFold()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_31
    invoke-static {}, Lmiui/util/LongScreenshotUtils;->inLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v3

    goto :goto_3a

    :cond_39
    move v4, v2

    .line 267
    .local v4, "isCheckFloatingMode":Z
    :goto_3a
    if-eqz v4, :cond_44

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isInFloatingWindowMode()Z

    move-result v5

    if-eqz v5, :cond_44

    move v5, v3

    goto :goto_45

    :cond_44
    move v5, v2

    :goto_45
    iput-boolean v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->isBanSurfaceSize:Z

    .line 268
    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 270
    if-eqz v0, :cond_118

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isSplitActivity()Z

    move-result v5

    if-eqz v5, :cond_5a

    goto/16 :goto_118

    .line 275
    :cond_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " focus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getDisplayRatio(Landroid/app/Activity;)V

    .line 277
    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v6, v5, v2

    aget v5, v5, v3

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_87

    .line 278
    const-string v3, "width and height are not proportional"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v2

    .line 282
    :cond_87
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isDeviceLandscape()Z

    move-result v5

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMaxMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mCurMetricsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_a1

    .line 283
    const-string v3, "current window has been scaled, won`t support long screenshot."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v2

    .line 287
    .end local v4    # "isCheckFloatingMode":Z
    :cond_a1
    :pswitch_a1
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mDisplayRatio:[F

    aget v4, v4, v3

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_ac

    .line 288
    move v4, p2

    goto :goto_b2

    :cond_ac
    int-to-float v5, p2

    div-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v4, v5

    :goto_b2
    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    .line 289
    const/4 v4, 0x0

    .line 291
    .local v4, "mainScrollView":Landroid/view/View;
    if-nez v0, :cond_c0

    .line 292
    :try_start_b7
    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTopActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    move-object v0, v5

    .line 294
    :cond_c0
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c4} :catch_c6

    move-object v4, v5

    .line 297
    goto :goto_dd

    .line 295
    :catch_c6
    move-exception v5

    .line 296
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findMainScrollView exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_dd
    if-nez v4, :cond_e0

    .line 300
    return v2

    .line 302
    :cond_e0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findMainScrollView: scrollView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-ne p1, v3, :cond_110

    .line 306
    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-direct {p0, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->atBlackList(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_10f

    move v2, v3

    :cond_10f
    return v2

    .line 309
    :cond_110
    iput-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 310
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v1, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 311
    goto :goto_123

    .line 271
    .local v4, "isCheckFloatingMode":Z
    :cond_118
    :goto_118
    if-nez v0, :cond_11d

    .line 272
    const-string v3, " activity:null"

    goto :goto_11f

    :cond_11d
    const-string v3, " isSplitActivity"

    .line 271
    :goto_11f
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v2

    .line 324
    .end local v4    # "isCheckFloatingMode":Z
    :goto_123
    return v3

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_a1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
