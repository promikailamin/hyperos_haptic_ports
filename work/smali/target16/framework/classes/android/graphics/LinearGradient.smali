.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# instance fields
.field private greylist mColor0:I

.field private greylist-max-r mColor1:I

.field private final blacklist mColorLongs:[J

.field private greylist mColors:[I

.field private greylist-max-r mPositions:[F

.field private greylist-max-r mTileMode:Landroid/graphics/Shader$TileMode;

.field private greylist-max-r mX0:F

.field private greylist-max-r mX1:F

.field private greylist-max-r mY0:F

.field private greylist-max-r mY1:F


# direct methods
.method public constructor whitelist <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .registers 18

    .line 133
    invoke-static {p5}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v5

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFJJLandroid/graphics/Shader$TileMode;)V

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(FFFFJJLandroid/graphics/Shader$TileMode;)V
    .registers 12

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p5, v0, v1

    const/4 p5, 0x1

    aput-wide p7, v0, p5

    const/4 p7, 0x0

    move p5, p4

    move-object p8, p9

    move-object p6, v0

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V

    .line 154
    return-void
.end method

.method public constructor whitelist <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .registers 17

    .line 72
    invoke-static {p5}, Landroid/graphics/LinearGradient;->convertColors([I)[J

    move-result-object v5

    sget-object p5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 73
    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    .line 72
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V
    .registers 18

    .line 95
    invoke-virtual {p5}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [J

    invoke-static {p5}, Landroid/graphics/LinearGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V
    .registers 10

    .line 105
    invoke-direct {p0, p8}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    .line 107
    if-eqz p6, :cond_12

    array-length p8, p5

    array-length v0, p6

    if-ne p8, v0, :cond_a

    goto :goto_12

    .line 108
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "color and position arrays must be of equal length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_12
    :goto_12
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 111
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 112
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 113
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 114
    iput-object p5, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    .line 115
    if-eqz p6, :cond_25

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 116
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 117
    return-void
.end method

.method private native blacklist nativeCreate(JFFFF[J[FIJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 16

    .line 159
    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v7, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    iget-object v8, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iget-object p3, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 161
    invoke-virtual {p0}, Landroid/graphics/LinearGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v10

    .line 159
    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate(JFFFF[J[FIJ)J

    move-result-wide p1

    return-wide p1
.end method
