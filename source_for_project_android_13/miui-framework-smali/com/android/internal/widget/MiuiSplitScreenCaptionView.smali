.class public Lcom/android/internal/widget/MiuiSplitScreenCaptionView;
.super Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;
.source "MiuiSplitScreenCaptionView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiSplitScreenCaptionView"


# instance fields
.field private blacklist mCaption:Landroid/view/View;

.field private blacklist mClickTarget:Landroid/view/View;

.field private blacklist mContent:Landroid/view/View;

.field private blacklist mDragBar:Landroid/view/View;

.field private blacklist mDragBarHeight:I

.field private blacklist mDragBarLayout:Landroid/view/ViewGroup;

.field private final blacklist mDragBarRect:Landroid/graphics/Rect;

.field private blacklist mDragSlop:I

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private blacklist mIsUpDownSplit:Z

.field private blacklist mStatusBarHeight:I

.field private blacklist mTouchDispatchList:Ljava/util/ArrayList;

.field private blacklist mTouchDownTime:J

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist topMarginOffset:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->topMarginOffset:I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->topMarginOffset:I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->topMarginOffset:I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method private blacklist convertMultModeToSplitMode(I)I
    .registers 8
    .param p1, "windingMode"    # I

    .line 143
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2f

    .line 145
    :try_start_3
    const-class v0, Lmiui/app/MiuiMultiWinSplitManager;

    const-string v1, "adjustToSplitWindingMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 147
    .local v1, "splitMode":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2d

    return v2

    .line 148
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "splitMode":Ljava/lang/Integer;
    :catch_2d
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    return p1

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    return p1
.end method

.method private blacklist hideSoftInputMethod()V
    .registers 4

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 402
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    .line 405
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_33

    .line 403
    :catch_16
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSoftInputMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiSplitScreenCaptionView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragSlop:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarHeight:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mStatusBarHeight:I

    .line 91
    const v0, 0x11080161

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    return-void
.end method

.method private blacklist isUpDownSplit()Z
    .registers 7

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lmiui/app/MiuiMultiWinSplitManager;->getSplitRootTasksPos(I)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string v2, "MiuiSplitScreenCaptionView"

    if-nez v0, :cond_17

    .line 97
    const-string v3, "MiuiSplitStacksPos bundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 100
    :cond_17
    const/4 v3, -0x1

    const-string v4, "primaryPosition"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, "primaryScreenType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "primaryScreenType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-nez v3, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1
.end method

