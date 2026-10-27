.class public Landroid/app/WallpaperColorsStubImpl;
.super Landroid/app/WallpaperColorsStub;
.source "WallpaperColorsStubImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/WallpaperColorsStub;-><init>()V

    return-void
.end method

.method private blacklist getGray(Landroid/graphics/Color;)F
    .registers 5
    .param p1, "color"    # Landroid/graphics/Color;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result v1

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist miuiCalculateDarkHints(Landroid/graphics/Bitmap;)I
    .registers 21
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .line 17
    move-object/from16 v0, p0

    if-eqz p1, :cond_e9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v1, :cond_e9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_e9

    .line 21
    :cond_12
    const/4 v9, 0x0

    .line 22
    .local v9, "hints":I
    const/4 v10, 0x0

    .line 23
    .local v10, "sum":F
    const/4 v11, 0x0

    .line 24
    .local v11, "whiteSum":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v12, 0x2

    div-int/lit8 v13, v1, 0x2

    .line 25
    .local v13, "arrayLength":I
    new-array v14, v13, [I

    .line 26
    .local v14, "pixels1":[I
    new-array v15, v13, [I

    .line 27
    .local v15, "pixels2":[I
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 27
    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 29
    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_57
    array-length v2, v14

    const-wide v3, 0x3fe6666666666666L    # 0.7

    const/4 v5, 0x0

    if-ge v1, v2, :cond_77

    .line 33
    aget v2, v14, v1

    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/WallpaperColorsStubImpl;->getGray(Landroid/graphics/Color;)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v3

    const/high16 v3, 0x40400000    # 3.0f

    if-ltz v2, :cond_72

    move v5, v3

    :cond_72
    add-float/2addr v11, v5

    .line 34
    add-float/2addr v10, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 37
    .end local v1    # "i":I
    :cond_77
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_78
    array-length v2, v15

    if-ge v1, v2, :cond_94

    .line 38
    aget v2, v15, v1

    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/WallpaperColorsStubImpl;->getGray(Landroid/graphics/Color;)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v3

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v2, :cond_8e

    move v2, v6

    goto :goto_8f

    :cond_8e
    move v2, v5

    :goto_8f
    add-float/2addr v11, v2

    .line 39
    add-float/2addr v10, v6

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 42
    .end local v1    # "j":I
    :cond_94
    cmpl-float v1, v10, v5

    if-eqz v1, :cond_a2

    div-float v1, v11, v10

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a2

    .line 43
    const/4 v9, 0x1

    .line 46
    :cond_a2
    const-wide/16 v16, 0x0

    .line 47
    .local v16, "totalLuminance":D
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v8, v1, [I

    .line 48
    .local v8, "pixels":[I
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 48
    move-object/from16 v1, p1

    move-object v2, v8

    move-object v12, v8

    .end local v8    # "pixels":[I
    .local v12, "pixels":[I
    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 50
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 51
    .local v1, "tmpHsl":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_cb
    array-length v3, v12

    if-ge v2, v3, :cond_dc

    .line 52
    aget v3, v12, v2

    invoke-static {v3, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 53
    const/4 v3, 0x2

    aget v4, v1, v3

    .line 54
    .local v4, "luminance":F
    float-to-double v5, v4

    add-double v16, v16, v5

    .line 51
    .end local v4    # "luminance":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 56
    .end local v2    # "i":I
    :cond_dc
    array-length v2, v12

    int-to-double v2, v2

    div-double v2, v16, v2

    .line 58
    .local v2, "meanLuminance":D
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v2, v4

    if-gez v4, :cond_e8

    .line 59
    or-int/lit8 v9, v9, 0x2

    .line 61
    :cond_e8
    return v9

    .line 18
    .end local v1    # "tmpHsl":[F
    .end local v2    # "meanLuminance":D
    .end local v9    # "hints":I
    .end local v10    # "sum":F
    .end local v11    # "whiteSum":F
    .end local v12    # "pixels":[I
    .end local v13    # "arrayLength":I
    .end local v14    # "pixels1":[I
    .end local v15    # "pixels2":[I
    .end local v16    # "totalLuminance":D
    :cond_e9
    :goto_e9
    const/4 v1, 0x0

    return v1
.end method
