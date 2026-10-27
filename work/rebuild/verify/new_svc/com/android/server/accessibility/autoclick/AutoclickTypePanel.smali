.class public Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;
.super Ljava/lang/Object;
.source "AutoclickTypePanel.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field public mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

.field public mContext:Landroid/content/Context;

.field public mCurrentCorner:I

.field public mCurrentCursor:Landroid/view/PointerIcon;

.field public mDoubleClickButton:Landroid/widget/ImageButton;

.field public mDragButton:Landroid/widget/ImageButton;

.field public mExpanded:Z

.field public mIsDragging:Z

.field public mIsExpandedPanelWiderThanScreen:Z

.field public mIsPanelShown:Z

.field public mLeftClickButton:Landroid/widget/ImageButton;

.field public mLongPressButton:Landroid/widget/ImageButton;

.field public mPanelStartX:I

.field public mPanelStartY:I

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mPauseButton:Landroid/widget/ImageButton;

.field public mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public mPaused:Z

.field public mPositionBottomLeftDrawable:Landroid/graphics/drawable/Drawable;

.field public mPositionBottomRightDrawable:Landroid/graphics/drawable/Drawable;

.field public mPositionButton:Landroid/widget/ImageButton;

.field public mPositionTopLeftDrawable:Landroid/graphics/drawable/Drawable;

.field public mPositionTopRightDrawable:Landroid/graphics/drawable/Drawable;

.field public mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public mRightClickButton:Landroid/widget/ImageButton;

.field public mScrollButton:Landroid/widget/ImageButton;

.field public mSelectedButton:Landroid/widget/ImageButton;

.field public mSelectedClickType:I

.field public mStatusBarHeight:I

.field public mTouchStartX:F

.field public mTouchStartY:F

