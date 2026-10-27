.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$PointerIconVectorStyleStroke;,
        Landroid/view/PointerIcon$PointerIconVectorStyleFill;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_POINTER_SCALE:F = 1.0f

.field public static final blacklist LARGE_POINTER_SCALE:F = 2.5f

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_BEGIN:I = 0x0

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_BLACK:I = 0x0

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_BLUE:I = 0x4

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_END:I = 0x5

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_GREEN:I = 0x1

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_PINK:I = 0x3

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_PURPLE:I = 0x5

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_FILL_RED:I = 0x2

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_STROKE_BEGIN:I = 0x0

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_STROKE_BLACK:I = 0x1

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_STROKE_END:I = 0x2

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_STROKE_NONE:I = 0x2

.field public static final blacklist POINTER_ICON_VECTOR_STYLE_STROKE_WHITE:I = 0x0

.field private static final blacklist SYSTEM_ICONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PointerIcon"

.field public static final whitelist TYPE_ALIAS:I = 0x3f2

.field public static final whitelist TYPE_ALL_SCROLL:I = 0x3f5

.field public static final whitelist TYPE_ARROW:I = 0x3e8

.field public static final whitelist TYPE_CELL:I = 0x3ee

.field public static final whitelist TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final whitelist TYPE_COPY:I = 0x3f3

.field public static final whitelist TYPE_CROSSHAIR:I = 0x3ef

.field public static final greylist-max-o TYPE_CUSTOM:I = -0x1

.field public static final whitelist TYPE_DEFAULT:I = 0x3e8

.field public static final whitelist TYPE_GRAB:I = 0x3fc

.field public static final whitelist TYPE_GRABBING:I = 0x3fd

.field public static final whitelist TYPE_HAND:I = 0x3ea

.field public static final whitelist TYPE_HANDWRITING:I = 0x3fe

.field public static final whitelist TYPE_HELP:I = 0x3eb

.field public static final whitelist TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final greylist-max-o TYPE_NOT_SPECIFIED:I = 0x1

.field public static final whitelist TYPE_NO_DROP:I = 0x3f4

.field public static final whitelist TYPE_NULL:I = 0x0

.field private static final greylist-max-o TYPE_OEM_FIRST:I = 0x2710

.field public static final greylist-max-o TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final greylist-max-o TYPE_SPOT_HOVER:I = 0x7d0

.field public static final greylist-max-o TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final whitelist TYPE_TEXT:I = 0x3f0

.field public static final whitelist TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final whitelist TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final whitelist TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final whitelist TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final whitelist TYPE_WAIT:I = 0x3ec

.field public static final whitelist TYPE_ZOOM_IN:I = 0x3fa

