.class public final Landroid/graphics/text/PositionedGlyphs;
.super Ljava/lang/Object;
.source "PositionedGlyphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/PositionedGlyphs$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final whitelist NO_OVERRIDE:F = 1.4E-45f


# instance fields
.field private final blacklist mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLayoutPtr:J

.field private final blacklist mXOffset:F

.field private final blacklist mYOffset:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/text/PositionedGlyphs;->nReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor blacklist <init>(JFF)V
    .registers 11

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    .line 253
    iput p3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    .line 254
    iput p4, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    .line 256
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_30

    .line 257
    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetFontCount(J)I

    move-result p3

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    .line 259
    nop

    :goto_1c
    if-ge p4, p3, :cond_2f

    .line 260
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/fonts/Font;

    invoke-static {p1, p2, p4}, Landroid/graphics/text/PositionedGlyphs;->nGetFontRef(JI)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/fonts/Font;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 p4, p4, 0x1

    goto :goto_1c

    .line 262
    :cond_2f
    goto :goto_5a

    .line 263
    :cond_30
    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result p3

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    .line 266
    nop

    .line 267
    nop

    .line 268
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_40
    if-ge p4, p3, :cond_5a

    .line 269
    invoke-static {p1, p2, p4}, Landroid/graphics/text/PositionedGlyphs;->nGetFont(JI)J

    move-result-wide v3

    .line 270
    cmp-long v5, v0, v3

    if-eqz v5, :cond_52

    .line 271
    nop

    .line 272
    new-instance v0, Landroid/graphics/fonts/Font;

    invoke-direct {v0, v3, v4}, Landroid/graphics/fonts/Font;-><init>(J)V

    move-object v2, v0

    move-wide v0, v3

    .line 274
    :cond_52
    iget-object v3, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 p4, p4, 0x1

    goto :goto_40

    .line 278
    :cond_5a
    :goto_5a
    invoke-static {}, Landroid/graphics/text/PositionedGlyphs$NoImagePreloadHolder;->-$$Nest$sfgetREGISTRY()Llibcore/util/NativeAllocationRegistry;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 279
    return-void
.end method

.method private static native blacklist nGetAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFakeBold(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFakeItalic(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontRef(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetGlyphCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetGlyphId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetItalicOverride(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTotalAdvance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetWeightOverride(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetX(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetY(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 316
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 317
    :cond_4
    instance-of v1, p1, Landroid/graphics/text/PositionedGlyphs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 318
    :cond_a
    check-cast p1, Landroid/graphics/text/PositionedGlyphs;

    .line 320
    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    iget v3, p1, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_67

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    iget v3, p1, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1d

    goto :goto_67

    .line 321
    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 323
    :cond_28
    move v1, v2

    :goto_29
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 324
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v4

    if-eq v3, v4, :cond_3a

    return v2

    .line 325
    :cond_3a
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_47

    return v2

    .line 326
    :cond_47
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_54

    return v2

    .line 327
    :cond_54
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/fonts/Font;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    return v2

    .line 323
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 330
    :cond_66
    return v0

    .line 320
    :cond_67
    :goto_67
    return v2
.end method

.method public whitelist getAdvance()F
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetTotalAdvance(J)F

    move-result v0

    return v0
.end method

.method public whitelist getAscent()F
    .registers 3

    .line 85
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist getDescent()F
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist getFakeBold(I)Z
    .registers 5

    .line 185
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 186
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFakeBold(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist getFakeItalic(I)Z
    .registers 5

    .line 197
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 198
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFakeItalic(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist getFont(I)Landroid/graphics/fonts/Font;
    .registers 5

    .line 136
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 138
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    iget-wide v1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v1, v2, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFontId(JI)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/fonts/Font;

    return-object p1

    .line 140
    :cond_21
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/fonts/Font;

    return-object p1
.end method

.method public whitelist getGlyphId(I)I
    .registers 5

    .line 151
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 152
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphId(JI)I

    move-result p1

    return p1
.end method

.method public whitelist getGlyphX(I)F
    .registers 5

    .line 162
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 163
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetX(JI)F

    move-result p1

    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    add-float/2addr p1, v0

    return p1
.end method

.method public whitelist getGlyphY(I)F
    .registers 5

    .line 173
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 174
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetY(JI)F

    move-result p1

    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    add-float/2addr p1, v0

    return p1
.end method

.method public whitelist getItalicOverride(I)F
    .registers 5

    .line 235
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 236
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetItalicOverride(JI)F

    move-result p1

    .line 237
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 238
    const/4 p1, 0x1

    return p1

    .line 240
    :cond_1a
    return p1
.end method

.method public whitelist getOffsetX()F
    .registers 2

    .line 106
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    return v0
.end method

.method public whitelist getOffsetY()F
    .registers 2

    .line 115
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    return v0
.end method

.method public whitelist getWeightOverride(I)F
    .registers 5

    .line 217
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 218
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetWeightOverride(JI)F

    move-result p1

    .line 219
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 220
    const/4 p1, 0x1

    return p1

    .line 222
    :cond_1a
    return p1
.end method

.method public whitelist glyphCount()I
    .registers 3

    .line 125
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 335
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 336
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 337
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 340
    :cond_46
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 347
    if-eqz v1, :cond_15

    .line 348
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") font = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 354
    :cond_62
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PositionedGlyphs{glyphs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mXOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    return-object v0
.end method
