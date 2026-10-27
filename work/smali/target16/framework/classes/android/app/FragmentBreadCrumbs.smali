.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field greylist-max-o mActivity:Landroid/app/Activity;

.field greylist-max-o mContainer:Landroid/widget/LinearLayout;

.field private greylist-max-o mGravity:I

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayoutResId:I

.field greylist-max-o mMaxVisible:I

.field private greylist-max-o mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private greylist-max-o mOnClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mParentClickListener:Landroid/view/View$OnClickListener;

.field greylist-max-o mParentEntry:Landroid/app/BackStackRecord;

.field private greylist-max-o mTextColor:I

.field greylist-max-o mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 92
    const v0, 0x1120058

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 359
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    const p2, 0x800013

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    .line 111
    const/4 p2, 0x2

    const p4, 0x1090084

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    .line 114
    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private greylist-max-o createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .registers 5

    .line 177
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_4
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 180
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 182
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 183
    return-object v0
.end method

.method private greylist-max-o getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3

    .line 298
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_c

    .line 299
    if-nez p1, :cond_9

    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    goto :goto_b

    :cond_9
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    :goto_b
    return-object p1

    .line 301
    :cond_c
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    return-object p1
.end method

.method private greylist-max-o getPreEntryCount()I
    .registers 5

    .line 287
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist onBackStackChanged()V
    .registers 1

    .line 279
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 280
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 200
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result p1

    .line 201
    if-nez p1, :cond_7

    .line 202
    return-void

    .line 205
    :cond_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 207
    iget p2, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 208
    iget p3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int/2addr p3, p4

    .line 213
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result p4

    .line 214
    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v0, 0x800007

    and-int/2addr p5, v0

    .line 215
    invoke-static {p5, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p4

    sparse-switch p4, :sswitch_data_72

    .line 228
    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    goto :goto_55

    .line 217
    :sswitch_31
    iget p4, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr p4, p5

    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr p4, p5

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    sub-int p5, p4, p5

    .line 219
    goto :goto_55

    .line 222
    :sswitch_40
    iget p4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr p5, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p4

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    .line 224
    nop

    .line 233
    :goto_55
    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge p5, v0, :cond_5b

    .line 234
    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 237
    :cond_5b
    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v1, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v0, v1

    if-le p4, v0, :cond_6d

    .line 238
    iget p4, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr p4, v0

    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr p4, v0

    .line 241
    :cond_6d
    invoke-virtual {p1, p5, p2, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 242
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_40
        0x5 -> :sswitch_31
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 11

    .line 246
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v0

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 253
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_b
    if-ge v1, v0, :cond_38

    .line 254
    invoke-virtual {p0, v1}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 255
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_35

    .line 256
    invoke-virtual {p0, v5, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 259
    nop

    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    .line 259
    invoke-static {v4, v5}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v4

    .line 253
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 265
    :cond_38
    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v1, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 266
    iget v0, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v1, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 269
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 270
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 272
    invoke-static {v1, p1, v4}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v4, 0x10

    .line 273
    invoke-static {v0, p2, v1}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result p2

    .line 272
    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 275
    return-void
.end method

.method public whitelist setActivity(Landroid/app/Activity;)V
    .registers 5

    .line 126
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 127
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 134
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 135
    return-void
.end method

.method public whitelist setMaxVisible(I)V
    .registers 3

    .line 142
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 145
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 146
    return-void

    .line 143
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "visibleCrumbs must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .registers 2

    .line 173
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 174
    return-void
.end method

.method public whitelist setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object p1

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 162
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 163
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 164
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object p1

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 193
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 194
    return-void
.end method

.method greylist-max-o updateCrumbs()V
    .registers 13

    .line 306
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 308
    invoke-direct {p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v2

    .line 309
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 310
    const/4 v4, 0x0

    move v5, v4

    :goto_16
    add-int v6, v1, v2

    const v7, 0x10203b8

    const v8, 0x1020016

    const/16 v9, 0x8

    if-ge v5, v6, :cond_7e

    .line 311
    if-ge v5, v2, :cond_29

    .line 312
    invoke-direct {p0, v5}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v6

    goto :goto_2f

    .line 313
    :cond_29
    sub-int v6, v5, v2

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v6

    .line 314
    :goto_2f
    if-ge v5, v3, :cond_49

    .line 315
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 316
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 317
    if-eq v10, v6, :cond_49

    .line 318
    move v10, v5

    :goto_3e
    if-ge v10, v3, :cond_48

    .line 319
    iget-object v11, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 318
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 321
    :cond_48
    move v3, v5

    .line 324
    :cond_49
    if-lt v5, v3, :cond_7b

    .line 325
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    invoke-virtual {v10, v11, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 326
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 329
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    if-nez v5, :cond_71

    .line 331
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_71
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 337
    :cond_7e
    nop

    .line 338
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 339
    :goto_85
    if-le v0, v6, :cond_91

    .line 340
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 341
    add-int/lit8 v0, v0, -0x1

    goto :goto_85

    .line 344
    :cond_91
    move v1, v4

    :goto_92
    if-ge v1, v0, :cond_cd

    .line 345
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 347
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_a4

    const/4 v5, 0x1

    goto :goto_a5

    :cond_a4
    move v5, v4

    :goto_a5
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    if-lez v3, :cond_ca

    .line 350
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_b4

    move v3, v9

    goto :goto_b5

    :cond_b4
    move v3, v4

    :goto_b5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 353
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v3, v0, v3

    if-le v1, v3, :cond_c6

    if-eqz v1, :cond_c6

    move v3, v4

    goto :goto_c7

    .line 354
    :cond_c6
    move v3, v9

    .line 353
    :goto_c7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 357
    :cond_cd
    return-void
.end method