.field public static final whitelist TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private greylist-max-r mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-r mBitmapFrames:[Landroid/graphics/Bitmap;

.field private blacklist mDrawNativeDropShadow:Z

.field private greylist-max-r mDurationPerFrame:I

.field private greylist-max-r mHotSpotX:F

.field private greylist-max-r mHotSpotY:F

.field private final greylist-max-p mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDrawNativeDropShadow(Landroid/view/PointerIcon;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/PointerIcon;->mDrawNativeDropShadow:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSystemIcon(I)Landroid/view/PointerIcon;
    .registers 1

    invoke-static {p0}, Landroid/view/PointerIcon;->getSystemIcon(I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    nop

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->SYSTEM_ICONS:Landroid/util/SparseArray;

    .line 394
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    .line 239
    return-void
.end method

.method public static whitelist create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 5

    .line 346
    if-eqz p0, :cond_13

    .line 349
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FFZ)V

    .line 351
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 352
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 353
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 354
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 355
    return-object v0

    .line 347
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getBitmapDrawableFromVectorDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;F)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    .line 495
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 496
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 497
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int p3, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 495
    const/4 v3, 0x1

    invoke-static {v0, v1, p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 499
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 500
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 501
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 502
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private greylist-max-o getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .registers 9

    .line 473
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 475
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p1

    .line 476
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 477
    return-object v0

    .line 480
    :cond_19
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 481
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, p1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v1, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 484
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 486
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 487
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 488
    return-object p1
.end method

.method public static blacklist getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;
    .registers 11

    .line 281
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7a

    .line 285
    const/4 v0, -0x1

    if-eq p1, v0, :cond_72

    .line 289
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v1

    .line 290
    const/16 v2, 0x3e8

    if-gez v1, :cond_12

    .line 291
    invoke-static {v2}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v1

    .line 295
    :cond_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableVectorCursorA11ySettings()Z

    move-result v3

    const v4, 0x1030472

    if-eqz v3, :cond_1c

    .line 296
    goto :goto_2c

    .line 300
    :cond_1c
    if-eqz p2, :cond_22

    .line 301
    const v4, 0x1030339

    goto :goto_2c

    .line 302
    :cond_22
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableVectorCursors()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 303
    goto :goto_2c

    .line 305
    :cond_29
    const v4, 0x1030345

    .line 308
    :goto_2c
    const/4 v3, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 312
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    if-ne v1, v0, :cond_61

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing theme resources for pointer icon type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PointerIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-ne p1, v2, :cond_5c

    .line 317
    invoke-static {v6}, Landroid/view/PointerIcon;->getSystemIcon(I)Landroid/view/PointerIcon;

    move-result-object p0

    goto :goto_60

    .line 318
    :cond_5c
    invoke-static {p0, v2, p2, p3}, Landroid/view/PointerIcon;->getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;

    move-result-object p0

    .line 316
    :goto_60
    return-object p0

    .line 321
    :cond_61
    new-instance p2, Landroid/view/PointerIcon;

    invoke-direct {p2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {p2, p1, v1, p0, p3}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;F)V

    .line 323
    return-object p2

    .line 286
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Custom icons must be loaded when they\'re created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_7a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot load icon for type TYPE_NOT_SPECIFIED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getSystemIcon(I)Landroid/view/PointerIcon;
    .registers 3

    .line 263
    const/4 v0, -0x1

    if-eq p0, v0, :cond_18

    .line 266
    sget-object v0, Landroid/view/PointerIcon;->SYSTEM_ICONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 267
    if-nez v0, :cond_17

    .line 268
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, p0}, Landroid/view/PointerIcon;-><init>(I)V

    .line 269
    sget-object v1, Landroid/view/PointerIcon;->SYSTEM_ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :cond_17
    return-object v0

    .line 264
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot get system icon for TYPE_CUSTOM"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 2

    .line 251
    if-eqz p0, :cond_7

    .line 259
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIcon(I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 257
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o getSystemIconTypeIndex(I)I
    .registers 1

    .line 614
    sparse-switch p0, :sswitch_data_48

    .line 668
    const/4 p0, -0x1

    return p0

    .line 622
    :sswitch_5
    const/16 p0, 0xe

    return p0

    .line 620
    :sswitch_8
    const/16 p0, 0x10

    return p0

    .line 618
    :sswitch_b
    const/16 p0, 0xf

    return p0

    .line 666
    :sswitch_e
    const/16 p0, 0xa

    return p0

    .line 664
    :sswitch_11
    const/16 p0, 0x8

    return p0

    .line 662
    :sswitch_14
    const/4 p0, 0x7

    return p0

    .line 660
    :sswitch_16
    const/16 p0, 0x18

    return p0

    .line 658
    :sswitch_19
    const/16 p0, 0x17

    return p0

    .line 655
    :sswitch_1c
    const/16 p0, 0x12

    return p0

    .line 652
    :sswitch_1f
    const/16 p0, 0x13

    return p0

    .line 650
    :sswitch_22
    const/16 p0, 0x14

    return p0

    .line 648
    :sswitch_25
    const/16 p0, 0xc

    return p0

    .line 644
    :sswitch_28
    const/4 p0, 0x1

    return p0

    .line 646
    :sswitch_2a
    const/16 p0, 0xd

    return p0

    .line 642
    :sswitch_2d
    const/4 p0, 0x5

    return p0

    .line 640
    :sswitch_2f
    const/4 p0, 0x0

    return p0

    .line 638
    :sswitch_31
    const/16 p0, 0x15

    return p0

    .line 636
    :sswitch_34
    const/16 p0, 0x11

    return p0

    .line 634
    :sswitch_37
    const/4 p0, 0x6

    return p0

    .line 632
    :sswitch_39
    const/4 p0, 0x3

    return p0

    .line 630
    :sswitch_3b
    const/16 p0, 0x16

    return p0

    .line 628
    :sswitch_3e
    const/16 p0, 0xb

    return p0

    .line 624
    :sswitch_41
    const/16 p0, 0x9

    return p0

    .line 626
    :sswitch_44
    const/4 p0, 0x4

    return p0

    .line 616
    :sswitch_46
    const/4 p0, 0x2

    return p0

    :sswitch_data_48
    .sparse-switch
        0x3e8 -> :sswitch_46
        0x3e9 -> :sswitch_44
        0x3ea -> :sswitch_41
        0x3eb -> :sswitch_3e
        0x3ec -> :sswitch_3b
        0x3ee -> :sswitch_39
        0x3ef -> :sswitch_37
        0x3f0 -> :sswitch_34
        0x3f1 -> :sswitch_31
        0x3f2 -> :sswitch_2f
        0x3f3 -> :sswitch_2d
        0x3f4 -> :sswitch_2a
        0x3f5 -> :sswitch_28
        0x3f6 -> :sswitch_25
        0x3f7 -> :sswitch_22
        0x3f8 -> :sswitch_1f
        0x3f9 -> :sswitch_1c
        0x3fa -> :sswitch_19
        0x3fb -> :sswitch_16
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_11
        0x3fe -> :sswitch_e
        0x7d0 -> :sswitch_b
        0x7d1 -> :sswitch_8
        0x7d2 -> :sswitch_5
    .end sparse-switch
.end method

.method private blacklist isLoaded()Z
    .registers 4

    .line 327
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget-object v2, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2d

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 328
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 327
    :goto_2e
    return v0
.end method

.method public static whitelist load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 5

    .line 380
    if-eqz p0, :cond_f

    .line 384
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 385
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;F)V

    .line 386
    return-object v0

    .line 381
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resources must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist loadResource(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;F)V
    .registers 14

    .line 507
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 512
    :try_start_4
    const-string v0, "pointer-icon"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 516
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 519
    nop

    .line 520
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .line 521
    nop

    .line 522
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 523
    int-to-float v5, v5

    mul-float/2addr v5, p4

    .line 524
    int-to-float v3, v3

    mul-float/2addr v3, p4

    .line 525
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_e2
    .catchall {:try_start_4 .. :try_end_2a} :catchall_e0

    .line 529
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 530
    nop

    .line 532
    if-eqz v2, :cond_d8

    .line 536
    invoke-virtual {p1, v2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 537
    instance-of p3, p2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p3, :cond_af

    .line 539
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 540
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p3

    .line 541
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    if-ne p3, v4, :cond_4c

    .line 543
    const-string p2, "PointerIcon"

    const-string p3, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 547
    :cond_4c
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    iput v1, p0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    .line 548
    add-int/lit8 v1, p3, -0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 549
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    .line 550
    iput-boolean v1, p0, Landroid/view/PointerIcon;->mDrawNativeDropShadow:Z

    .line 551
    move v2, v4

    :goto_5d
    if-ge v2, p3, :cond_ae

    .line 552
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 553
    instance-of v7, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_74

    instance-of v7, v6, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v7, :cond_6c

    goto :goto_74

    .line 555
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Frame of an animated pointer icon must refer to a bitmap drawable or vector drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_74
    :goto_74
    instance-of v7, v6, Landroid/graphics/drawable/VectorDrawable;

    if-ne v1, v7, :cond_8f

    .line 563
    if-eqz v1, :cond_80

    .line 564
    check-cast v6, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, p1, v6, p4}, Landroid/view/PointerIcon;->getBitmapDrawableFromVectorDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 567
    :cond_80
    iget-object v7, p0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v8, v2, -0x1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v6}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v7, v8

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 559
    :cond_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The drawable of the "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-th frame is a different type from the others. All frames should be the same type."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_ae
    :goto_ae
    move-object p2, v0

    :cond_af
    instance-of p3, p2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p3, :cond_bb

    .line 572
    iput-boolean v4, p0, Landroid/view/PointerIcon;->mDrawNativeDropShadow:Z

    .line 573
    check-cast p2, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, p1, p2, p4}, Landroid/view/PointerIcon;->getBitmapDrawableFromVectorDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 576
    :cond_bb
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_d0

    .line 581
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 582
    invoke-direct {p0, p2}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 585
    invoke-static {p1, v5, v3, v4}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FFZ)V

    .line 587
    iput-object p1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 588
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 589
    iput v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 590
    nop

    .line 591
    return-void

    .line 577
    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_d8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :catchall_e0
    move-exception p1

    goto :goto_eb

    .line 526
    :catch_e2
    move-exception p1

    .line 527
    :try_start_e3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Exception parsing pointer icon resource."

    invoke-direct {p3, p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_e0

    .line 529
    :goto_eb
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 530
    throw p1
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 1

    .line 677
    sparse-switch p0, :sswitch_data_5c

    .line 706
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :sswitch_8
    const-string p0, "SPOT_ANCHOR"

    return-object p0

    .line 683
    :sswitch_b
    const-string p0, "SPOT_TOUCH"

    return-object p0

    .line 682
    :sswitch_e
    const-string p0, "SPOT_HOVER"

    return-object p0

    .line 705
    :sswitch_11
    const-string p0, "HANDWRITING"

    return-object p0

    .line 704
    :sswitch_14
    const-string p0, "GRABBING"

    return-object p0

    .line 703
    :sswitch_17
    const-string p0, "GRAB"

    return-object p0

    .line 702
    :sswitch_1a
    const-string p0, "ZOOM_OUT"

    return-object p0

    .line 701
    :sswitch_1d
    const-string p0, "ZOOM_IN"

    return-object p0

    .line 700
    :sswitch_20
    const-string p0, "TOP_LEFT_DIAGONAL_DOUBLE_ARROW"

    return-object p0

    .line 699
    :sswitch_23
    const-string p0, "TOP_RIGHT_DIAGONAL_DOUBLE_ARROW"

    return-object p0

    .line 698
    :sswitch_26
    const-string p0, "VERTICAL_DOUBLE_ARROW"

    return-object p0

    .line 697
    :sswitch_29
    const-string p0, "HORIZONTAL_DOUBLE_ARROW"

    return-object p0

    .line 696
    :sswitch_2c
    const-string p0, "ALL_SCROLL"

    return-object p0

    .line 695
    :sswitch_2f
    const-string p0, "NO_DROP"

    return-object p0

    .line 694
    :sswitch_32
    const-string p0, "COPY"

    return-object p0

    .line 693
    :sswitch_35
    const-string p0, "ALIAS"

    return-object p0

    .line 692
    :sswitch_38
    const-string p0, "VERTICAL_TEXT"

    return-object p0

    .line 691
    :sswitch_3b
    const-string p0, "TEXT"

    return-object p0

    .line 690
    :sswitch_3e
    const-string p0, "CROSSHAIR"

    return-object p0

    .line 689
    :sswitch_41
    const-string p0, "CELL"

    return-object p0

    .line 688
    :sswitch_44
    const-string p0, "WAIT"

    return-object p0

    .line 687
    :sswitch_47
    const-string p0, "HELP"

    return-object p0

    .line 686
    :sswitch_4a
    const-string p0, "HAND"

    return-object p0

    .line 685
    :sswitch_4d
    const-string p0, "CONTEXT_MENU"

    return-object p0

    .line 681
    :sswitch_50
    const-string p0, "ARROW"

    return-object p0

    .line 680
    :sswitch_53
    const-string p0, "NOT_SPECIFIED"

    return-object p0

    .line 679
    :sswitch_56
    const-string p0, "NULL"

    return-object p0

    .line 678
    :sswitch_59
    const-string p0, "CUSTOM"

    return-object p0

    :sswitch_data_5c
    .sparse-switch
        -0x1 -> :sswitch_59
        0x0 -> :sswitch_56
        0x1 -> :sswitch_53
        0x3e8 -> :sswitch_50
        0x3e9 -> :sswitch_4d
        0x3ea -> :sswitch_4a
        0x3eb -> :sswitch_47
        0x3ec -> :sswitch_44
        0x3ee -> :sswitch_41
        0x3ef -> :sswitch_3e
        0x3f0 -> :sswitch_3b
        0x3f1 -> :sswitch_38
        0x3f2 -> :sswitch_35
        0x3f3 -> :sswitch_32
        0x3f4 -> :sswitch_2f
        0x3f5 -> :sswitch_2c
        0x3f6 -> :sswitch_29
        0x3f7 -> :sswitch_26
        0x3f8 -> :sswitch_23
        0x3f9 -> :sswitch_20
        0x3fa -> :sswitch_1d
        0x3fb -> :sswitch_1a
        0x3fc -> :sswitch_17
        0x3fd -> :sswitch_14
        0x3fe -> :sswitch_11
        0x7d0 -> :sswitch_e
        0x7d1 -> :sswitch_b
        0x7d2 -> :sswitch_8
    .end sparse-switch
.end method

.method private static blacklist validateHotSpot(Landroid/graphics/Bitmap;FFZ)V
    .registers 6

    .line 603
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_38

    if-eqz p3, :cond_f

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_38

    goto :goto_18

    .line 604
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_38

    .line 607
    :goto_18
    cmpg-float p1, p2, v0

    if-ltz p1, :cond_30

    if-eqz p3, :cond_26

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gt p1, p0, :cond_30

    goto :goto_2f

    .line 608
    :cond_26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-gez p0, :cond_30

    .line 611
    :goto_2f
    return-void

    .line 609
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y hotspot lies outside of the bitmap area"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 605
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x hotspot lies outside of the bitmap area"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist vectorFillStyleToResource(I)I
    .registers 2

    .line 716
    const v0, 0x1030346

    packed-switch p0, :pswitch_data_1e

    .line 729
    goto :goto_1c

    .line 728
    :pswitch_7
    const v0, 0x103034a

    goto :goto_1c

    .line 726
    :pswitch_b
    const v0, 0x1030347

    goto :goto_1c

    .line 724
    :pswitch_f
    const v0, 0x1030349

    goto :goto_1c

    .line 722
    :pswitch_13
    const v0, 0x103034b

    goto :goto_1c

    .line 720
    :pswitch_17
    const v0, 0x1030348

    goto :goto_1c

    .line 718
    :pswitch_1b
    nop

    .line 716
    :goto_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist vectorStrokeStyleToResource(I)I
    .registers 2

    .line 739
    const v0, 0x103034e

    packed-switch p0, :pswitch_data_12

    .line 746
    goto :goto_10

    .line 745
    :pswitch_7
    const v0, 0x103034d

    goto :goto_10

    .line 741
    :pswitch_b
    const v0, 0x103034c

    goto :goto_10

    .line 743
    :pswitch_f
    nop

    .line 739
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 442
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 443
    return v0

    .line 446
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    instance-of v2, p1, Landroid/view/PointerIcon;

    if-nez v2, :cond_c

    goto :goto_2e

    .line 450
    :cond_c
    check-cast p1, Landroid/view/PointerIcon;

    .line 451
    iget v2, p0, Landroid/view/PointerIcon;->mType:I

    iget v3, p1, Landroid/view/PointerIcon;->mType:I

    if-eq v2, v3, :cond_15

    .line 452
    return v1

    .line 455
    :cond_15
    iget-object v2, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v3, p1, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2d

    iget v2, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget p1, p1, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    .line 461
    :cond_2c
    return v0

    .line 458
    :cond_2d
    :goto_2d
    return v1

    .line 447
    :cond_2e
    :goto_2e
    return v1
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 391
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public blacklist setDrawNativeDropShadow(Z)V
    .registers 2

    .line 758
    iput-boolean p1, p0, Landroid/view/PointerIcon;->mDrawNativeDropShadow:Z

    .line 759
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointerIcon{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-static {v1}, Landroid/view/PointerIcon;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotspotX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotspotY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 424
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 428
    return-void

    .line 431
    :cond_b
    invoke-direct {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 434
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    iget p2, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 436
    iget p2, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 437
    iget-boolean p2, p0, Landroid/view/PointerIcon;->mDrawNativeDropShadow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 438
    return-void

    .line 432
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom icon should be loaded upon creation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
