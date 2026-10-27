.class public Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;
.super Ljava/lang/Object;
.source "AutoclickScrollPanel.java"


# instance fields
.field public final mAutoclickScrollPointIndicator:Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

.field public mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

.field public mContext:Landroid/content/Context;

.field public mDownButton:Landroid/widget/ImageButton;

.field public mExitButton:Landroid/widget/ImageButton;

.field public mInScrollMode:Z

.field public mLeftButton:Landroid/widget/ImageButton;

.field public mPanelHeight:I

.field public mPanelWidth:I

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mRightButton:Landroid/widget/ImageButton;

.field public mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field public final mStatusBarHeight:I

.field public mUpButton:Landroid/widget/ImageButton;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$5Pj2yOonkOkvmZVdZn-6N1n3XrM(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->lambda$initializeButtonState$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E6_SHoojNKH_pyZNu1hnsLh3-yg(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/widget/ImageButton;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->lambda$setupHoverListenerForButton$1(Landroid/widget/ImageButton;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HMysMGr1IIZhLKUuFw1mTq2QJrY(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;)V
    .registers 5

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    .line 122
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 124
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 125
    new-instance p2, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mAutoclickScrollPointIndicator:Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 127
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mStatusBarHeight:I

    .line 129
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->inflateViewAndResources()V

    return-void
.end method


# virtual methods
.method public getContentViewForTesting()Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;
    .registers 1

    .line 377
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    return-object p0
.end method

.method public final getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .line 354
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7e8

    .line 355
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8

    .line 356
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 357
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 359
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 360
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, -0x3

    .line 361
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 362
    const-class v1, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    const v1, 0x10400e6

    .line 364
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, -0x2

    .line 365
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 366
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method public getLayoutParamsForTesting()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getPanelHeightForTesting()I
    .registers 1

    .line 392
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelHeight:I

    return p0
.end method

.method public getPanelWidthForTesting()I
    .registers 1

    .line 387
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelWidth:I

    return p0
.end method

.method public getStatusBarHeightForTesting()I
    .registers 1

    .line 397
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mStatusBarHeight:I

    return p0
.end method

.method public hide()V
    .registers 3

    .line 251
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-nez v0, :cond_5

    return-void

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mAutoclickScrollPointIndicator:Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->hide()V

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    return-void
.end method

.method public final inflateViewAndResources()V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10204f0

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mUpButton:Landroid/widget/ImageButton;

    .line 139
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10204ee

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mLeftButton:Landroid/widget/ImageButton;

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10204ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mRightButton:Landroid/widget/ImageButton;

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10204ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mDownButton:Landroid/widget/ImageButton;

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10204ed

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mExitButton:Landroid/widget/ImageButton;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->initializeButtonState()V

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const/4 v1, 0x0

    .line 148
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 149
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelWidth:I

    .line 151
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelHeight:I

    return-void
.end method

.method public final initializeButtonState()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mUpButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mLeftButton:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mRightButton:Landroid/widget/ImageButton;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mDownButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 163
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mExitButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mExitButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isHovered()Z
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 372
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    return p0
.end method

.method public final isWithinBounds(IIII)Z
    .registers 7

    const/16 v0, 0xf

    if-le p1, v0, :cond_14

    .line 243
    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelWidth:I

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    if-ge p1, p3, :cond_14

    if-le p2, v0, :cond_14

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelHeight:I

    add-int/2addr p2, p0

    add-int/2addr p2, v0

    if-ge p2, p4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$initializeButtonState$0(Landroid/view/View;)V
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    if-eqz p0, :cond_7

    .line 168
    invoke-interface {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;->onExitScrollMode()V

    :cond_7
    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .registers 4

    .line 325
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-eqz v0, :cond_b

    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 330
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->inflateViewAndResources()V

    .line 338
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-eqz p1, :cond_23

    .line 339
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    return-void
.end method

.method public final synthetic lambda$setupHoverListenerForButton$1(Landroid/widget/ImageButton;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 268
    iget-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    const/4 v0, 0x1

    if-nez p3, :cond_6

    return v0

    .line 273
    :cond_6
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/16 p4, 0x9

    if-eq p3, p4, :cond_15

    const/16 p4, 0xa

    if-eq p3, p4, :cond_13

    return v0

    :cond_13
    const/4 p3, 0x0

    goto :goto_16

    :cond_15
    move p3, v0

    .line 285
    :goto_16
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V

    .line 287
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    invoke-interface {p0, p2, p3}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;->onHoverButtonChange(IZ)V

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public positionPanelAtCursor(FF)V
    .registers 14

    .line 209
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 213
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 214
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 215
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 218
    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mStatusBarHeight:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 222
    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    .line 223
    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    .line 226
    filled-new-array {v4, v4}, [I

    move-result-object v5

    const/4 v6, -0x1

    filled-new-array {v6, v4}, [I

    move-result-object v7

    filled-new-array {v4, v6}, [I

    move-result-object v8

    filled-new-array {v6, v6}, [I

    move-result-object v6

    filled-new-array {v5, v7, v8, v6}, [[I

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_3c
    const/4 v8, 0x4

    if-ge v7, v8, :cond_69

    .line 227
    aget-object v8, v5, v7

    .line 229
    aget v9, v8, v6

    mul-int/2addr v9, v2

    int-to-float v9, v9

    add-float/2addr v9, p1

    iget v10, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 230
    aget v8, v8, v4

    mul-int/2addr v8, v3

    int-to-float v8, v8

    add-float/2addr v8, p2

    iget v10, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mPanelHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 231
    invoke-virtual {p0, v9, v8, v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isWithinBounds(IIII)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 232
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 233
    iput v8, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_69
    return-void
.end method

.method public final setupHoverListenerForButton(Landroid/widget/ImageButton;I)V
    .registers 4

    .line 267
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/widget/ImageButton;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public show(FF)V
    .registers 4

    .line 191
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 195
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->positionPanelAtCursor(FF)V

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mAutoclickScrollPointIndicator:Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->show(FF)V

    .line 197
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    return-void
.end method

.method public final toggleSelectedButtonStyle(Landroid/widget/ImageButton;Z)V
    .registers 6

    if-eqz p2, :cond_2c

    .line 302
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    const p2, 0x10602b8

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 307
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    .line 308
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 309
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0x1c

    .line 308
    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p2, p0, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 307
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 314
    :cond_2c
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method
