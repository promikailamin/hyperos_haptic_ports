.class public Landroid/graphics/text/TextRunShaper;
.super Ljava/lang/Object;
.source "TextRunShaper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J
.end method

.method private static native blacklist nativeShapeTextRun([CIIIIZJ)J
.end method

.method public static whitelist shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 20

    .line 99
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 102
    new-instance v2, Landroid/graphics/text/PositionedGlyphs;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 105
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 103
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p7

    invoke-static/range {v3 .. v10}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J

    move-result-wide p0

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 102
    return-object v2

    .line 108
    :cond_25
    new-array v2, p4, [C

    .line 109
    add-int v3, p3, p4

    const/4 v4, 0x0

    invoke-static {p0, p3, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 110
    new-instance p0, Landroid/graphics/text/PositionedGlyphs;

    sub-int v3, p1, p3

    .line 113
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 111
    const/4 v5, 0x0

    move v4, p2

    move v6, p4

    move/from16 v7, p7

    invoke-static/range {v2 .. v9}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 110
    return-object p0
.end method

.method public static whitelist shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 18

    .line 69
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/graphics/text/PositionedGlyphs;

    .line 73
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    .line 72
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    invoke-static/range {v1 .. v8}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p5, p6}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 71
    return-object v0
.end method