.method private blacklist passedSlop(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 106
    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragSlop:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1f

    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragSlop:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method private blacklist updateBar()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_79

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_79

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_79

    .line 114
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110801f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    .line 120
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110801f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    .line 124
    :cond_4e
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110801f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    .line 128
    :cond_67
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110801f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_79
    :goto_79
    return-void
.end method

.method private blacklist updateCaptionVisibility()V
    .registers 3

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    .line 139
    .local v0, "visible":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 156
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    .line 161
    const/4 v0, 0x3

    if-ge p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_14

    .line 166
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iput-object p1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 168
    return-void

    .line 162
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist adjustMarginsIfNeeded(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 252
    if-eqz p1, :cond_c

    instance-of v0, p1, Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_c

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->topMarginOffset:I

    .line 258
    :cond_c
    return-void
.end method

.method public whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iput-object p1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 174
    return-void
.end method

.method public blacklist buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 183
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist calcCaptionHeight()I
    .registers 4

    .line 326
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    if-eqz v0, :cond_1c

    .line 328
    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mWindowMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenPrimaryWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 329
    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarHeight:I

    iget v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mStatusBarHeight:I

    sget v2, Landroid/util/MiuiMultiWinClientUtils;->DEFAULT_SPLIT_DRAG_BAR_TOP_MARGIN:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1a

    .line 330
    :cond_15
    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarHeight:I

    sget v1, Landroid/util/MiuiMultiWinClientUtils;->BOTTOM_SPLIT_DRAG_BAR_TOP_MARGIN:I

    add-int/2addr v0, v1

    :goto_1a
    nop

    .local v0, "res":I
    goto :goto_1e

    .line 332
    .end local v0    # "res":I
    :cond_1c
    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarHeight:I

    .line 334
    .restart local v0    # "res":I
    :goto_1e
    return v0
.end method

.method public whitelist detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 191
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->detachViewFromParent(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    if-ne v0, p1, :cond_d

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->removeFrameBorder()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 196
    :cond_d
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 413
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mHasTriggerActioned:Z

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    if-eqz v0, :cond_49

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_49

    .line 417
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_42

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_49

    .line 418
    :cond_42
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mHasTriggerActioned:Z

    .line 421
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_66

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 424
    :cond_66
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCaptionHeight()I
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mStatusBarHeight:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected blacklist getTouchOffsets([IFF)V
    .registers 6
    .param p1, "outTouchOffsets"    # [I
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .line 199
    float-to-int v0, p2

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 200
    float-to-int v0, p3

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 201
    return-void
.end method

.method public blacklist isCaptionShowing()Z
    .registers 2

    .line 454
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    return v0
.end method

.method synthetic blacklist lambda$onTouchEvent$0$com-android-internal-widget-MiuiSplitScreenCaptionView(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 389
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->hideSoftInputMethod()V

    .line 390
    const-string v0, "MiuiSplitScreenCaptionView"

    const-string v1, "onTouchEvent: MotionEvent.ACTION_MOVE onTriggerAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->onTriggerAction(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 392
    return-void
.end method

.method protected blacklist measureChildWithOutTopMargins(Landroid/view/View;IIII)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 241
    invoke-static {p2, v1, v2}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getChildMeasureSpec(III)I

    move-result v1

    .line 244
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 244
    invoke-static {p4, v2, v3}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getChildMeasureSpec(III)I

    move-result v2

    .line 248
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 249
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 307
    invoke-super {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->onAttachedToWindow()V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_25

    .line 309
    const-string v0, "MiuiSplitScreenCaptionView"

    const-string v1, "onAttachedToWindow(): parent is not DecorView, setClipToPadding() & setClipChildren() called on parent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 315
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_25
    return-void
.end method

.method public blacklist onConfigurationChanged(Z)V
    .registers 4
    .param p1, "isShow"    # Z

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiSplitScreenCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    .line 206
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->isUpDownSplit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getWindowMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->convertMultModeToSplitMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mWindowMode:I

    .line 208
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->updateBar()V

    .line 209
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->updateCaptionVisibility()V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->adjustFrameBorder()V

    .line 211
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 214
    invoke-super {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->onFinishInflate()V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    .line 216
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 13
    .param p1, "isChanged"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_40

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mWindowMode:I

    .line 265
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenSecondaryWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    move v2, v1

    .line 266
    .local v2, "isBottomSplit":Z
    :goto_22
    if-eqz v2, :cond_27

    sget v3, Landroid/util/MiuiMultiWinClientUtils;->VERTICAL_SPLIT_DRAG_BAR_TOP_MARGIN:I

    goto :goto_29

    .line 267
    :cond_27
    sget v3, Landroid/util/MiuiMultiWinClientUtils;->DEFAULT_SPLIT_DRAG_BAR_TOP_MARGIN:I

    :goto_29
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 268
    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    iget v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->topMarginOffset:I

    neg-int v4, v4

    .line 271
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mStatusBarHeight:I

    .line 268
    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 276
    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 279
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "isBottomSplit":Z
    :cond_40
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_e6

    .line 280
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    if-eqz v2, :cond_a2

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_92

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 283
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 285
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 282
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_e6

    .line 287
    :cond_92
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_e6

    .line 290
    :cond_a2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_d7

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 294
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 291
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_e6

    .line 296
    :cond_d7
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 300
    :cond_e6
    :goto_e6
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    if-eqz v0, :cond_f5

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 303
    :cond_f5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 220
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->calcCaptionHeight()I

    move-result v0

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 225
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_3e

    .line 226
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    if-eqz v0, :cond_36

    .line 227
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_3e

    .line 229
    :cond_36
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->measureChildWithOutTopMargins(Landroid/view/View;IIII)V

    .line 232
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->adjustMarginsIfNeeded(Landroid/view/ViewGroup;)V

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->setMeasuredDimension(II)V

    .line 234
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 344
    .local v0, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 345
    .local v1, "posX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 346
    .local v2, "posY":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_21

    .line 347
    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    if-eq v0, v5, :cond_1d

    if-ne v0, v4, :cond_20

    .line 349
    :cond_1d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mClickTarget:Landroid/view/View;

    .line 351
    :cond_20
    return v5

    .line 354
    :cond_21
    const/4 v3, 0x0

    if-eq v0, v5, :cond_26

    if-ne v0, v4, :cond_2b

    .line 355
    :cond_26
    iget-object v6, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 358
    :cond_2b
    const-string v6, "MiuiSplitScreenCaptionView"

    if-nez v0, :cond_3d

    iget-object v7, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 359
    const-string v4, "Touch point not in mDragBarRect"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v3

    .line 363
    :cond_3d
    if-nez v0, :cond_5d

    .line 364
    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mHasTriggerActioned:Z

    .line 365
    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    if-nez v4, :cond_46

    .line 366
    return v3

    .line 368
    :cond_46
    const-string v3, "onTouchEvent: MotionEvent.ACTION_DOWN"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownX:I

    .line 370
    iput v2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownY:I

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownTime:J

    .line 372
    iget-object v3, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_98

    .line 373
    :cond_5d
    const-string v7, "onTouchEvent: MotionEvent.ACTION_UP"

    if-ne v0, v5, :cond_65

    .line 374
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 376
    :cond_65
    const/4 v8, 0x2

    if-eq v0, v8, :cond_6f

    .line 377
    if-ne v0, v4, :cond_6e

    .line 378
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v5

    .line 382
    :cond_6e
    return v5

    .line 384
    :cond_6f
    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mHasTriggerActioned:Z

    if-nez v4, :cond_98

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->passedSlop(II)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mTouchDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_98

    .line 386
    iput-boolean v5, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mHasTriggerActioned:Z

    .line 387
    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 388
    iget-object v4, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    new-instance v5, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MiuiSplitScreenCaptionView;Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 393
    return v3

    .line 396
    :cond_98
    :goto_98
    return v5
.end method

.method public blacklist removeContentView()V
    .registers 2

    .line 428
    invoke-super {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->removeContentView()V

    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->removeView(Landroid/view/View;)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mContent:Landroid/view/View;

    .line 433
    :cond_d
    return-void
.end method

.method protected blacklist resetDragBar()V
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    .line 437
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 438
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v1, "MiuiSplitScreenCaptionView"

    if-nez v0, :cond_16

    .line 439
    const-string v2, "reset drag bar failed, cause its drawable is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 442
    :cond_16
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 443
    const-string v2, "reset drag bar now!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_20
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 320
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->isUpDownSplit()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, p1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    :cond_10
    return-void
.end method

.method public blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 5
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "isShow"    # Z

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin setPhoneWindow, isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiSplitScreenCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-object p1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 460
    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsShow:Z

    .line 461
    const v0, 0x110a008f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110801f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4e

    .line 464
    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110801f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4e
    nop

    .line 465
    .local v0, "barDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBar:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    const v1, 0x110a0093

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDragBarLayout:Landroid/view/ViewGroup;

    .line 468
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->isUpDownSplit()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mIsUpDownSplit:Z

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->getWindowMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->convertMultModeToSplitMode(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mWindowMode:I

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    iput-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->resetDragBar()V

    .line 472
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->updateCaptionVisibility()V

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->adjustFrameBorder()V

    .line 474
    return-void
.end method
