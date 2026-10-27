.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
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

.field private static final greylist-max-o gNullIcon:Landroid/view/PointerIcon;

.field private static final blacklist gSystemIconsByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static greylist-max-o sUseLargeIcons:Z


# instance fields
.field public greylist-max-r mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-r mBitmapFrames:[Landroid/graphics/Bitmap;

.field private greylist-max-r mDurationPerFrame:I

.field private greylist-max-r mHotSpotX:F

.field private greylist-max-r mHotSpotY:F

.field private greylist-max-o mSystemIconResourceId:I

.field private final greylist-max-p mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmSystemIconResourceId(Landroid/view/PointerIcon;I)V
    .registers 2

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 148
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    .line 151
    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 370
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    .line 181
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/PointerIcon-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method public static whitelist create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .line 296
    if-eqz p0, :cond_12

    .line 299
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 301
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 302
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 303
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 304
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 305
    return-object v0

    .line 297
    .end local v0    # "icon":Landroid/view/PointerIcon;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 447
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 449
    .local v1, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 450
    .local v2, "scaledHeight":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 451
    return-object v0

    .line 454
    :cond_19
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 455
    .local v3, "src":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 457
    .local v4, "dst":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 458
    .local v5, "scaled":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 460
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 461
    invoke-virtual {v6, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 462
    return-object v5
.end method

.method public static greylist-max-o getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getNullIcon()Landroid/view/PointerIcon;
    .registers 1

    .line 192
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static whitelist getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 219
    if-eqz p0, :cond_94

    .line 223
    if-nez p1, :cond_7

    .line 224
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0

    .line 227
    :cond_7
    sget-object v0, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_e

    .line 228
    invoke-static {p0}, Landroid/view/PointerIcon;->registerDisplayListener(Landroid/content/Context;)V

    .line 231
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 232
    .local v0, "displayId":I
    sget-object v1, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 233
    .local v2, "systemIcons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    if-nez v2, :cond_25

    .line 234
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 235
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    :cond_25
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/PointerIcon;

    .line 240
    .local v1, "icon":Landroid/view/PointerIcon;
    if-eqz v1, :cond_2e

    .line 241
    return-object v1

    .line 244
    :cond_2e
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v3

    .line 245
    .local v3, "typeIndex":I
    const/16 v4, 0x3e8

    if-nez v3, :cond_3a

    .line 246
    invoke-static {v4}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v3

    .line 249
    :cond_3a
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v5, :cond_42

    .line 250
    const v5, 0x1030335

    goto :goto_45

    :cond_42
    const v5, 0x103033f

    .line 251
    .local v5, "defStyle":I
    :goto_45
    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->Pointer:[I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 254
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 255
    .local v8, "resourceId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    if-ne v8, v7, :cond_79

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing theme resources for pointer icon type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PointerIcon"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-ne p1, v4, :cond_74

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto :goto_78

    :cond_74
    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    :goto_78
    return-object v4

    .line 262
    :cond_79
    new-instance v4, Landroid/view/PointerIcon;

    invoke-direct {v4, p1}, Landroid/view/PointerIcon;-><init>(I)V

    move-object v1, v4

    .line 263
    const/high16 v4, -0x1000000

    and-int/2addr v4, v8

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_89

    .line 264
    iput v8, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    goto :goto_90

    .line 266
    :cond_89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, p0, v4, v8}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 268
    :goto_90
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 269
    return-object v1

    .line 220
    .end local v0    # "displayId":I
    .end local v1    # "icon":Landroid/view/PointerIcon;
    .end local v2    # "systemIcons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    .end local v3    # "typeIndex":I
    .end local v5    # "defStyle":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "resourceId":I
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getSystemIconTypeIndex(I)I
    .registers 2
    .param p0, "type"    # I

    .line 550
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_44

    .line 602
    return v0

    .line 558
    :sswitch_5
    const/16 v0, 0xd

    return v0

    .line 556
    :sswitch_8
    const/16 v0, 0xf

    return v0

    .line 554
    :sswitch_b
    const/16 v0, 0xe

    return v0

    .line 600
    :sswitch_e
    const/16 v0, 0x8

    return v0

    .line 598
    :sswitch_11
    const/4 v0, 0x7

    return v0

    .line 596
    :sswitch_13
    const/16 v0, 0x17

    return v0

    .line 594
    :sswitch_16
    const/16 v0, 0x16

    return v0

    .line 591
    :sswitch_19
    const/16 v0, 0x11

    return v0

    .line 588
    :sswitch_1c
    const/16 v0, 0x12

    return v0

    .line 586
    :sswitch_1f
    const/16 v0, 0x13

    return v0

    .line 584
    :sswitch_22
    const/16 v0, 0xb

    return v0

    .line 580
    :sswitch_25
    const/4 v0, 0x1

    return v0

    .line 582
    :sswitch_27
    const/16 v0, 0xc

    return v0

    .line 578
    :sswitch_2a
    const/4 v0, 0x5

    return v0

    .line 576
    :sswitch_2c
    return v0

    .line 574
    :sswitch_2d
    const/16 v0, 0x14

    return v0

    .line 572
    :sswitch_30
    const/16 v0, 0x10

    return v0

    .line 570
    :sswitch_33
    const/4 v0, 0x6

    return v0

    .line 568
    :sswitch_35
    const/4 v0, 0x3

    return v0

    .line 566
    :sswitch_37
    const/16 v0, 0x15

    return v0

    .line 564
    :sswitch_3a
    const/16 v0, 0xa

    return v0

    .line 560
    :sswitch_3d
    const/16 v0, 0x9

    return v0

    .line 562
    :sswitch_40
    const/4 v0, 0x4

    return v0

    .line 552
    :sswitch_42
    const/4 v0, 0x2

    return v0

    :sswitch_data_44
    .sparse-switch
        0x3e8 -> :sswitch_42
        0x3e9 -> :sswitch_40
        0x3ea -> :sswitch_3d
        0x3eb -> :sswitch_3a
        0x3ec -> :sswitch_37
        0x3ee -> :sswitch_35
        0x3ef -> :sswitch_33
        0x3f0 -> :sswitch_30
        0x3f1 -> :sswitch_2d
        0x3f2 -> :sswitch_2c
        0x3f3 -> :sswitch_2a
        0x3f4 -> :sswitch_27
        0x3f5 -> :sswitch_25
        0x3f6 -> :sswitch_22
        0x3f7 -> :sswitch_1f
        0x3f8 -> :sswitch_1c
        0x3f9 -> :sswitch_19
        0x3fa -> :sswitch_16
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_11
        0x3fd -> :sswitch_e
        0x7d0 -> :sswitch_b
        0x7d1 -> :sswitch_8
        0x7d2 -> :sswitch_5
    .end sparse-switch
.end method

.method public static whitelist load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .line 330
    if-eqz p0, :cond_d

    .line 334
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 335
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 336
    return-object v0

    .line 331
    .end local v0    # "icon":Landroid/view/PointerIcon;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resources must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .line 466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 471
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    const-string/jumbo v0, "pointer-icon"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 475
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 476
    .local v6, "bitmapRes":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 477
    .local v9, "hotSpotX":F
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 478
    .local v7, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_e6
    .catchall {:try_start_a .. :try_end_29} :catchall_e4

    .line 482
    .end local v0    # "a":Landroid/content/res/TypedArray;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 483
    nop

    .line 485
    if-eqz v6, :cond_dc

    .line 490
    if-nez v2, :cond_36

    .line 491
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3a

    .line 493
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_36
    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3a
    instance-of v10, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v10, :cond_bf

    .line 497
    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 498
    .local v10, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v11

    .line 499
    .local v11, "frames":I
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 500
    if-ne v11, v8, :cond_55

    .line 501
    const-string v5, "PointerIcon"

    const-string v8, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto :goto_bd

    .line 505
    :cond_55
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    iput v5, v1, Landroid/view/PointerIcon;->mDurationPerFrame:I

    .line 506
    add-int/lit8 v5, v11, -0x1

    new-array v5, v5, [Landroid/graphics/Bitmap;

    iput-object v5, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 507
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 508
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 509
    .local v8, "height":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_6a
    if-ge v12, v11, :cond_bb

    .line 510
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 511
    .local v13, "drawableFrame":Landroid/graphics/drawable/Drawable;
    instance-of v14, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_b1

    .line 515
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v5, :cond_90

    .line 516
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-ne v14, v8, :cond_90

    .line 521
    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 522
    .local v14, "bitmapDrawableFrame":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v15, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v16, v12, -0x1

    invoke-direct {v1, v14}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    aput-object v17, v15, v16

    .line 509
    .end local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    .end local v14    # "bitmapDrawableFrame":Landroid/graphics/drawable/BitmapDrawable;
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    .line 517
    .restart local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    :cond_90
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v0, "The bitmap size of "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "-th frame is different. All frames should have the exact same size and share the same hotspot."

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 512
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b1
    move-object/from16 v16, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    .end local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_bb
    move-object/from16 v16, v0

    .line 526
    .end local v5    # "width":I
    .end local v8    # "height":I
    .end local v10    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v11    # "frames":I
    .end local v12    # "i":I
    :goto_bd
    move-object/from16 v0, v16

    :cond_bf
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_d4

    .line 531
    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 532
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v1, v5}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 533
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v7}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 535
    iput-object v8, v1, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 536
    iput v9, v1, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 537
    iput v7, v1, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 538
    return-void

    .line 527
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    .end local v6    # "bitmapRes":I
    .end local v7    # "hotSpotY":F
    .end local v9    # "hotSpotX":F
    :catchall_e4
    move-exception v0

    goto :goto_ef

    .line 479
    :catch_e6
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_e7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Exception parsing pointer icon resource."

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/PointerIcon;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resources":Landroid/content/res/Resources;
    .end local p3    # "resourceId":I
    throw v5
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_e4

    .line 482
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/PointerIcon;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resources":Landroid/content/res/Resources;
    .restart local p3    # "resourceId":I
    :goto_ef
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 483
    throw v0
.end method

.method private static blacklist registerDisplayListener(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 611
    new-instance v0, Landroid/view/PointerIcon$2;

    invoke-direct {v0}, Landroid/view/PointerIcon$2;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 627
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 628
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    sget-object v1, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 629
    return-void
.end method

.method public static greylist-max-o setUseLargeIcons(Z)V
    .registers 2
    .param p0, "use"    # Z

    .line 277
    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 278
    sget-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 279
    return-void
.end method

.method private static greylist-max-o validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .line 541
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_25

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_25

    .line 544
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1c

    .line 547
    return-void

    .line 545
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 415
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 416
    return v0

    .line 419
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    instance-of v2, p1, Landroid/view/PointerIcon;

    if-nez v2, :cond_c

    goto :goto_37

    .line 423
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/view/PointerIcon;

    .line 424
    .local v2, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mType:I

    iget v4, v2, Landroid/view/PointerIcon;->mType:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_1c

    goto :goto_36

    .line 429
    :cond_1c
    if-nez v3, :cond_35

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_35

    .line 432
    :cond_34
    return v1

    .line 435
    :cond_35
    return v0

    .line 426
    :cond_36
    :goto_36
    return v1

    .line 420
    .end local v2    # "otherIcon":Landroid/view/PointerIcon;
    :cond_37
    :goto_37
    return v1
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public greylist-max-p load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 351
    if-eqz p1, :cond_21

    .line 355
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    goto :goto_20

    .line 359
    :cond_b
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 360
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 362
    return-object v0

    .line 356
    .end local v0    # "result":Landroid/view/PointerIcon;
    :cond_20
    :goto_20
    return-object p0

    .line 352
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 401
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v0, :cond_21

    .line 404
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_21

    .line 406
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 407
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 408
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 411
    :cond_21
    return-void
.end method
