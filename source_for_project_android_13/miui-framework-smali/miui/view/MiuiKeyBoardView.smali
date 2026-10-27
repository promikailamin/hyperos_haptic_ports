.class public Lmiui/view/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;,
        Lmiui/view/MiuiKeyBoardView$KeyButton;
    }
.end annotation


# static fields
.field private static final blacklist FUNC_KEY_RATIO:F = 1.6f

.field private static final blacklist HORIZONTAL_MARGIN_RATIO:F = 0.2f

.field private static final blacklist OK_KEY_RATIO:F = 2.8f

.field private static final blacklist PREVIEW_ANIMATION_DURATION:I = 0x64

.field private static final blacklist SHOW_PREVIEW_DURATION:J = 0x12cL

.field private static final blacklist SIZE_GROUP:[[F

.field private static final blacklist SPACE_KEY_RATIO:F = 5.8f

.field private static final blacklist SPACE_STR:Ljava/lang/String; = " "

.field private static final blacklist VERTICAL_MARGIN_RATIO:F = 0.17f


# instance fields
.field private blacklist mAllKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBtnCapsLock:Landroid/view/View;

.field private blacklist mBtnLetterDelete:Landroid/view/View;

.field private blacklist mBtnLetterOK:Landroid/view/View;

.field private blacklist mBtnLetterSpace:Landroid/view/View;

.field private blacklist mBtnSymbolDelete:Landroid/view/View;

.field private blacklist mBtnSymbolOK:Landroid/view/View;

.field private blacklist mBtnSymbolSpace:Landroid/view/View;

.field private blacklist mBtnToLetterBoard:Landroid/view/View;

.field private blacklist mBtnToSymbolBoard:Landroid/view/View;

.field private blacklist mConfirmHide:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsShowingPreview:Z

.field private blacklist mIsUpperMode:Z

.field private blacklist mKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLetterBoard:Landroid/widget/FrameLayout;

.field private blacklist mPopupViewHeight:I

.field private blacklist mPopupViewWidth:I

.field private blacklist mPopupViewX:I

.field private blacklist mPopupViewY:I

.field private blacklist mPreviewText:Landroid/widget/TextView;

.field private final blacklist mSendDeleteActionRunnable:Ljava/lang/Runnable;

.field private blacklist mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mShowPreviewLastTime:J

.field private blacklist mShrinkToBottonAnimation:Landroid/view/animation/Animation;

.field private blacklist mStretchFromBottonAnimation:Landroid/view/animation/Animation;

.field private blacklist mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPreviewText(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monKeyBoardDelete(Lmiui/view/MiuiKeyBoardView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowPreviewAnim(Lmiui/view/MiuiKeyBoardView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/16 v1, 0xa

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_42

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_58

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    return-void

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_58
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_6e
    .array-data 4
        0x40333333    # 2.8f
        0x40b9999a    # 5.8f
        0x40333333    # 2.8f
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 66
    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 68
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 70
    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 245
    new-instance v0, Lmiui/view/MiuiKeyBoardView$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$1;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    .line 381
    new-instance v0, Lmiui/view/MiuiKeyBoardView$2;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$2;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 84
    const v0, 0x110c001e

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x110c003f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x110c001b

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setFocusableInTouchMode(Z)V

    .line 88
    return-void
.end method

.method private blacklist calcAndStartShowPreviewAnim(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 364
    instance-of v0, p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v0, :cond_73

    .line 365
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 369
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 370
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 371
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 373
    .local v1, "viewPos":[F
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F

    .line 374
    aget v4, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v0

    int-to-float v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    .line 375
    aget v0, v1, v3

    iget v4, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e2e147b    # 0.17f

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    .line 376
    invoke-direct {p0, v3}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    .line 377
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    .end local v1    # "viewPos":[F
    :cond_73
    return-void
.end method

.method private blacklist getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F
    .registers 13
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "useTransformation"    # Z
    .param p4, "ignoreScale"    # Z

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    .local v0, "scale":F
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p2, v1

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 154
    if-eqz p3, :cond_12

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 157
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    .line 158
    aget v2, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, p2, v3

    .line 159
    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, p2, v1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 161
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_2f
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_69

    if-eq v2, p0, :cond_69

    .line 162
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 163
    .local v4, "view":Landroid/view/View;
    if-eqz p3, :cond_46

    .line 164
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 165
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v0, v5

    .line 167
    :cond_46
    aget v5, p2, v3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v3

    .line 168
    aget v5, p2, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v1

    .line 169
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 170
    .end local v4    # "view":Landroid/view/View;
    goto :goto_2f

    .line 171
    :cond_69
    if-eqz p4, :cond_8a

    .line 172
    aget v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v0

    mul-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    aput v4, p2, v3

    .line 173
    aget v3, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v0

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    aput v3, p2, v1

    .line 175
    :cond_8a
    return v0
.end method

.method private blacklist onKeyBoardDelete()V
    .registers 3

    .line 234
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 235
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardDelete()V

    .line 236
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    goto :goto_6

    .line 237
    :cond_16
    return-void
.end method

.method private blacklist onKeyBoardOK()V
    .registers 3

    .line 240
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 241
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardOK()V

    .line 242
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    goto :goto_6

    .line 243
    :cond_16
    return-void
.end method

.method private blacklist onText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 229
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1, p1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    goto :goto_6

    .line 231
    :cond_16
    return-void
.end method

.method private blacklist setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 138
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2b

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_1e

    .line 141
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 144
    :cond_1e
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    .line 145
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 138
    .end local v2    # "child":Landroid/view/View;
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 148
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method private blacklist shiftLetterBoard()V
    .registers 6

    .line 423
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 424
    .local v1, "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_44

    .line 425
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 426
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_44

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    aget-char v2, v2, v4

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 427
    iget-boolean v2, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v2, :cond_3d

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v2}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .end local v1    # "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_44
    goto :goto_6

    .line 431
    :cond_45
    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 432
    if-eqz v0, :cond_55

    .line 433
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x11080133

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5d

    .line 435
    :cond_55
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x11080132

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 437
    :goto_5d
    return-void
.end method

.method private blacklist showLetterBoard(Z)V
    .registers 6
    .param p1, "show"    # Z

    .line 416
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    return-void
.end method

.method private blacklist showPreviewAnim(Z)V
    .registers 5
    .param p1, "show"    # Z

    .line 388
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 389
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 391
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 392
    const/4 v0, 0x2

    if-eqz p1, :cond_22

    .line 393
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_66

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2c

    .line 395
    :cond_22
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 397
    :goto_2c
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 400
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 401
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/MiuiKeyBoardView$3;

    invoke-direct {v1, p0}, Lmiui/view/MiuiKeyBoardView$3;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    iput-boolean p1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 410
    if-eqz p1, :cond_65

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 413
    :cond_65
    return-void

    :array_66
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public blacklist addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 215
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 216
    .local v1, "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 217
    return-void

    .line 219
    .end local v1    # "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_19
    goto :goto_6

    .line 220
    :cond_1a
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public blacklist hide()V
    .registers 2

    .line 360
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    return-void
.end method

.method blacklist keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V
    .registers 26
    .param p1, "board"    # Landroid/view/ViewGroup;
    .param p2, "width"    # I
    .param p3, "normalKeyWidth"    # I
    .param p4, "horizontalMargin"    # I
    .param p5, "normalKeyHeight"    # I
    .param p6, "verticalMargin"    # I

    .line 325
    move/from16 v0, p3

    move/from16 v1, p4

    sget-object v2, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v2, v2

    .line 326
    .local v2, "rowCount":I
    const/4 v3, 0x0

    .line 327
    .local v3, "index":I
    move-object/from16 v4, p0

    iget v5, v4, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 328
    .local v5, "paddingTop":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, v2, :cond_82

    .line 329
    sget-object v7, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    aget-object v7, v7, v6

    .line 330
    .local v7, "row":[F
    const/4 v8, 0x0

    .line 331
    .local v8, "totalSize":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_15
    array-length v10, v7

    if-ge v9, v10, :cond_20

    .line 332
    aget v10, v7, v9

    int-to-float v11, v0

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 331
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 334
    .end local v9    # "j":I
    :cond_20
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v1

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 335
    move/from16 v9, p2

    int-to-float v10, v9

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 336
    .local v10, "padding":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2f
    array-length v12, v7

    if-ge v11, v12, :cond_76

    .line 337
    move-object/from16 v12, p1

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 338
    .local v13, "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    move v14, v10

    .line 339
    .local v14, "paddingLeft":I
    invoke-virtual {v13}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "rowCount":I
    .local v16, "rowCount":I
    const-string v2, "!"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 340
    int-to-float v2, v14

    int-to-float v15, v0

    aget v17, v7, v11

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    mul-float v15, v15, v17

    add-float/2addr v2, v15

    float-to-int v14, v2

    .line 342
    :cond_55
    int-to-float v2, v10

    int-to-float v15, v0

    aget v17, v7, v11

    mul-float v15, v15, v17

    add-float/2addr v2, v15

    float-to-int v2, v2

    add-int v15, v5, p5

    invoke-virtual {v13, v14, v5, v2, v15}, Lmiui/view/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    .line 344
    int-to-float v2, v10

    int-to-float v15, v0

    aget v17, v7, v11

    mul-float v15, v15, v17

    int-to-float v0, v1

    add-float/2addr v15, v0

    add-float/2addr v2, v15

    float-to-int v10, v2

    .line 345
    nop

    .end local v13    # "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v14    # "paddingLeft":I
    add-int/lit8 v3, v3, 0x1

    .line 336
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p3

    move/from16 v2, v16

    goto :goto_2f

    .end local v16    # "rowCount":I
    .restart local v2    # "rowCount":I
    :cond_76
    move-object/from16 v12, p1

    move/from16 v16, v2

    .line 347
    .end local v2    # "rowCount":I
    .end local v11    # "j":I
    .restart local v16    # "rowCount":I
    add-int v0, p6, p5

    add-int/2addr v5, v0

    .line 328
    .end local v7    # "row":[F
    .end local v8    # "totalSize":F
    .end local v10    # "padding":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    goto :goto_d

    .line 349
    .end local v6    # "i":I
    .end local v16    # "rowCount":I
    .restart local v2    # "rowCount":I
    :cond_82
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 93
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 95
    :cond_10
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 284
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 285
    return-void

    .line 287
    :cond_7
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    if-ne p1, v0, :cond_f

    .line 288
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    goto :goto_54

    .line 289
    :cond_f
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    if-ne p1, v0, :cond_18

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_54

    .line 291
    :cond_18
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    if-ne p1, v0, :cond_21

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_54

    .line 293
    :cond_21
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v0, :cond_51

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v0, :cond_2a

    goto :goto_51

    .line 295
    :cond_2a
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    if-eq p1, v0, :cond_4d

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    if-ne p1, v0, :cond_33

    goto :goto_4d

    .line 297
    :cond_33
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    if-eq p1, v0, :cond_47

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    if-ne p1, v0, :cond_3c

    goto :goto_47

    .line 300
    :cond_3c
    move-object v0, p1

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 298
    :cond_47
    :goto_47
    const-string v0, " "

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 296
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardOK()V

    goto :goto_54

    .line 294
    :cond_51
    :goto_51
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    .line 302
    :goto_54
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 100
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11070071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 102
    const v1, 0x11070070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    .line 104
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1101001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 105
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1101001b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setClipChildren(Z)V

    .line 108
    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setClipToPadding(Z)V

    .line 109
    const v2, 0x110a00a0

    invoke-virtual {p0, v2}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 111
    const v2, 0x110a0073

    invoke-virtual {p0, v2}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    const v1, 0x110a002b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 114
    const v1, 0x110a002d

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 115
    const v1, 0x110a0032

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    .line 116
    const v1, 0x110a002f

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    .line 117
    const v1, 0x110a002e

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    .line 119
    const v1, 0x110a0074

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 120
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    const v1, 0x110a0033

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 122
    const v1, 0x110a0031

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    .line 123
    const v1, 0x110a0035

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    .line 124
    const v1, 0x110a0034

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 127
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 128
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 307
    move-object v7, p0

    sub-int v8, p4, p2

    .line 308
    .local v8, "keyboardWidth":I
    sub-int v9, p5, p3

    .line 309
    .local v9, "keyboardHeight":I
    iget v0, v7, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    const/4 v2, 0x0

    aget-object v3, v1, v2

    array-length v3, v3

    div-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v3, 0x3f99999a    # 1.2f

    div-float/2addr v0, v3

    float-to-int v10, v0

    .line 310
    .local v10, "normalKeyWidth":I
    int-to-float v0, v10

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v3

    float-to-int v11, v0

    .line 311
    .local v11, "horizontalMargin":I
    iget v0, v7, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f95c28f    # 1.17f

    div-float/2addr v0, v1

    float-to-int v12, v0

    .line 312
    .local v12, "normalKeyHeight":I
    int-to-float v0, v12

    mul-float/2addr v0, v3

    float-to-int v13, v0

    .line 313
    .local v13, "verticalMargin":I
    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    invoke-virtual {v0, v2, v2, v8, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 314
    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    invoke-virtual {v0, v2, v2, v8, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 315
    iget-object v1, v7, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 317
    iget-object v1, v7, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 319
    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v2, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v3, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    add-int/2addr v3, v1

    iget v4, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 321
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 256
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 258
    .local v0, "action":I
    packed-switch v0, :pswitch_data_60

    :pswitch_d
    goto :goto_5d

    .line 270
    :pswitch_e
    const-wide/16 v1, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 271
    .local v1, "hideDelayed":J
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz v3, :cond_28

    .line 272
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_25

    move-wide v4, v1

    :cond_25
    invoke-virtual {p0, v3, v4, v5}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_28
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v3, :cond_30

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v3, :cond_5d

    .line 275
    :cond_30
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 260
    .end local v1    # "hideDelayed":J
    :pswitch_36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 262
    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->calcAndStartShowPreviewAnim(Landroid/view/View;)V

    .line 264
    :cond_4e
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_56

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_5d

    .line 265
    :cond_56
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    .end local v0    # "action":I
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_36
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 3
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 224
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public blacklist show()V
    .registers 3

    .line 351
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_13

    .line 354
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    .line 356
    :cond_13
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    return-void
.end method
