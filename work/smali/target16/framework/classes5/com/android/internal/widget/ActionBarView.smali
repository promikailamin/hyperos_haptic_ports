.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final blacklist DISPLAY_DEFAULT:I = 0x0

.field private static final blacklist DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final blacklist TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private blacklist mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mCustomNavView:Landroid/view/View;

.field private blacklist mDefaultUpDescription:I

.field private blacklist mDisplayOptions:I

.field blacklist mExpandedActionView:Landroid/view/View;

.field private final blacklist mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private blacklist mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private blacklist mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private blacklist mHomeDescription:Ljava/lang/CharSequence;

.field private blacklist mHomeDescriptionRes:I

.field private blacklist mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mIncludeTabs:Z

.field private final blacklist mIndeterminateProgressStyle:I

.field private blacklist mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private blacklist mIsCollapsible:Z

.field private blacklist mItemPadding:I

.field private blacklist mListNavLayout:Landroid/widget/LinearLayout;

.field private blacklist mLogo:Landroid/graphics/drawable/Drawable;

.field private blacklist mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private blacklist mMenuPrepared:Z

.field private blacklist mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private blacklist mNavigationMode:I

.field private blacklist mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mProgressBarPadding:I

.field private final blacklist mProgressStyle:I

.field private blacklist mProgressView:Landroid/widget/ProgressBar;

.field private blacklist mSpinner:Landroid/widget/Spinner;

.field private blacklist mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mSubtitleStyleRes:I

.field private blacklist mSubtitleView:Landroid/widget/TextView;

.field private blacklist mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private blacklist mTabSelector:Ljava/lang/Runnable;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleLayout:Landroid/widget/LinearLayout;

.field private final blacklist mTitleStyleRes:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private final blacklist mUpClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mUpGoerFive:Landroid/view/ViewGroup;

.field private blacklist mUserTitle:Z

.field private blacklist mWasHomeEnabled:Z