.field public final mUserId:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$57OX0rR8--VAxgyx22alQ0WZoVw(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6gH5mmkS8F9i4iJeytElQAdKqGU(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9W3G1hYR2SQrkM5cjXu56fhr9e8(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$show$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$AknxtO-E76stN5RP2cX6X-GMmEk(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfiK5Uw3dYQWfKLQP-Ioc7hlpJU(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0aA6R8l5RdVtqrS7VzqahPI6Ag(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jok28F_iePa94uFzq4wGXvVJ5CU(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onPanelTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LMgr_Ewe78HBD2zj6dcu7SyO3Hk(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$onConfigurationChanged$10(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N05L324AP7W1ux7HjqUfNdTWY8c(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$setupHoverListenersForCursor$12(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RsBtQonrwbPQtkH6kwUoeN5TDGY(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcQhnL6g5NzSN2luUF_fR4adGUs(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8EkxiYRtWLoneQTH2s7Zw9cspo(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$_lrmAgyifkhZV5tVKbp09Icesbc(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$wrapWithTogglePauseListener$11(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fY-QQNLDz9shZOpM0fhkBSPKnW4(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;ILcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V
    .registers 7

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    .line 158
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mStatusBarHeight:I

    .line 162
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsExpandedPanelWiderThanScreen:Z

    .line 165
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 177
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedClickType:I

    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 193
    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    .line 194
    iput-object p4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->inflateViewAndResources()V

    return-void
.end method


# virtual methods
.method public final adjustPanelSpacing(Z)V
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 783
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201ab

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_29

    .line 789
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 791
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2f

    .line 794
    :cond_29
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 796
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_2f
    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 801
    :goto_33
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ge v1, p0, :cond_52

    .line 803
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 804
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 805
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_52
    return-void
.end method

.method public collapsePanelWithClickType(I)V
    .registers 4

    .line 375
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsExpandedPanelWiderThanScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 376
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 380
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hideAllClickTypeButtons()V

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getButtonFromClickType(I)Landroid/widget/ImageButton;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setSelectedClickType(I)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->adjustPanelSpacing(Z)V

    .line 390
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    return-void
.end method

.method public final getButtonFromClickType(I)Landroid/widget/ImageButton;
    .registers 4

    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    .line 575
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    return-object p0

    .line 576
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown clickType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 574
    :cond_2b
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    return-object p0

    .line 573
    :cond_2e
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    return-object p0

    .line 572
    :cond_31
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    return-object p0

    .line 571
    :cond_34
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    return-object p0

    .line 570
    :cond_37
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getContentViewForTesting()Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;
    .registers 1

    .line 970
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    return-object p0
.end method

.method public getCurrentCornerForTesting()I
    .registers 1

    .line 976
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return p0
.end method

.method public final getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .line 1008
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7e8

    .line 1009
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x40008

    .line 1010
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1012
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1013
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    .line 1014
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 1013
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 1015
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, -0x3

    .line 1016
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1017
    const-class v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v2, 0x10400e9

    .line 1019
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v1, -0x2

    .line 1020
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1021
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 1022
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    return-object v0
.end method

.method public getExpansionStateForTesting()Z
    .registers 1

    .line 964
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    return p0
.end method

.method public getIsDragging()Z
    .registers 1

    .line 985
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    return p0
.end method

.method public getLayoutParamsForTesting()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 981
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getStatusBarHeightForTesting()I
    .registers 1

    .line 990
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mStatusBarHeight:I

    return p0
.end method

.method public final getVisualCorner()I
    .registers 7

    .line 752
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 753
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    .line 756
    new-array v3, v2, [I

    .line 757
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 758
    aget v4, v3, p0

    const/4 v5, 0x1

    .line 759
    aget v3, v3, v5

    .line 762
    div-int/2addr v0, v2

    if-ge v4, v0, :cond_2b

    move v0, v5

    goto :goto_2c

    :cond_2b
    move v0, p0

    .line 763
    :goto_2c
    div-int/2addr v1, v2

    if-ge v3, v1, :cond_31

    move v1, v5

    goto :goto_32

    :cond_31
    move v1, p0

    :goto_32
    if-eqz v0, :cond_38

    if-eqz v1, :cond_37

    return v2

    :cond_37
    return v5

    :cond_38
    if-eqz v1, :cond_3b

    const/4 p0, 0x3

    :cond_3b
    return p0
.end method

.method public hide()V
    .registers 4

    .line 437
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    if-nez v0, :cond_5

    return-void

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->savePanelPosition()V

    .line 448
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 449
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    return-void
.end method

.method public final hideAllClickTypeButtons()V
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 550
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public final inflateViewAndResources()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x108012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x1080132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x1080130

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionTopLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x1080131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionTopRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x108012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionBottomLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x108012f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionBottomRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090019

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    .line 219
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->setOnHoverChangedListener(Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201af

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201b3

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201ad

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201b4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    const v1, 0x10201b0

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mStatusBarHeight:I

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->initializeButtonState()V

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final initializeButtonState()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 328
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedClickType:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setSelectedClickType(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setupHoverListenersForCursor()V

    .line 347
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    if-eqz v0, :cond_7c

    .line 348
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->showAllClickTypeButtons()V

    goto :goto_89

    .line 351
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hideAllClickTypeButtons()V

    .line 352
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedClickType:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getButtonFromClickType(I)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    :goto_89
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->adjustPanelSpacing(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePauseButtonAppearance()V

    .line 359
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isHovered()Z
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result p0

    return p0
.end method

.method public isHoveringDraggableArea(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 881
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 886
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v2, 0x2

    .line 890
    new-array v3, v2, [I

    const/16 v4, 0x8

    .line 893
    new-array v5, v4, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v2

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    aput-object p0, v5, v2

    move p0, v1

    :goto_40
    if-ge p0, v4, :cond_73

    .line 895
    aget-object v2, v5, p0

    .line 896
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 898
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 899
    aget v6, v3, v1

    .line 900
    aget v8, v3, v7

    .line 903
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v6

    .line 904
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v8

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_70

    int-to-float v6, v9

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_70

    int-to-float v6, v8

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_70

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_70

    return v1

    :cond_70
    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    :cond_73
    return v7
.end method

.method public isPaused()Z
    .registers 1

    .line 456
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    return p0
.end method

.method public final isValidPositionParts([Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    .line 675
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    goto :goto_5f

    .line 680
    :cond_8
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    .line 681
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 682
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 683
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v6, 0x800033

    if-eq v1, v6, :cond_38

    const v6, 0x800035

    if-eq v1, v6, :cond_38

    const v6, 0x800053

    if-eq v1, v6, :cond_38

    const v6, 0x800055

    if-eq v1, v6, :cond_38

    return v0

    .line 693
    :cond_38
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 694
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ltz v4, :cond_5f

    if-gt v4, v1, :cond_5f

    if-ltz v5, :cond_5f

    if-le v5, p0, :cond_59

    goto :goto_5f

    :cond_59
    if-ltz p1, :cond_5f

    if-lt p1, v2, :cond_5e

    goto :goto_5f

    :cond_5e
    return v3

    :cond_5f
    :goto_5f
    return v0
.end method

.method public final synthetic lambda$initializeButtonState$0(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$1(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$2(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x2

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$3(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x4

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$4(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x3

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$5(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x5

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$6(Landroid/view/View;)V
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->moveToNextCorner()V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$7(Landroid/view/View;)V
    .registers 2

    .line 339
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePause()V

    return-void
.end method

.method public final synthetic lambda$initializeButtonState$8()V
    .registers 3

    .line 360
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getVisualCorner()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePositionButtonIcon(I)V

    .line 363
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v0, v1, :cond_2a

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsExpandedPanelWiderThanScreen:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2a
    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$10(Landroid/content/res/Configuration;)V
    .registers 4

    .line 473
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    if-eqz v0, :cond_b

    .line 474
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 478
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->inflateViewAndResources()V

    .line 486
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    if-eqz p1, :cond_23

    .line 487
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    return-void
.end method

.method public final synthetic lambda$setupHoverListenersForCursor$12(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 928
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_34

    const/16 p2, 0x9

    if-eq v0, p2, :cond_22

    const/16 p2, 0xa

    if-eq v0, p2, :cond_10

    goto :goto_37

    .line 939
    :cond_10
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x105001e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    goto :goto_37

    .line 930
    :cond_22
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x105001d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    goto :goto_37

    .line 935
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updateCursorIcon(Landroid/view/MotionEvent;)V

    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$show$9()V
    .registers 2

    .line 428
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getVisualCorner()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePositionButtonIcon(I)V

    return-void
.end method

.method public final synthetic lambda$wrapWithTogglePauseListener$11(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 714
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 717
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    if-eqz p1, :cond_a

    .line 718
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePause()V

    :cond_a
    return-void
.end method

.method public final moveToNextCorner()V
    .registers 4

    .line 582
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 583
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 585
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 586
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePositionButtonIcon(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnd()V
    .registers 3

    .line 867
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 868
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 870
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->snapToNearestEdge(Landroid/view/WindowManager$LayoutParams;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const/16 v1, 0x3fc

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    .line 873
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_1b
    return-void
.end method

.method public onDragMove(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartX:F

    sub-float/2addr v0, v1

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartY:F

    sub-float/2addr p1, v1

    .line 844
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 847
    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartX:I

    float-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 853
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartY:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mStatusBarHeight:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 854
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    invoke-virtual {p1}, Landroid/view/PointerIcon;->getType()I

    move-result p1

    const/16 v0, 0x3fd

    if-eq p1, v0, :cond_4b

    .line 858
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    .line 859
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_4b
    return-void
.end method

.method public onDragStart(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartX:F

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartY:F

    const/4 p1, 0x2

    .line 823
    new-array p1, p1, [I

    .line 824
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 825
    aget v1, p1, v1

    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartX:I

    .line 826
    aget p1, p1, v0

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartY:I

    .line 829
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const/16 v0, 0x3fd

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    .line 830
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public final onPanelTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_26

    if-eq p1, v0, :cond_22

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_22

    const/4 p2, 0x4

    if-eq p1, p2, :cond_14

    const/4 p0, 0x0

    return p0

    .line 264
    :cond_14
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    if-eqz p1, :cond_1d

    .line 265
    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedClickType:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->collapsePanelWithClickType(I)V

    :cond_1d
    return v0

    .line 257
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragMove(Landroid/view/MotionEvent;)V

    return v0

    .line 261
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragEnd()V

    return v0

    .line 254
    :cond_26
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragStart(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public resetPanelPositionForTesting()V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 594
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return-void
.end method

.method public final restorePanelPosition()V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_panel_position"

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 648
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 649
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return-void

    .line 654
    :cond_19
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isValidPositionParts([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 656
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 657
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return-void

    .line 662
    :cond_2d
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 663
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 664
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x3

    .line 665
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return-void
.end method

.method public final savePanelPosition()V
    .registers 5

    .line 629
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 630
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 631
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 632
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 633
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_autoclick_panel_position"

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    invoke-static {v1, v2, v0, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setIsExpandedPanelWiderThanScreenForTesting(Z)V
    .registers 2

    .line 999
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsExpandedPanelWiderThanScreen:Z

    return-void
.end method

.method public final setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 4

    const/16 p0, 0xf

    .line 605
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p0, 0x1e

    .line 606
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p2, :cond_3c

    const/4 p0, 0x1

    if-eq p2, p0, :cond_36

    const/4 p0, 0x2

    if-eq p2, p0, :cond_30

    const/4 p0, 0x3

    if-ne p2, p0, :cond_19

    const p0, 0x800035

    .line 618
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void

    .line 621
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid corner: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    const p0, 0x800033

    .line 615
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void

    :cond_36
    const p0, 0x800053

    .line 612
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void

    :cond_3c
    const p0, 0x800055

    .line 609
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public final setSelectedClickType(I)V
    .registers 5

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getButtonFromClickType(I)Landroid/widget/ImageButton;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V

    .line 402
    :cond_c
    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/ImageButton;

    .line 403
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedClickType:I

    .line 404
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;->handleAutoclickTypeChange(I)V

    const/4 p1, 0x1

    .line 407
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method public final setupHoverListenersForCursor()V
    .registers 3

    const/16 v0, 0x8

    .line 920
    new-array v0, v0, [Landroid/view/View;

    .line 927
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public show()V
    .registers 4

    .line 415
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    if-eqz v0, :cond_5

    return-void

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->restorePanelPosition()V

    .line 422
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsPanelShown:Z

    .line 427
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    new-instance v2, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 433
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method public final showAllClickTypeButtons()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 560
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLongPressButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public final snapToNearestEdge(Landroid/view/WindowManager$LayoutParams;)V
    .registers 9

    .line 280
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 281
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 282
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getTaskbarHeight(Landroid/content/res/Resources;)I

    move-result v1

    .line 283
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 284
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 287
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getVisualCorner()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3e

    if-ne v4, v6, :cond_35

    goto :goto_3e

    :cond_35
    const v4, 0x800035

    .line 299
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x3

    .line 302
    iput v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    goto :goto_45

    :cond_3e
    :goto_3e
    const v4, 0x800033

    .line 293
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 296
    iput v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    :goto_45
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 307
    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    sub-int/2addr v0, v1

    const/16 v2, 0xf

    .line 309
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 310
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getVisualCorner()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePositionButtonIcon(I)V

    return-void
.end method

.method public final togglePanelExpansion(I)V
    .registers 4

    .line 494
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    if-eqz v0, :cond_8

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->collapsePanelWithClickType(I)V

    return-void

    .line 500
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->showAllClickTypeButtons()V

    const/4 p1, 0x1

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->adjustPanelSpacing(Z)V

    .line 506
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsExpandedPanelWiderThanScreen:Z

    if-eqz v0, :cond_1f

    .line 507
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    :cond_1f
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    return-void
.end method

.method public final togglePause()V
    .registers 3

    .line 520
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    .line 521
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;->toggleAutoclickPause(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->updatePauseButtonAppearance()V

    return-void
.end method

.method public final toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V
    .registers 3

    .line 411
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public final updateCursorIcon(Landroid/view/MotionEvent;)V
    .registers 3

    .line 953
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    if-eqz v0, :cond_5

    return-void

    .line 956
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isHoveringDraggableArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x3fc

    goto :goto_10

    :cond_e
    const/16 p1, 0x3e8

    .line 958
    :goto_10
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCursor:Landroid/view/PointerIcon;

    .line 959
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public final updatePauseButtonAppearance()V
    .registers 3

    .line 530
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    if-eqz v0, :cond_1f

    .line 531
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x10400e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 536
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x10400de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updatePositionButtonIcon(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    .line 740
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionBottomRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 733
    :cond_11
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionTopRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 730
    :cond_19
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionTopLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 736
    :cond_21
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionBottomLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 3

    .line 713
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
