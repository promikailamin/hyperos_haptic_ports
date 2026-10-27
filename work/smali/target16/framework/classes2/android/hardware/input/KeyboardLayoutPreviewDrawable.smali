.class final Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    }
.end annotation


# static fields
.field private static final blacklist GRAVITY_BOTTOM:I = 0x8

.field private static final blacklist GRAVITY_LEFT:I = 0x1

.field private static final blacklist GRAVITY_RIGHT:I = 0x2

.field private static final blacklist GRAVITY_TOP:I = 0x4

.field private static final blacklist KEYBOARD_PADDING_IN_DP:I = 0xa

.field private static final blacklist KEYBOARD_RADIUS_IN_DP:I = 0xa

.field private static final blacklist KEY_PADDING_IN_DP:I = 0x3

.field private static final blacklist KEY_RADIUS_IN_DP:I = 0x5

.field private static final blacklist MAX_GLYPH_TEXT_SIZE_IN_SP:I = 0x14

.field private static final blacklist MIN_GLYPH_TEXT_SIZE_IN_SP:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboardLayoutPreview"

.field private static final blacklist TEXT_PADDING_IN_DP:I = 0x1


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mKeyDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

.field private final blacklist mKeyboardBackground:Landroid/graphics/RectF;

.field private final blacklist mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;
    .registers 1

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createFillPaint(I)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 1

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V
    .registers 6

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    .line 69
    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    .line 70
    iput p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    .line 71
    new-instance p3, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;-><init>(Landroid/content/Context;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    iput-object p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 72
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    .line 73
    return-void
.end method

.method private static blacklist createFillPaint(I)Landroid/graphics/Paint;
    .registers 2

    .line 529
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 530
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    return-object v0
.end method

.method private static blacklist createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    .line 536
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 537
    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    return-object v0
.end method

.method private static blacklist createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .registers 4

    .line 520
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 521
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 525
    return-object v0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 172
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v0

    .line 173
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 174
    invoke-static {v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v2

    .line 173
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;

    .line 176
    invoke-interface {v1, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    goto :goto_17

    .line 178
    :cond_27
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 32

    .line 87
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKeys()[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    .line 90
    if-nez v1, :cond_13

    .line 91
    return-void

    .line 93
    :cond_13
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout;->getEnterKey()Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    move-result-object v2

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 96
    iget-object v5, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v5}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyboardPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v5

    .line 97
    iget-object v6, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v6

    .line 98
    iget-object v7, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v11

    .line 99
    iget-object v7, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v3, v7

    .line 101
    sub-int/2addr v4, v7

    .line 102
    if-lez v3, :cond_1ff

    if-gtz v4, :cond_45

    goto/16 :goto_1ff

    .line 107
    :cond_45
    array-length v7, v1

    .line 108
    mul-int/lit8 v8, v7, 0x2

    mul-int/2addr v8, v6

    sub-int/2addr v4, v8

    int-to-float v4, v4

    int-to-float v8, v7

    div-float/2addr v4, v8

    .line 110
    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8, v4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mcalculateBestTextSizeForKey(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;F)V

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    const/16 v17, 0x0

    move v9, v10

    move v12, v9

    move v13, v12

    move/from16 v8, v17

    :goto_5c
    if-ge v8, v7, :cond_1c7

    .line 115
    aget-object v14, v1, v8

    .line 116
    nop

    .line 117
    array-length v15, v14

    .line 118
    array-length v10, v14

    move-object/from16 v18, v1

    move/from16 v1, v17

    const/16 v16, 0x0

    :goto_69
    if-ge v1, v10, :cond_76

    aget-object v19, v14, v1

    .line 119
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v19

    add-float v16, v16, v19

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 121
    :cond_76
    mul-int/lit8 v1, v15, 0x2

    mul-int/2addr v1, v6

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 122
    nop

    .line 123
    mul-int/lit8 v10, v8, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    int-to-float v10, v10

    move/from16 v19, v1

    int-to-float v1, v8

    mul-float/2addr v1, v4

    add-float/2addr v1, v10

    .line 124
    move/from16 v20, v9

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v9, v17

    const/4 v10, 0x0

    :goto_94
    if-ge v9, v15, :cond_1b3

    .line 125
    mul-int/lit8 v12, v9, 0x2

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v6

    add-int/2addr v12, v5

    int-to-float v12, v12

    mul-float v13, v10, v19

    add-float/2addr v12, v13

    .line 127
    aget-object v13, v14, v9

    invoke-virtual {v13}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v13

    add-float v23, v10, v13

    .line 128
    new-instance v10, Landroid/graphics/RectF;

    aget-object v13, v14, v9

    invoke-virtual {v13}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v13

    mul-float v13, v13, v19

    add-float/2addr v13, v12

    move-object/from16 v24, v2

    add-float v2, v1, v4

    invoke-direct {v10, v12, v1, v13, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    if-eqz v24, :cond_f6

    aget-object v2, v14, v9

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode()I

    move-result v2

    const/16 v12, 0x42

    if-ne v2, v12, :cond_f6

    .line 131
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row()I

    move-result v2

    if-ne v2, v8, :cond_e9

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column()I

    move-result v2

    if-ne v2, v9, :cond_e9

    .line 132
    iget v2, v10, Landroid/graphics/RectF;->left:F

    .line 133
    iget v10, v10, Landroid/graphics/RectF;->top:F

    .line 134
    move/from16 v25, v1

    move/from16 v21, v2

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v22, v10

    move-object v1, v14

    move/from16 v26, v15

    move/from16 v20, v19

    const/16 v29, 0x0

    goto/16 :goto_1a4

    .line 131
    :cond_e9
    move/from16 v25, v1

    move/from16 v27, v8

    move/from16 v28, v9

    move-object v1, v14

    move/from16 v26, v15

    const/16 v29, 0x0

    goto/16 :goto_1a4

    .line 138
    :cond_f6
    aget-object v2, v14, v9

    invoke-static {v2}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 139
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    move v12, v8

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    iget-object v13, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 140
    invoke-static {v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v13

    move/from16 v25, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 141
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 142
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 143
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v27, v12

    move v12, v13

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v28, v9

    const/4 v9, 0x0

    move/from16 v29, v15

    move-object v15, v1

    move-object v1, v14

    move-object/from16 v14, v26

    move/from16 v26, v29

    const/16 v29, 0x0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 139
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a4

    .line 144
    :cond_13c
    move/from16 v25, v1

    move/from16 v27, v8

    move/from16 v28, v9

    move-object v1, v14

    move/from16 v26, v15

    const/16 v29, 0x0

    aget-object v2, v1, v28

    invoke-static {v2}, Landroid/hardware/input/PhysicalKeyLayout;->isKeyPositionUnsure(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 145
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;

    aget-object v9, v1, v28

    invoke-virtual {v9}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v12, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 146
    invoke-static {v12}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v13, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 147
    invoke-static {v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v14, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 148
    invoke-static {v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 149
    invoke-static {v15}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 145
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a4

    .line 151
    :cond_17a
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    aget-object v9, v1, v28

    invoke-virtual {v9}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v12, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 152
    invoke-static {v12}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v13, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 153
    invoke-static {v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v14, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 154
    invoke-static {v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 155
    invoke-static {v15}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 151
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_1a4
    add-int/lit8 v9, v28, 0x1

    move-object v14, v1

    move/from16 v10, v23

    move-object/from16 v2, v24

    move/from16 v1, v25

    move/from16 v15, v26

    move/from16 v8, v27

    goto/16 :goto_94

    .line 114
    :cond_1b3
    move-object/from16 v24, v2

    move/from16 v27, v8

    const/16 v29, 0x0

    add-int/lit8 v8, v27, 0x1

    move-object/from16 v1, v18

    move/from16 v9, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v10, v29

    goto/16 :goto_5c

    .line 159
    :cond_1c7
    move-object/from16 v24, v2

    if-eqz v24, :cond_1fe

    .line 160
    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 161
    invoke-static {v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v11, v2, v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;-><init>(FLandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 162
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight()F

    move-result v2

    mul-float/2addr v2, v9

    invoke-static {v1, v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetTopWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    .line 163
    invoke-static {v2, v12, v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetStartPoint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    int-to-float v3, v6

    add-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    .line 164
    invoke-static {v2, v4, v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetVerticalEdges(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    .line 165
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight()F

    move-result v3

    mul-float/2addr v3, v9

    invoke-static {v2, v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetBottomWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    .line 166
    iget-object v0, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$mbuild(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1fe
    return-void

    .line 103
    :cond_1ff
    :goto_1ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid width and height to draw layout preview, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardLayoutPreview"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 2

    .line 183
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 188
    return-void
.end method
