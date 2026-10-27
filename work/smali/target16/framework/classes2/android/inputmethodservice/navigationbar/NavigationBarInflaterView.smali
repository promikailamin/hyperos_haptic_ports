.class public final Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"


# static fields
.field private static final blacklist ABSOLUTE_SUFFIX:Ljava/lang/String; = "A"

.field private static final blacklist ABSOLUTE_VERTICAL_CENTERED_SUFFIX:Ljava/lang/String; = "C"

.field public static final blacklist BACK:Ljava/lang/String; = "back"

.field public static final blacklist BUTTON_SEPARATOR:Ljava/lang/String; = ","

.field public static final blacklist CLIPBOARD:Ljava/lang/String; = "clipboard"

.field private static final blacklist CONFIG_NAV_BAR_LAYOUT_HANDLE:Ljava/lang/String; = "back[70AC];home_handle;ime_switcher[70AC]"

.field public static final blacklist CONTEXTUAL:Ljava/lang/String; = "contextual"

.field public static final blacklist GRAVITY_SEPARATOR:Ljava/lang/String; = ";"

.field public static final blacklist HOME:Ljava/lang/String; = "home"

.field public static final blacklist HOME_HANDLE:Ljava/lang/String; = "home_handle"

.field public static final blacklist IME_SWITCHER:Ljava/lang/String; = "ime_switcher"

.field public static final blacklist KEY:Ljava/lang/String; = "key"

.field public static final blacklist KEY_CODE_END:Ljava/lang/String; = ")"

.field public static final blacklist KEY_CODE_START:Ljava/lang/String; = "("

.field public static final blacklist KEY_IMAGE_DELIM:Ljava/lang/String; = ":"

.field public static final blacklist LEFT:Ljava/lang/String; = "left"

.field public static final blacklist MENU_IME_ROTATE:Ljava/lang/String; = "menu_ime"

.field public static final blacklist NAVSPACE:Ljava/lang/String; = "space"

.field public static final blacklist NAV_BAR_LEFT:Ljava/lang/String; = "sysui_nav_bar_left"

.field public static final blacklist NAV_BAR_RIGHT:Ljava/lang/String; = "sysui_nav_bar_right"

.field public static final blacklist NAV_BAR_VIEWS:Ljava/lang/String; = "sysui_nav_bar"

.field public static final blacklist RECENT:Ljava/lang/String; = "recent"

.field public static final blacklist RIGHT:Ljava/lang/String; = "right"

.field public static final blacklist SIZE_MOD_END:Ljava/lang/String; = "]"

.field public static final blacklist SIZE_MOD_START:Ljava/lang/String; = "["

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarInflater"

.field private static final blacklist WEIGHT_CENTERED_SUFFIX:Ljava/lang/String; = "WC"

.field private static final blacklist WEIGHT_SUFFIX:Ljava/lang/String; = "W"


# instance fields
.field private blacklist mAlternativeOrder:Z

.field blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mHorizontal:Landroid/widget/FrameLayout;

.field protected blacklist mLandscapeInflater:Landroid/view/LayoutInflater;

.field private blacklist mLastLandscape:Landroid/view/View;

.field private blacklist mLastPortrait:Landroid/view/View;

.field protected blacklist mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createInflaters()V

    .line 93
    return-void
.end method

.method private blacklist addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .registers 6

    .line 170
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 177
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 178
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 170
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_30
    return-void
.end method

.method private blacklist addGravitySpacer(Landroid/widget/LinearLayout;)V
    .registers 6

    .line 216
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method

.method private blacklist addToDispatchers(Landroid/view/View;)V
    .registers 5

    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_32

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 397
    if-ltz v0, :cond_1b

    .line 398
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 400
    :cond_1b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    .line 401
    check-cast p1, Landroid/view/ViewGroup;

    .line 402
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 403
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_32

    .line 404
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 408
    :cond_32
    return-void
.end method