.field blacklist mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayOptions(Lcom/android/internal/widget/ActionBarView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandedMenuPresenter(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogoNavItem(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuPrepared(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpGoerFive(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWasHomeEnabled(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitTitle(Lcom/android/internal/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHomeButtonEnabled(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    const v0, 0x1040134

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 139
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 164
    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 167
    const/4 v1, 0x7

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 169
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 170
    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 176
    const v2, 0x109001f

    const/16 v3, 0x10

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 180
    const v4, 0x1090022

    invoke-virtual {v1, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 182
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 184
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 185
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 186
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_a6

    .line 194
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_a6
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 199
    const/16 v2, 0xb

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 200
    const/16 v2, 0xc

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 201
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 202
    const/16 v2, 0xe

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 205
    const/16 v2, 0xf

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 206
    const/16 v2, 0x11

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 208
    const/16 v2, 0x8

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 210
    const/16 v2, 0xa

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 211
    if-eqz v2, :cond_fd

    .line 212
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 213
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 214
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 217
    :cond_fd
    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 219
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    new-instance v5, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const v8, 0x102002c

    const/4 v9, 0x0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 223
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 225
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_131

    .line 228
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 230
    :cond_131
    return-void
.end method

.method private blacklist buildHomeContentDescription()Ljava/lang/CharSequence;
    .registers 6

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    goto :goto_27

    .line 574
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_27

    .line 577
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 581
    :goto_27
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 583
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040133

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 590
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040132

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_5a
    return-object v0

    .line 595
    :cond_5b
    return-object v0
.end method

.method private blacklist configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 437
    if-eqz p1, :cond_11

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_2b

    .line 441
    :cond_11
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 442
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 443
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 444
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 446
    :goto_2b
    return-void
.end method

.method private blacklist initTitle()V
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_63

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 812
    const v2, 0x1090021

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 814
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10201e3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10201e2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 817
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v0, :cond_3d

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 820
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_48

    .line 821
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :cond_48
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_53

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 827
    :cond_53
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_63

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    :cond_63
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_85

    .line 839
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8c

    .line 837
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    :goto_8c
    return-void
.end method

.method private blacklist setHomeButtonEnabled(ZZ)V
    .registers 3

    .line 536
    if-eqz p2, :cond_4

    .line 537
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 540
    :cond_4
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 544
    return-void

    .line 547
    :cond_9
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 548
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 551
    return-void
.end method

.method private blacklist setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 6

    .line 500
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 506
    :goto_2a
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2f

    move v1, v2

    :cond_2f
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    :cond_32
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_3b

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 511
    :cond_3b
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 512
    return-void
.end method

.method private blacklist updateHomeAccessibility(Z)V
    .registers 3

    .line 554
    if-nez p1, :cond_f

    .line 555
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_1e

    .line 558
    :cond_f
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 559
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :goto_1e
    return-void
.end method


# virtual methods
.method public blacklist canSplit()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist collapseActionView()V
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 455
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 456
    :goto_a
    if-eqz v0, :cond_f

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 459
    :cond_f
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 788
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1260
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1265
    if-nez p1, :cond_6

    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1268
    :cond_6
    return-object p1
.end method

.method public blacklist getCustomView()Landroid/view/View;
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getDisplayOptions()I
    .registers 2

    .line 776
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public blacklist getDropdownItemCount()I
    .registers 2

    .line 756
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist getDropdownSelectedPosition()I
    .registers 2

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getMenu()Landroid/view/Menu;
    .registers 2

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public blacklist getNavigationMode()I
    .registers 2

    .line 772
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 1

    .line 781
    return-object p0
.end method

.method public blacklist hasEmbeddedTabs()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public blacklist hasExpandedActionView()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist hasIcon()Z
    .registers 2

    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasLogo()Z
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist initIndeterminateProgress()V
    .registers 6

    .line 292
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x102049f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public blacklist initProgress()V
    .registers 6

    .line 284
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10204a1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public blacklist isSplit()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public blacklist isTitleTruncated()Z
    .registers 6

    .line 855
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 856
    return v1

    .line 859
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 860
    if-nez v0, :cond_f

    .line 861
    return v1

    .line 864
    :cond_f
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 865
    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_21

    .line 866
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1e

    .line 867
    const/4 v0, 0x1

    return v0

    .line 865
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 870
    :cond_21
    return v1
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 234
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_1d

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_1d
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 242
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_28

    .line 243
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 246
    :cond_28
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz p1, :cond_31

    .line 247
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 250
    :cond_31
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4d

    iget-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz p1, :cond_4d

    .line 251
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 252
    if-eqz p1, :cond_47

    .line 253
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    :cond_47
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 258
    :cond_4d
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 270
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_16

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 276
    :cond_16
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 793
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_32

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 800
    if-eq v0, p0, :cond_32

    .line 801
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 802
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 804
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 807
    :cond_32
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 22

    .line 1095
    move-object/from16 v0, p0

    sub-int v1, p5, p3

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v4, v1, v2

    .line 1097
    if-gtz v4, :cond_12

    .line 1099
    return-void

    .line 1102
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v5

    .line 1103
    const/4 v6, 0x1

    if-eqz v5, :cond_1b

    move v7, v6

    goto :goto_1d

    :cond_1b
    const/4 v1, -0x1

    move v7, v1

    .line 1104
    :goto_1d
    if-eqz v5, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    goto :goto_2b

    :cond_24
    sub-int v1, p4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_2b
    move v8, v1

    .line 1107
    if-eqz v5, :cond_36

    sub-int v1, p4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    :goto_3a
    move v9, v1

    .line 1108
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    .line 1110
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_48

    :cond_46
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1111
    :goto_48
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v2, :cond_5e

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_5e

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_5e

    move v12, v6

    goto :goto_5f

    :cond_5e
    move v12, v11

    .line 1113
    :goto_5f
    nop

    .line 1114
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v2, v13, :cond_7c

    .line 1115
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_74

    .line 1116
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v1

    move v13, v1

    goto :goto_7d

    .line 1117
    :cond_74
    if-eqz v12, :cond_7c

    .line 1118
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v1

    move v13, v1

    goto :goto_7d

    .line 1123
    :cond_7c
    move v13, v11

    :goto_7d
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 1124
    invoke-static {v9, v13, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1123
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v9, v1

    .line 1125
    invoke-static {v9, v13, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    .line 1127
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_d9

    .line 1128
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v2, :pswitch_data_222

    move v9, v5

    goto :goto_da

    .line 1141
    :pswitch_97
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_b4

    .line 1142
    if-eqz v12, :cond_a3

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v1, v2, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    :cond_a3
    move v2, v1

    .line 1143
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 1144
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v12, v1

    move v9, v5

    goto :goto_db

    .line 1141
    :cond_b4
    move v9, v5

    goto :goto_da

    .line 1132
    :pswitch_b6
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d5

    .line 1133
    if-eqz v12, :cond_c4

    .line 1134
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v1, v2, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v2, v1

    goto :goto_c5

    .line 1133
    :cond_c4
    move v2, v1

    .line 1136
    :goto_c5
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    move v9, v5

    add-int/2addr v2, v1

    .line 1137
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v1, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v12, v1

    goto :goto_db

    .line 1132
    :cond_d5
    move v9, v5

    goto :goto_da

    .line 1130
    :pswitch_d7
    move v9, v5

    goto :goto_da

    .line 1127
    :cond_d9
    move v9, v5

    .line 1150
    :goto_da
    move v12, v1

    :goto_db
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_fa

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_fa

    .line 1151
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v5, v9, 0x1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1152
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v1, v7

    add-int v8, v2, v1

    move v2, v8

    goto :goto_fb

    .line 1150
    :cond_fa
    move v2, v8

    .line 1155
    :goto_fb
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_116

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1156
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_116

    .line 1157
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    xor-int/lit8 v5, v9, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1158
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v1, v7

    add-int/2addr v2, v1

    .line 1161
    :cond_116
    nop

    .line 1162
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_121

    .line 1163
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_12e

    .line 1164
    :cond_121
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_12d

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_12d

    .line 1166
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto :goto_12e

    .line 1168
    :cond_12d
    move-object v1, v4

    :goto_12e
    if-eqz v1, :cond_1ff

    .line 1169
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v5

    .line 1170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1171
    instance-of v10, v8, Landroid/app/ActionBar$LayoutParams;

    if-eqz v10, :cond_140

    .line 1172
    move-object v4, v8

    check-cast v4, Landroid/app/ActionBar$LayoutParams;

    goto :goto_141

    :cond_140
    nop

    .line 1173
    :goto_141
    if-eqz v4, :cond_146

    iget v8, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_149

    :cond_146
    const v8, 0x800013

    .line 1174
    :goto_149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1176
    nop

    .line 1177
    nop

    .line 1178
    if-eqz v4, :cond_164

    .line 1179
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v13

    invoke-static {v12, v13, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v12

    .line 1180
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v13

    mul-int/2addr v7, v13

    add-int/2addr v2, v7

    .line 1181
    iget v7, v4, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 1182
    iget v4, v4, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    goto :goto_166

    .line 1178
    :cond_164
    move v4, v11

    move v7, v4

    .line 1185
    :goto_166
    const v13, 0x800007

    and-int/2addr v13, v8

    .line 1187
    if-ne v13, v6, :cond_18e

    .line 1188
    iget v6, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    iget v14, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v6, v14

    sub-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x2

    .line 1189
    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eqz v9, :cond_183

    .line 1190
    add-int v3, v6, v10

    .line 1191
    nop

    .line 1192
    if-le v3, v12, :cond_17f

    .line 1193
    move v13, v14

    goto :goto_182

    .line 1194
    :cond_17f
    if-ge v6, v2, :cond_182

    .line 1195
    move v13, v15

    .line 1197
    :cond_182
    :goto_182
    goto :goto_194

    .line 1198
    :cond_183
    nop

    .line 1199
    add-int v3, v6, v10

    .line 1200
    if-ge v6, v12, :cond_18a

    .line 1201
    move v13, v15

    goto :goto_194

    .line 1202
    :cond_18a
    if-le v3, v2, :cond_194

    .line 1203
    move v13, v14

    goto :goto_194

    .line 1206
    :cond_18e
    if-nez v8, :cond_194

    .line 1207
    const v13, 0x800003

    goto :goto_195

    .line 1206
    :cond_194
    :goto_194
    nop

    .line 1210
    :goto_195
    nop

    .line 1211
    invoke-static {v13, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_22c

    :pswitch_19d
    move v2, v11

    goto :goto_1b4

    .line 1219
    :pswitch_19f
    if-eqz v9, :cond_1a4

    sub-int v2, v12, v10

    goto :goto_1b4

    :cond_1a4
    sub-int/2addr v2, v10

    goto :goto_1b4

    .line 1216
    :pswitch_1a6
    if-eqz v9, :cond_1a9

    goto :goto_1aa

    :cond_1a9
    move v2, v12

    .line 1217
    :goto_1aa
    goto :goto_1b4

    .line 1213
    :pswitch_1ab
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    .line 1214
    nop

    .line 1223
    :goto_1b4
    and-int/lit8 v3, v8, 0x70

    .line 1225
    if-nez v8, :cond_1ba

    .line 1226
    const/16 v3, 0x10

    .line 1229
    :cond_1ba
    nop

    .line 1230
    sparse-switch v3, :sswitch_data_23a

    goto :goto_1ee

    .line 1240
    :sswitch_1bf
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v4

    goto :goto_1ee

    .line 1237
    :sswitch_1d0
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v11, v3, v7

    .line 1238
    goto :goto_1ee

    .line 1232
    :sswitch_1d7
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    .line 1233
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1234
    sub-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v4, v3

    div-int/lit8 v11, v4, 0x2

    .line 1235
    nop

    .line 1244
    :goto_1ee
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1245
    add-int v4, v2, v3

    .line 1246
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v11

    .line 1245
    invoke-virtual {v1, v2, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1247
    invoke-static {v12, v3, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    .line 1250
    :cond_1ff
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_221

    .line 1251
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1252
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1253
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v4, v1

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1254
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v5, v0

    .line 1253
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1256
    :cond_221
    return-void

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_b6
        :pswitch_97
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_1ab
        :pswitch_19d
        :pswitch_1a6
        :pswitch_19d
        :pswitch_19f
    .end packed-switch

    :sswitch_data_23a
    .sparse-switch
        0x10 -> :sswitch_1d7
        0x30 -> :sswitch_1d0
        0x50 -> :sswitch_1bf
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 20

    .line 875
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    .line 876
    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    .line 877
    nop

    .line 878
    move v2, v4

    move v5, v2

    :goto_10
    if-ge v2, v1, :cond_31

    .line 879
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 880
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_2e

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne v6, v7, :cond_28

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 881
    invoke-virtual {v7}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_2e

    :cond_28
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v6, v7, :cond_2e

    .line 883
    add-int/lit8 v5, v5, 0x1

    .line 878
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 887
    :cond_31
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 888
    move v6, v4

    :goto_38
    if-ge v6, v2, :cond_4b

    .line 889
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 890
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_48

    .line 891
    add-int/lit8 v5, v5, 0x1

    .line 888
    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 895
    :cond_4b
    if-nez v5, :cond_51

    .line 897
    invoke-virtual {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 898
    return-void

    .line 902
    :cond_51
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 903
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_2e5

    .line 908
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 909
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_2c4

    .line 914
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 916
    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-ltz v7, :cond_6c

    .line 917
    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_70

    :cond_6c
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 919
    :goto_70
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 920
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v9

    .line 921
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v10

    .line 922
    sub-int v11, v7, v8

    .line 923
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 924
    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 926
    sub-int v9, v2, v9

    sub-int/2addr v9, v10

    .line 927
    div-int/lit8 v10, v9, 0x2

    .line 928
    nop

    .line 930
    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_a4

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    if-eq v14, v3, :cond_a4

    iget v14, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v14, v3

    if-eqz v14, :cond_a4

    const/4 v14, 0x1

    goto :goto_a5

    :cond_a4
    move v14, v4

    .line 933
    :goto_a5
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v15, :cond_ac

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_ae

    :cond_ac
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 935
    :goto_ae
    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 937
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v3, :cond_bb

    .line 938
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_c1

    .line 940
    :cond_bb
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 951
    :goto_c1
    invoke-virtual {v15, v3, v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 953
    nop

    .line 954
    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_d5

    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_d7

    :cond_d5
    if-eqz v14, :cond_ed

    .line 956
    :cond_d7
    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v3

    .line 957
    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v4

    add-int/2addr v4, v3

    .line 958
    sub-int/2addr v9, v4

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 959
    sub-int v4, v9, v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_ef

    .line 954
    :cond_ed
    move v4, v10

    const/4 v3, 0x0

    .line 962
    :goto_ef
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v15, :cond_10d

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v15}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-ne v15, v0, :cond_10d

    .line 963
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v0, v15, v9, v13, v5}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v9

    .line 964
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v13}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v10, v13

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 967
    :cond_10d
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_12d

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 968
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    const/16 v13, 0x8

    if-eq v5, v13, :cond_12d

    .line 969
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v15, 0x0

    invoke-virtual {v0, v5, v9, v12, v15}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v9

    .line 971
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 972
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v10, v5

    .line 971
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 975
    :cond_12d
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v5, :cond_1a3

    .line 976
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v5, :pswitch_data_306

    goto :goto_1a3

    .line 991
    :pswitch_137
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_1a3

    .line 992
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v14, :cond_141

    mul-int/lit8 v5, v5, 0x2

    .line 993
    :cond_141
    sub-int/2addr v9, v5

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 994
    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 995
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 996
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 997
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 995
    invoke-virtual {v5, v12, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 998
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v5

    .line 999
    sub-int/2addr v9, v5

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1000
    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1a3

    .line 978
    :pswitch_16d
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1a3

    .line 979
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v14, :cond_177

    mul-int/lit8 v5, v5, 0x2

    .line 980
    :cond_177
    sub-int/2addr v9, v5

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 981
    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 982
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 983
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 984
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 982
    invoke-virtual {v5, v12, v14}, Landroid/widget/LinearLayout;->measure(II)V

    .line 985
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    .line 986
    sub-int/2addr v9, v5

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 987
    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 988
    nop

    .line 1006
    :cond_1a3
    :goto_1a3
    nop

    .line 1007
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v5, :cond_1ac

    .line 1008
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_1ba

    .line 1009
    :cond_1ac
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1b9

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v5, :cond_1b9

    .line 1011
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto :goto_1ba

    .line 1014
    :cond_1b9
    move-object v5, v12

    :goto_1ba
    if-eqz v5, :cond_24d

    .line 1015
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1016
    instance-of v14, v13, Landroid/app/ActionBar$LayoutParams;

    if-eqz v14, :cond_1cc

    .line 1017
    move-object v12, v13

    check-cast v12, Landroid/app/ActionBar$LayoutParams;

    goto :goto_1cd

    :cond_1cc
    nop

    .line 1019
    :goto_1cd
    nop

    .line 1020
    nop

    .line 1021
    if-eqz v12, :cond_1dd

    .line 1022
    iget v14, v12, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    iget v15, v12, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    .line 1023
    iget v15, v12, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v6, v12, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v15

    move v15, v14

    goto :goto_1df

    .line 1021
    :cond_1dd
    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 1029
    :goto_1df
    iget v14, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 p2, v3

    const/4 v3, -0x2

    if-gtz v14, :cond_1e9

    .line 1030
    const/high16 v14, -0x80000000

    goto :goto_1f2

    .line 1032
    :cond_1e9
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v14, v3, :cond_1f0

    .line 1033
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_1f2

    :cond_1f0
    const/high16 v14, -0x80000000

    .line 1035
    :goto_1f2
    nop

    .line 1036
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_1fd

    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_1fd
    sub-int/2addr v11, v6

    .line 1035
    const/4 v3, 0x0

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1038
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v3, v11, :cond_20b

    .line 1039
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_20d

    :cond_20b
    const/high16 v3, -0x80000000

    .line 1040
    :goto_20d
    nop

    .line 1041
    iget v11, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v11, :cond_219

    iget v11, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_21a

    :cond_219
    move v11, v9

    :goto_21a
    sub-int/2addr v11, v15

    .line 1040
    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1043
    if-eqz v12, :cond_227

    iget v8, v12, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_22a

    :cond_227
    const v8, 0x800013

    :goto_22a
    and-int/lit8 v8, v8, 0x7

    .line 1048
    const/4 v12, 0x1

    if-ne v8, v12, :cond_23a

    iget v8, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_23a

    .line 1049
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/lit8 v11, v8, 0x2

    .line 1052
    :cond_23a
    nop

    .line 1053
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1054
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1052
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1055
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v15, v3

    sub-int/2addr v9, v15

    goto :goto_251

    .line 1014
    :cond_24d
    move/from16 p2, v3

    move/from16 v16, v8

    .line 1062
    :goto_251
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    add-int v9, v9, p2

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 1063
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1062
    const/4 v15, 0x0

    invoke-virtual {v0, v3, v9, v5, v15}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 1064
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_26f

    .line 1065
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 1068
    :cond_26f
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v3, :cond_28b

    .line 1069
    nop

    .line 1070
    move v4, v15

    :goto_275
    if-ge v4, v1, :cond_287

    .line 1071
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1072
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v16

    .line 1073
    if-le v3, v15, :cond_284

    .line 1074
    move v15, v3

    .line 1070
    :cond_284
    add-int/lit8 v4, v4, 0x1

    goto :goto_275

    .line 1077
    :cond_287
    invoke-virtual {v0, v2, v15}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1078
    goto :goto_28e

    .line 1079
    :cond_28b
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1082
    :goto_28e
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_29b

    .line 1083
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1086
    :cond_29b
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2c3

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v13, 0x8

    if-eq v1, v13, :cond_2c3

    .line 1087
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1089
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1087
    invoke-virtual {v1, v2, v0}, Landroid/widget/ProgressBar;->measure(II)V

    .line 1091
    :cond_2c3
    return-void

    .line 910
    :cond_2c4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_2e5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_306
    .packed-switch 0x1
        :pswitch_16d
        :pswitch_137
    .end packed-switch
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1287
    check-cast p1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1289
    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1291
    iget v0, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_22

    .line 1293
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_22

    .line 1295
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1299
    :cond_22
    iget-boolean p1, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_29

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1302
    :cond_29
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1273
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1d

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1280
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1282
    return-object v1
.end method

.method public blacklist setCollapsible(Z)V
    .registers 2

    .line 848
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 849
    return-void
.end method

.method public blacklist setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2

    .line 844
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 845
    return-void
.end method

.method public blacklist setCustomView(Landroid/view/View;)V
    .registers 4

    .line 462
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 463
    :goto_9
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 466
    :cond_14
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 467
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 468
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 470
    :cond_21
    return-void
.end method

.method public blacklist setDefaultNavigationContentDescription(I)V
    .registers 3

    .line 1330
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_5

    .line 1331
    return-void

    .line 1333
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1334
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1335
    return-void
.end method

.method public blacklist setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    return-void
.end method

.method public blacklist setDisplayOptions(I)V
    .registers 8

    .line 599
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_a

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v1, p1, v0

    .line 600
    :goto_a
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 602
    and-int/lit8 v0, v1, 0x3f

    if-eqz v0, :cond_bf

    .line 604
    and-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_27

    .line 605
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 606
    :goto_1d
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 612
    if-eqz v0, :cond_27

    .line 613
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 617
    :cond_27
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_42

    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_35

    move v0, v3

    goto :goto_36

    :cond_35
    move v0, v2

    .line 619
    :goto_36
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    :cond_3d
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_3f
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 622
    :cond_42
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_55

    .line 623
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4e

    .line 624
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    goto :goto_55

    .line 626
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_55
    :goto_55
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5b

    move v0, v3

    goto :goto_5c

    :cond_5b
    move v0, v2

    .line 631
    :goto_5c
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_64

    move v4, v3

    goto :goto_65

    :cond_64
    move v4, v2

    .line 632
    :goto_65
    if-nez v0, :cond_6b

    if-eqz v4, :cond_6b

    move v4, v3

    goto :goto_6c

    :cond_6b
    move v4, v2

    .line 633
    :goto_6c
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 635
    if-nez v0, :cond_75

    if-eqz v4, :cond_7b

    :cond_75
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_7b

    .line 636
    move v0, v2

    goto :goto_7d

    :cond_7b
    const/16 v0, 0x8

    .line 637
    :goto_7d
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 639
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_99

    .line 640
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_94

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_99

    .line 643
    :cond_94
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 647
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_bb

    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_bb

    .line 649
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_b1

    .line 650
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 651
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_bb

    .line 653
    :cond_b1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 654
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 658
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 659
    goto :goto_c2

    .line 660
    :cond_bf
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    .line 664
    :goto_c2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 665
    return-void
.end method

.method public blacklist setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4

    .line 747
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 748
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_12

    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 751
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 753
    :cond_12
    return-void
.end method

.method public blacklist setDropdownSelectedPosition(I)V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 761
    return-void
.end method

.method public blacklist setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 357
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 358
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 359
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 362
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 366
    :cond_30
    return-void
.end method

.method public blacklist setHomeButtonEnabled(Z)V
    .registers 3

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 533
    return-void
.end method

.method public blacklist setIcon(I)V
    .registers 3

    .line 679
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 668
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    if-eqz p1, :cond_13

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 671
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_13
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2a

    .line 674
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 676
    :cond_2a
    return-void
.end method

.method public blacklist setLogo(I)V
    .registers 3

    .line 694
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 695
    return-void
.end method

.method public blacklist setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 687
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 688
    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 691
    :cond_f
    return-void
.end method

.method public blacklist setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 8

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_17

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 380
    :cond_17
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 381
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_2e

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    if-eqz v0, :cond_2e

    .line 385
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v0, :cond_50

    .line 389
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 391
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v0, 0x10201e7

    invoke-virtual {p2, v0}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 392
    new-instance p2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView-IA;)V

    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 396
    :cond_50
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_87

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 403
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/widget/ActionMenuView;

    .line 404
    invoke-virtual {p1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 405
    if-eqz v0, :cond_83

    if-eq v0, p0, :cond_83

    .line 406
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    :cond_83
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    goto :goto_db

    .line 410
    :cond_87
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 412
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 412
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 415
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 417
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 420
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/widget/ActionMenuView;

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d8

    .line 422
    invoke-virtual {p1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 423
    if-eqz v0, :cond_cb

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_cb

    .line 424
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    :cond_cb
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    goto :goto_db

    .line 430
    :cond_d8
    invoke-virtual {p1, p2}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :goto_db
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 434
    return-void
.end method

.method public blacklist setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4

    .line 1340
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 1341
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1343
    :cond_9
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_12

    .line 1344
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1346
    :cond_12
    return-void
.end method

.method public blacklist setMenuPrepared()V
    .registers 2

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 370
    return-void
.end method

.method public blacklist setNavigationContentDescription(I)V
    .registers 3

    .line 1323
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1324
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1325
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1326
    return-void
.end method

.method public blacklist setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1318
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1319
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1320
    return-void
.end method

.method public blacklist setNavigationIcon(I)V
    .registers 3

    .line 1314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1315
    return-void
.end method

.method public blacklist setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1305
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    return-void
.end method

.method public blacklist setNavigationMode(I)V
    .registers 6

    .line 702
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 703
    if-eq p1, v0, :cond_8b

    .line 704
    packed-switch v0, :pswitch_data_8c

    goto :goto_1f

    .line 711
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1f

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_1f

    .line 706
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 716
    :cond_1f
    :goto_1f
    packed-switch p1, :pswitch_data_94

    goto :goto_86

    .line 736
    :pswitch_23
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_86

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_86

    .line 718
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_68

    .line 719
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v2, 0x10102d7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v1, 0x10201e1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setId(I)V

    .line 722
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v2, 0x10102f4

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 724
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 726
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 727
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    :cond_68
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_79

    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 732
    :cond_79
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 734
    nop

    .line 741
    :cond_86
    :goto_86
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 744
    :cond_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_8
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_31
        :pswitch_23
    .end packed-switch
.end method

.method public blacklist setSplitToolbar(Z)V
    .registers 5

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8c

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_41

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    if-eqz v0, :cond_17

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_17
    if-eqz p1, :cond_2e

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3c

    .line 313
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 318
    :cond_41
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4c

    move v2, v1

    goto :goto_4e

    :cond_4c
    const/16 v2, 0x8

    :goto_4e
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    :cond_51
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_89

    .line 323
    if-nez p1, :cond_68

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_89

    .line 328
    :cond_68
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 330
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 336
    :cond_89
    :goto_89
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 338
    :cond_8c
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 519
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_14

    move p1, v1

    goto :goto_15

    :cond_14
    move p1, v2

    :goto_15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_33

    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    :cond_31
    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    move p1, v1

    .line 526
    :goto_34
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 529
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public blacklist setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 266
    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 494
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 497
    :cond_7
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method