.method private blacklist applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 10

    .line 261
    invoke-static {p2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 262
    if-nez p2, :cond_7

    return-object p1

    .line 264
    :cond_7
    const-string v0, "W"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "A"

    if-nez v1, :cond_28

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_28

    .line 303
    :cond_18
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 305
    iget p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    return-object p1

    .line 267
    :cond_28
    :goto_28
    new-instance v1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    if-eqz p3, :cond_42

    if-eqz p4, :cond_3f

    const/16 p3, 0x30

    goto :goto_4b

    :cond_3f
    const/16 p3, 0x50

    goto :goto_4b

    .line 272
    :cond_42
    if-eqz p4, :cond_48

    const p3, 0x800003

    goto :goto_4b

    :cond_48
    const p3, 0x800005

    .line 273
    :goto_4b
    const-string p4, "WC"

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_56

    .line 274
    const/16 p3, 0x11

    goto :goto_60

    .line 275
    :cond_56
    const-string p4, "C"

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_60

    .line 276
    const/16 p3, 0x10

    .line 280
    :cond_60
    :goto_60
    invoke-virtual {v1, p3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 281
    invoke-virtual {v1, p3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    .line 283
    invoke-virtual {v1, p1, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, -0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_87

    .line 287
    nop

    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 289
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p4, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p2}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    goto :goto_a2

    .line 291
    :cond_87
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 291
    invoke-static {p1, p2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->convertDpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 293
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    :goto_a2
    invoke-virtual {v1, p4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipChildren(Z)V

    .line 298
    invoke-virtual {v1, p4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipToPadding(Z)V

    .line 300
    return-object v1
.end method

.method private blacklist clearAllChildren(Landroid/view/ViewGroup;)V
    .registers 4

    .line 421
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    :cond_13
    return-void
.end method

.method private blacklist clearViews()V
    .registers 3

    .line 411
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    .line 412
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 413
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->clear()V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 416
    :cond_1b
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020381

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 418
    return-void
.end method

.method private static blacklist convertDpToPx(Landroid/content/Context;F)F
    .registers 2

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private blacklist copy(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 227
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_12

    .line 228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0

    .line 231
    :cond_12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static blacklist extractButton(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 388
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 389
    return-object p0

    .line 391
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 380
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 381
    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .registers 7

    .line 221
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 222
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_c
    return-void
.end method

.method private blacklist inflateChildren()V
    .registers 4

    .line 112
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->removeAllViews()V

    .line 113
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 116
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 118
    return-void
.end method

.method private blacklist initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .registers 4

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020383

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 165
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020382

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 167
    return-void
.end method

.method private blacklist updateAlternativeOrder()V
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020383

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020382

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private blacklist updateAlternativeOrder(Landroid/view/View;)V
    .registers 3

    .line 156
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    if-eqz v0, :cond_b

    .line 157
    check-cast p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 159
    :cond_b
    return-void
.end method


# virtual methods
.method blacklist createInflaters()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 97
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 98
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 99
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 100
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 101
    return-void
.end method

.method blacklist createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 8

    .line 310
    nop

    .line 311
    invoke-static {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "menu_ime"

    const-string v2, "space"

    if-eqz v0, :cond_16

    .line 313
    invoke-static {v2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    .line 314
    :cond_16
    const-string v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 315
    invoke-static {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    :cond_22
    :goto_22
    const-string v0, "home"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_8a

    .line 319
    :cond_2b
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3c

    .line 320
    const p1, 0x1090092

    invoke-virtual {p3, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_8b

    .line 322
    :cond_3c
    const-string v0, "recent"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_8a

    .line 324
    :cond_45
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_8a

    .line 326
    :cond_4c
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_8a

    .line 328
    :cond_53
    const-string v0, "clipboard"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_8a

    .line 330
    :cond_5c
    const-string v0, "contextual"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_8a

    .line 332
    :cond_65
    const-string v0, "home_handle"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 333
    const p1, 0x1090093

    invoke-virtual {p3, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_8b

    .line 335
    :cond_75
    const-string v0, "ime_switcher"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 336
    const p1, 0x1090094

    invoke-virtual {p3, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_8b

    .line 338
    :cond_85
    const-string p2, "key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 356
    :goto_8a
    const/4 p1, 0x0

    :goto_8b
    return-object p1
.end method

.method blacklist getDefaultLayout()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "back[70AC];home_handle;ime_switcher[70AC]"

    return-object v0
.end method

.method protected blacklist inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .registers 6

    .line 237
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 238
    :goto_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 239
    if-nez v0, :cond_f

    const/4 p1, 0x0

    return-object p1

    .line 241
    :cond_f
    invoke-direct {p0, v0, p1, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object p1

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 244
    if-eqz p3, :cond_1e

    iget-object p2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_20

    :cond_1e
    iget-object p2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 245
    :goto_20
    nop

    .line 246
    instance-of p4, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz p4, :cond_2e

    .line 247
    move-object p4, p1

    check-cast p4, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    goto :goto_2f

    .line 246
    :cond_2e
    move-object p4, p1

    .line 249
    :goto_2f
    if-eqz p2, :cond_38

    .line 250
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 252
    :cond_38
    if-eqz p3, :cond_3d

    .line 253
    iput-object p4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_3f

    .line 255
    :cond_3d
    iput-object p4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 257
    :goto_3f
    return-object p1
.end method

.method protected blacklist inflateLayout(Ljava/lang/String;)V
    .registers 8

    .line 184
    if-nez p1, :cond_6

    .line 185
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 187
    :cond_6
    const-string v0, ";"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 188
    array-length v2, p1

    if-eq v2, v1, :cond_1f

    .line 189
    const-string p1, "NavBarInflater"

    const-string v2, "Invalid layout."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_1f
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 195
    const/4 v5, 0x2

    aget-object p1, p1, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v5, 0x1020383

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 201
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v2, 0x1020382

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v1, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 205
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 208
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 212
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 213
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateChildren()V

    .line 107
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 108
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method blacklist setAlternativeOrder(Z)V
    .registers 3

    .line 142
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_9

    .line 143
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 144
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 146
    :cond_9
    return-void
.end method

.method blacklist setButtonDispatchers(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 126
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 127
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 129
    :cond_15
    return-void
.end method

.method blacklist updateButtonDispatchersCurrentView()V
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1d

    .line 133
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 134
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 135
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    .line 136
    invoke-virtual {v2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 139
    :cond_1d
    return-void
.end method
