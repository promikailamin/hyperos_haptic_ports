.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$RunInfo;,
        Landroid/graphics/Paint$EndHyphenEdit;,
        Landroid/graphics/Paint$StartHyphenEdit;,
        Landroid/graphics/Paint$CursorOption;,
        Landroid/graphics/Paint$PaintFlag;
    }
.end annotation


# static fields
.field public static final whitelist ANTI_ALIAS_FLAG:I = 0x1

.field public static final greylist-max-o AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final greylist-max-o BIDI_DEFAULT_LTR:I = 0x2

.field public static final greylist-max-o BIDI_DEFAULT_RTL:I = 0x3

.field private static final greylist-max-o BIDI_FLAG_MASK:I = 0x7

.field public static final greylist-max-o BIDI_FORCE_LTR:I = 0x4

.field public static final greylist-max-o BIDI_FORCE_RTL:I = 0x5

.field public static final greylist-max-o BIDI_LTR:I = 0x0

.field private static final greylist-max-o BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final greylist-max-o BIDI_RTL:I = 0x1

.field public static final whitelist CURSOR_AFTER:I = 0x0

.field public static final whitelist CURSOR_AT:I = 0x4

.field public static final whitelist CURSOR_AT_OR_AFTER:I = 0x1

.field public static final whitelist CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final whitelist CURSOR_BEFORE:I = 0x2

.field private static final greylist-max-o CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final blacklist DEPRECATE_UI_FONT:J = 0x10ab11ddL

.field public static final blacklist DEPRECATE_UI_FONT_ENFORCE:J = 0x14d53e73L

.field public static final whitelist DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final greylist-max-o DIRECTION_LTR:I = 0x0

.field public static final greylist-max-o DIRECTION_RTL:I = 0x1

.field public static final whitelist DITHER_FLAG:I = 0x4

.field private static final blacklist ELEGANT_TEXT_HEIGHT_DISABLED:I = 0x1

.field private static final blacklist ELEGANT_TEXT_HEIGHT_ENABLED:I = 0x0

.field private static final blacklist ELEGANT_TEXT_HEIGHT_UNSET:I = -0x1

.field public static final whitelist EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ARMENIAN_HYPHEN:I = 0x3

.field public static final whitelist END_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x2

.field public static final whitelist END_HYPHEN_EDIT_INSERT_MAQAF:I = 0x4

.field public static final whitelist END_HYPHEN_EDIT_INSERT_UCAS_HYPHEN:I = 0x5

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ZWJ_AND_HYPHEN:I = 0x6

.field public static final whitelist END_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist END_HYPHEN_EDIT_REPLACE_WITH_HYPHEN:I = 0x1

.field public static final whitelist FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final whitelist FILTER_BITMAP_FLAG:I = 0x2

.field static final greylist-max-o HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x502

.field public static final whitelist HINTING_OFF:I = 0x0

.field public static final whitelist HINTING_ON:I = 0x1

.field public static final greylist-max-o LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final whitelist LINEAR_TEXT_FLAG:I = 0x40

.field public static final whitelist START_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x1

.field public static final whitelist START_HYPHEN_EDIT_INSERT_ZWJ:I = 0x2

.field public static final whitelist START_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final whitelist SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "Paint"

.field public static final whitelist TEXT_RUN_FLAG_LEFT_EDGE:I = 0x2000

.field public static final whitelist TEXT_RUN_FLAG_RIGHT_EDGE:I = 0x4000

.field public static final whitelist UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final whitelist VERTICAL_TEXT_FLAG:I = 0x1000

.field static final greylist-max-o sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final greylist-max-o sCacheLock:Ljava/lang/Object;

.field static final greylist-max-o sCapArray:[Landroid/graphics/Paint$Cap;

.field static final greylist-max-o sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final greylist-max-o sMinikinLocaleListIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public greylist-max-o mBidiFlags:I

.field private blacklist mColor:J

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mCompatScaling:F

.field private greylist-max-o mFontFeatureSettings:Ljava/lang/String;

.field private blacklist mFontVariationOverride:Ljava/lang/String;

.field private greylist-max-o mFontVariationSettings:Ljava/lang/String;

.field private greylist-max-o mHasCompatScaling:Z

.field private greylist-max-o mInvCompatScaling:F

.field private greylist-max-o mLocales:Landroid/os/LocaleList;

.field private greylist-max-o mMaskFilter:Landroid/graphics/MaskFilter;

.field private greylist-max-o mNativeColorFilter:J

.field private greylist-max-r mNativePaint:J

.field private greylist-max-o mNativeShader:J

.field private blacklist mNativeXfermode:J

.field private greylist-max-o mPathEffect:Landroid/graphics/PathEffect;

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private blacklist mShadowLayerColor:J

.field private greylist-max-o mShadowLayerDx:F

.field private greylist-max-o mShadowLayerDy:F

.field private greylist-max-o mShadowLayerRadius:F

.field private greylist-max-p mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 125
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 128
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 131
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 134
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 686
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 5

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 702
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 703
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 704
    or-int/lit16 p1, p1, 0x502

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 709
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 710
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 711
    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 712
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 713
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .registers 5

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 724
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 725
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 726
    return-void
.end method

.method private blacklist installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 6

    .line 1486
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1487
    instance-of v0, p1, Landroid/graphics/RuntimeXfermode;

    if-eqz v0, :cond_19

    .line 1488
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1489
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 1490
    return-object p1

    .line 1493
    :cond_19
    instance-of v0, p1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_23

    .line 1494
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_25

    :cond_23
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1495
    :goto_25
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v1, v1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_32

    .line 1496
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v1, Landroid/graphics/PorterDuffXfermode;

    iget v1, v1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_34

    :cond_32
    sget v1, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1497
    :goto_34
    if-eq v0, v1, :cond_3b

    .line 1498
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1500
    :cond_3b
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1501
    return-object p1
.end method

.method private static native blacklist nAddFontVariationToBuilder(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native greylist-max-o nBreakText(J[CIIFI[F)I
.end method

.method private static native blacklist nCreateFontVariationBuilder(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nEqualsForTextMeasurement(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V
.end method

.method private static native blacklist nGetElegantTextHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetEndHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native blacklist nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native greylist-max-o nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetOffsetForAdvance(J[CIIIIZF)I
.end method

.method private static native greylist-max-o nGetRunAdvance(J[CIIIIZI)F
.end method

.method private static native blacklist nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;)F
.end method

.method private static native blacklist nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
.end method

.method private static native blacklist nGetStartHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAdvances(J[CIIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextPath(JILjava/lang/String;IIFFJ)V
.end method

.method private static native greylist-max-o nGetTextPath(JI[CIIFFJ)V
.end method

.method private native greylist-max-o nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native greylist-max-o nGetTextRunCursor(J[CIIIII)I
.end method

.method private static native greylist-max-o nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlinePosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlineThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nHasGlyph(JILjava/lang/String;)Z
.end method

.method private static native greylist-max-o nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInitWithPaint(J)J
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetColor(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetElegantTextHeight(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetEndHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetFontVariationOverride(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetShadowLayer(JFFFJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetStartHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocalesByMinikinLocaleListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTypeface(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetXfermode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist resetElegantTextHeight()V
    .registers 4

    .line 1941
    const-wide/32 v0, 0x10ab11dd

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1942
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    goto :goto_16

    .line 1944
    :cond_10
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1946
    :goto_16
    return-void
.end method

.method private greylist-max-o setClassVariablesFrom(Landroid/graphics/Paint;)V
    .registers 4

    .line 788
    iget-wide v0, p1, Landroid/graphics/Paint;->mColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 789
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 790
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 791
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 792
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 793
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 794
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 795
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 796
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeXfermode:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 798
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 799
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 800
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 802
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 803
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 804
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 805
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 807
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 808
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 809
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 810
    iget-wide v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 811
    return-void
.end method

.method private greylist-max-o syncTextLocalesWithMinikin()V
    .registers 5

    .line 1845
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1847
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1848
    :try_start_9
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1849
    if-nez v2, :cond_24

    .line 1850
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v2

    .line 1851
    sget-object v3, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    monitor-exit v1

    return-void

    .line 1854
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2f

    .line 1855
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1856
    return-void

    .line 1854
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method


# virtual methods
.method public whitelist ascent()F
    .registers 3

    .line 2327
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist breakText(Ljava/lang/CharSequence;IIZF[F)I
    .registers 13

    .line 2907
    if-eqz p1, :cond_53

    .line 2910
    or-int v0, p2, p3

    move v1, p4

    sub-int p4, p3, p2

    or-int/2addr v0, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_4d

    .line 2914
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    if-ne p2, p3, :cond_1a

    goto :goto_4c

    .line 2917
    :cond_1a
    if-nez p2, :cond_2d

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_2d

    .line 2918
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p1

    return p1

    .line 2922
    :cond_2d
    move v0, p2

    invoke-static {p4}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object p2

    .line 2925
    invoke-static {p1, v0, p3, p2, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2927
    if-eqz v1, :cond_3e

    .line 2928
    const/4 p3, 0x0

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p1

    goto :goto_48

    .line 2930
    :cond_3e
    const/4 v2, 0x0

    neg-int v3, p4

    move-object v0, p0

    move-object v1, p2

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p1

    .line 2933
    :goto_48
    invoke-static {p2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2934
    return p1

    .line 2915
    :cond_4c
    :goto_4c
    return v2

    .line 2911
    :cond_4d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2908
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist breakText(Ljava/lang/String;ZF[F)I
    .registers 14

    .line 2955
    if-eqz p1, :cond_41

    .line 2959
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2960
    return v1

    .line 2962
    :cond_a
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1b

    .line 2963
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p1

    return p1

    .line 2967
    :cond_1b
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2968
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2969
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v6, p2

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p2

    .line 2971
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2972
    if-eqz v8, :cond_40

    aget p1, v8, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, p3

    aput p1, v8, v1

    .line 2973
    :cond_40
    return p2

    .line 2956
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist breakText([CIIF[F)I
    .registers 16

    .line 2864
    if-eqz p1, :cond_53

    .line 2867
    if-ltz p2, :cond_4d

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_4d

    .line 2871
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    if-nez p3, :cond_13

    goto :goto_4c

    .line 2874
    :cond_13
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_25

    .line 2875
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p1

    return p1

    .line 2879
    :cond_25
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2880
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2881
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v7, p2

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p2

    .line 2883
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2884
    if-eqz v9, :cond_4b

    aget p1, v9, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, p3

    aput p1, v9, v1

    .line 2885
    :cond_4b
    return p2

    .line 2872
    :cond_4c
    :goto_4c
    return v1

    .line 2868
    :cond_4d
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2865
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist clearShadowLayer()V
    .registers 3

    .line 1683
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1684
    return-void
.end method

.method public whitelist descent()F
    .registers 3

    .line 2341
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .registers 6

    .line 3808
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result p1

    return p1
.end method

.method public whitelist getAlpha()I
    .registers 3

    .line 1250
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getBidiFlags()I
    .registers 2

    .line 869
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1460
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v0, v0, Landroid/graphics/PorterDuffXfermode;

    if-nez v0, :cond_b

    goto :goto_16

    .line 1463
    :cond_b
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0

    .line 1461
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getColor()I
    .registers 3

    .line 1193
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1422
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColorLong()J
    .registers 3

    .line 1207
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    return-wide v0
.end method

.method public whitelist getEndHyphenEdit()I
    .registers 3

    .line 2260
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetEndHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .registers 9

    .line 1382
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result p1

    return p1
.end method

.method public whitelist getFlags()I
    .registers 3

    .line 891
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .line 2064
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .registers 5

    .line 2413
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    move-result p1

    return p1
.end method

.method public whitelist getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .line 2421
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2422
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2423
    return-object v0
.end method

.method public whitelist getFontMetricsForLocale(Landroid/graphics/Paint$FontMetrics;)V
    .registers 5

    .line 2449
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    .line 2450
    return-void
.end method

.method public whitelist getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .registers 5

    .line 2659
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    move-result p1

    return p1
.end method

.method public whitelist getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .registers 2

    .line 2663
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2664
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2665
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 17

    .line 2476
    move-object/from16 v8, p7

    if-eqz p1, :cond_8c

    .line 2479
    if-ltz p2, :cond_83

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_83

    .line 2482
    if-ltz p3, :cond_7b

    add-int v0, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_7b

    .line 2485
    if-ltz p4, :cond_73

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p4, v0, :cond_73

    .line 2488
    if-ltz p5, :cond_6b

    add-int v0, p4, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 2491
    if-eqz v8, :cond_62

    .line 2495
    if-nez p3, :cond_30

    .line 2496
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2497
    return-void

    .line 2500
    :cond_30
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 2501
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_5b

    .line 2504
    :cond_42
    invoke-static {p5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2506
    const/4 v1, 0x0

    :try_start_47
    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2507
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_5c

    .line 2510
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2511
    nop

    .line 2514
    :goto_5b
    return-void

    .line 2510
    :catchall_5c
    move-exception v0

    move-object p1, v0

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2511
    throw p1

    .line 2492
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "outMetrics must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2489
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ctxCount argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2486
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ctxStart argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2483
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2480
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "start argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2477
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 17

    .line 2538
    move-object/from16 v8, p7

    if-eqz p1, :cond_5a

    .line 2541
    if-ltz p2, :cond_51

    array-length v0, p1

    if-ge p2, v0, :cond_51

    .line 2544
    if-ltz p3, :cond_49

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_49

    .line 2547
    if-ltz p4, :cond_41

    array-length v0, p1

    if-ge p4, v0, :cond_41

    .line 2550
    if-ltz p5, :cond_39

    add-int v0, p4, p5

    array-length v1, p1

    if-gt v0, v1, :cond_39

    .line 2553
    if-eqz v8, :cond_30

    .line 2557
    if-nez p3, :cond_24

    .line 2558
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2559
    return-void

    .line 2562
    :cond_24
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .line 2564
    return-void

    .line 2554
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "outMetrics must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2551
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ctxCount argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2548
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ctxStart argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2545
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2542
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "start argument is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2539
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFontMetricsIntForLocale(Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 5

    .line 2691
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    .line 2692
    return-void
.end method

.method public whitelist getFontSpacing()F
    .registers 2

    .line 2718
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public whitelist getFontVariationOverride()Ljava/lang/String;
    .registers 2

    .line 2236
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 2098
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHinting()I
    .registers 3

    .line 908
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public whitelist getLetterSpacing()F
    .registers 3

    .line 2014
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    .line 1554
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public declared-synchronized greylist getNativeInstance()J
    .registers 7

    monitor-enter p0

    .line 839
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    .line 840
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_d

    move-wide v0, v2

    goto :goto_13

    :cond_d
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    .line 841
    :goto_13
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_22

    .line 842
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 843
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 845
    :cond_22
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_27

    :goto_26
    goto :goto_2e

    :cond_27
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    goto :goto_26

    .line 846
    :goto_2e
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3d

    .line 847
    iput-wide v2, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 848
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 850
    :cond_3d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 851
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v0, v0, Landroid/graphics/RuntimeXfermode;

    if-eqz v0, :cond_60

    .line 852
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v0, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v0}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v0

    .line 853
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_60

    .line 854
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 855
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 859
    :cond_60
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-wide v0

    .line 838
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public whitelist getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .registers 18

    .line 3784
    move v0, p5

    if-eqz p1, :cond_39

    .line 3787
    or-int v1, p4, p2

    or-int/2addr v1, p3

    or-int/2addr v1, v0

    sub-int v4, p2, p4

    or-int/2addr v1, v4

    sub-int p2, p3, p2

    or-int/2addr p2, v1

    sub-int v1, v0, p3

    or-int/2addr p2, v1

    .line 3789
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    or-int/2addr p2, v1

    if-ltz p2, :cond_33

    .line 3793
    sub-int v7, v0, p4

    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 3794
    const/4 p2, 0x0

    invoke-static {p1, p4, p5, v3, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3795
    sub-int v5, p3, p4

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result p1

    add-int/2addr p1, p4

    .line 3797
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3798
    return p1

    .line 3790
    :cond_33
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3785
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getOffsetForAdvance([CIIIIZF)I
    .registers 17

    .line 3757
    if-eqz p1, :cond_29

    .line 3760
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_23

    .line 3766
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 3763
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3758
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPathEffect()Landroid/graphics/PathEffect;
    .registers 2

    .line 1526
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public greylist getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .registers 21

    .line 3529
    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    if-eqz p1, :cond_46

    .line 3532
    or-int v4, v2, p2

    or-int v4, v4, p7

    or-int/2addr v4, v1

    or-int/2addr v4, v3

    sub-int v7, p2, v2

    or-int/2addr v4, v7

    sub-int v5, p7, p2

    or-int/2addr v4, v5

    sub-int v5, v1, p7

    or-int/2addr v4, v5

    sub-int v5, v3, v1

    or-int/2addr v4, v5

    .line 3534
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    if-ltz v4, :cond_40

    .line 3537
    if-ne v1, p2, :cond_26

    .line 3538
    const/4 p1, 0x0

    return p1

    .line 3541
    :cond_26
    sub-int v10, v3, v2

    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    .line 3542
    const/4 v0, 0x0

    invoke-static {p1, v2, v3, v6, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3543
    sub-int v8, v1, v2

    const/4 v9, 0x0

    sub-int v12, p7, v2

    move-object v5, p0

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result p1

    .line 3545
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3546
    return p1

    .line 3535
    :cond_40
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3530
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRunAdvance([CIIIIZI)F
    .registers 17

    .line 3499
    if-eqz p1, :cond_32

    .line 3502
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_2c

    .line 3507
    if-ne p3, p2, :cond_1d

    .line 3508
    const/4 p1, 0x0

    return p1

    .line 3511
    :cond_1d
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result p1

    return p1

    .line 3505
    :cond_2c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3500
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FI)F
    .registers 22

    .line 3665
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .registers 24

    .line 3690
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    if-eqz p1, :cond_10c

    .line 3693
    const-string v4, ", "

    if-ltz v1, :cond_dc

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v2, v5, :cond_dc

    .line 3698
    const-string v5, " must be in "

    if-lt p2, v1, :cond_aa

    if-lt v2, p3, :cond_aa

    .line 3703
    if-lt v3, p2, :cond_80

    if-lt p3, v3, :cond_80

    .line 3708
    if-eqz v8, :cond_59

    array-length v4, v8

    sub-int v5, v9, p2

    add-int/2addr v5, p3

    if-lt v4, v5, :cond_29

    goto :goto_59

    .line 3709
    :cond_29
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " advanceIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needed space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int p2, v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3714
    :cond_59
    :goto_59
    if-ne p3, p2, :cond_5d

    .line 3715
    const/4 p1, 0x0

    return p1

    .line 3718
    :cond_5d
    sub-int v5, v2, v1

    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 3719
    const/4 v6, 0x0

    invoke-static {p1, v1, v2, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3720
    sub-int v2, p2, v1

    move p1, v3

    sub-int v3, p3, v1

    move v6, v1

    move-object v1, v4

    const/4 v4, 0x0

    sub-int v7, p1, v6

    move-object v0, p0

    move/from16 v6, p6

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    .line 3723
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3724
    return p1

    .line 3703
    :cond_80
    move p1, v3

    .line 3704
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid offset position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3698
    :cond_aa
    move v6, v1

    .line 3699
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start/end range: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3693
    :cond_dc
    move v6, v1

    .line 3694
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Context Range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3695
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3691
    :cond_10c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRunCharacterAdvance([CIIIIZI[FI)F
    .registers 22

    .line 3578
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .registers 25

    .line 3606
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    if-eqz p1, :cond_f7

    .line 3609
    const-string v0, ", "

    if-ltz v5, :cond_cb

    array-length v1, p1

    if-gt v6, v1, :cond_cb

    .line 3614
    const-string v1, " must be in "

    if-lt p2, v5, :cond_9a

    if-lt v6, v4, :cond_9a

    .line 3619
    if-lt v8, p2, :cond_71

    if-lt v4, v8, :cond_71

    .line 3624
    if-eqz v9, :cond_5a

    array-length v0, v9

    sub-int v1, v10, p2

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_2a

    goto :goto_5a

    .line 3625
    :cond_2a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " advanceIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needed space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int p2, v8, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3630
    :cond_5a
    :goto_5a
    if-ne v4, p2, :cond_64

    .line 3631
    if-eqz v12, :cond_62

    .line 3632
    const/4 p1, 0x0

    invoke-virtual {v12, p1}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    .line 3634
    :cond_62
    const/4 p1, 0x0

    return p1

    .line 3637
    :cond_64
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move/from16 v7, p6

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v12}, Landroid/graphics/Paint;->nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    return p1

    .line 3620
    :cond_71
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid offset position: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3615
    :cond_9a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid start/end range: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3610
    :cond_cb
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Range: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3607
    :cond_f7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getShader()Landroid/graphics/Shader;
    .registers 2

    .line 1391
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public whitelist getShadowLayerColor()I
    .registers 3

    .line 1729
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getShadowLayerColorLong()J
    .registers 3

    .line 1741
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    return-wide v0
.end method

.method public whitelist getShadowLayerDx()F
    .registers 2

    .line 1711
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    return v0
.end method

.method public whitelist getShadowLayerDy()F
    .registers 2

    .line 1720
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    return v0
.end method

.method public whitelist getShadowLayerRadius()F
    .registers 2

    .line 1702
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    return v0
.end method

.method public whitelist getStartHyphenEdit()I
    .registers 3

    .line 2248
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStartHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruPosition()F
    .registers 3

    .line 1087
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruThickness()F
    .registers 3

    .line 1099
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 4

    .line 1338
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeJoin()Landroid/graphics/Paint$Join;
    .registers 4

    .line 1357
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeMiter()F
    .registers 3

    .line 1316
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeWidth()F
    .registers 3

    .line 1293
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/graphics/Paint$Style;
    .registers 4

    .line 1169
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextAlign()Landroid/graphics/Paint$Align;
    .registers 4

    .line 1753
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .registers 8

    .line 3409
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_27

    .line 3412
    if-eqz p4, :cond_1e

    .line 3415
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3416
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3417
    invoke-virtual {p0, v0, v2, v1, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 3418
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3419
    return-void

    .line 3413
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3410
    :cond_27
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 13

    .line 3384
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_24

    .line 3387
    if-eqz p4, :cond_1b

    .line 3390
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 3391
    return-void

    .line 3388
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3385
    :cond_24
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextBounds([CIILandroid/graphics/Rect;)V
    .registers 14

    .line 3431
    or-int v0, p2, p3

    if-ltz v0, :cond_20

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_20

    .line 3434
    if-eqz p4, :cond_17

    .line 3437
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 3439
    return-void

    .line 3435
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3432
    :cond_20
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextLocale()Ljava/util/Locale;
    .registers 3

    .line 1776
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .registers 2

    .line 1786
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .registers 18

    .line 3366
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1f

    .line 3369
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 3370
    return-void

    .line 3367
    :cond_1f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextPath([CIIFFLandroid/graphics/Path;)V
    .registers 19

    .line 3346
    or-int v0, p2, p3

    if-ltz v0, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1c

    .line 3349
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 3350
    return-void

    .line 3347
    :cond_1c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextRunAdvances([CIIIIZ[FI)F
    .registers 20

    .line 3170
    move-object/from16 v8, p7

    if-eqz p1, :cond_89

    .line 3173
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int v0, v0, p5

    or-int v0, v0, p8

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v2, p2, p3

    sub-int v2, v1, v2

    or-int/2addr v0, v2

    array-length v2, p1

    sub-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 3177
    if-nez v8, :cond_1f

    const/4 v1, 0x0

    goto :goto_23

    .line 3178
    :cond_1f
    array-length v1, v8

    add-int v2, p8, p3

    sub-int/2addr v1, v2

    :goto_23
    or-int/2addr v0, v1

    if-ltz v0, :cond_83

    .line 3182
    array-length v0, p1

    if-eqz v0, :cond_81

    if-nez p3, :cond_2d

    goto/16 :goto_81

    .line 3185
    :cond_2d
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-nez v0, :cond_48

    .line 3186
    move v3, v1

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3187
    if-eqz p6, :cond_3a

    move v7, v3

    goto :goto_3b

    :cond_3a
    move v7, v2

    .line 3186
    :goto_3b
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p1

    return p1

    .line 3191
    :cond_48
    move v3, v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 3192
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3193
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3194
    if-eqz p6, :cond_59

    move v7, v3

    goto :goto_5a

    :cond_59
    move v7, v2

    .line 3193
    :goto_5a
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p1

    .line 3195
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3197
    if-eqz p7, :cond_7d

    .line 3198
    add-int p2, p8, p3

    move/from16 p3, p8

    :goto_71
    if-ge p3, p2, :cond_7d

    .line 3199
    aget v0, p7, p3

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p7, p3

    .line 3198
    add-int/lit8 p3, p3, 0x1

    goto :goto_71

    .line 3202
    :cond_7d
    iget p2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, p2

    return p1

    .line 3183
    :cond_81
    :goto_81
    const/4 p1, 0x0

    return p1

    .line 3179
    :cond_83
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3171
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getTextRunCursor(Ljava/lang/CharSequence;IIZII)I
    .registers 15

    .line 3273
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_43

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_43

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_11

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    goto :goto_47

    .line 3278
    :cond_11
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_23

    .line 3279
    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move-object v7, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result p1

    return p1

    .line 3283
    :cond_23
    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    sub-int p3, v3, p2

    .line 3284
    invoke-static {p3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 3285
    const/4 p4, 0x0

    invoke-static {p1, p2, v3, v1, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3286
    const/4 v2, 0x0

    sub-int/2addr v5, p2

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    .line 3287
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3288
    const/4 p3, -0x1

    if-ne p1, p3, :cond_40

    goto :goto_42

    :cond_40
    add-int p3, p1, p2

    :goto_42
    return p3

    .line 3273
    :cond_43
    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 3275
    :goto_47
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIZII)I

    move-result p1

    return p1
.end method

.method public blacklist getTextRunCursor(Ljava/lang/String;IIZII)I
    .registers 16

    .line 3321
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 3323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_27

    const/4 v0, 0x4

    if-gt p6, v0, :cond_27

    .line 3328
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3329
    nop

    .line 3328
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 3325
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextRunCursor([CIIZII)I
    .registers 16

    .line 3232
    add-int v0, p2, p3

    .line 3233
    or-int v1, p2, v0

    or-int/2addr v1, p5

    sub-int v2, v0, p2

    or-int/2addr v1, v2

    sub-int v2, p5, p2

    or-int/2addr v1, v2

    sub-int v2, v0, p5

    or-int/2addr v1, v2

    array-length v2, p1

    sub-int/2addr v2, v0

    or-int v0, v1, v2

    or-int/2addr v0, p6

    if-ltz v0, :cond_27

    const/4 v0, 0x4

    if-gt p6, v0, :cond_27

    .line 3240
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3241
    nop

    .line 3240
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v0

    return v0

    .line 3237
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextScaleX()F
    .registers 3

    .line 1973
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 3

    .line 1954
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSkewX()F
    .registers 3

    .line 1994
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths(Ljava/lang/CharSequence;II[F)I
    .registers 8

    .line 3033
    if-eqz p1, :cond_60

    .line 3036
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_5a

    .line 3039
    array-length v0, p4

    if-gt v1, v0, :cond_54

    .line 3043
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    if-ne p2, p3, :cond_1c

    goto :goto_53

    .line 3046
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 3047
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1

    .line 3049
    :cond_27
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4a

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_30

    goto :goto_4a

    .line 3053
    :cond_30
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3b

    .line 3054
    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result p1

    return p1

    .line 3058
    :cond_3b
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3059
    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3060
    invoke-virtual {p0, v0, v2, v1, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    .line 3061
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3062
    return p1

    .line 3051
    :cond_4a
    :goto_4a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1

    .line 3044
    :cond_53
    :goto_53
    return v2

    .line 3040
    :cond_54
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3037
    :cond_5a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3034
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getTextWidths(Ljava/lang/String;II[F)I
    .registers 19

    .line 3076
    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    if-eqz p1, :cond_89

    .line 3079
    or-int v0, v3, v4

    sub-int v10, v4, v3

    or-int/2addr v0, v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    or-int/2addr v0, v1

    if-ltz v0, :cond_83

    .line 3082
    array-length v0, v8

    if-gt v10, v0, :cond_7d

    .line 3086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_7c

    if-ne v3, v4, :cond_22

    goto :goto_7c

    .line 3089
    :cond_22
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v12

    .line 3090
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3092
    :try_start_2f
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_45

    .line 3093
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_77

    .line 3094
    nop

    .line 3106
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3094
    return v10

    .line 3097
    :cond_45
    :try_start_45
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 3098
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v13

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3099
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 3100
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3101
    nop

    :goto_66
    if-ge v11, v10, :cond_72

    .line 3102
    aget v0, p4, v11

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p4, v11
    :try_end_6f
    .catchall {:try_start_45 .. :try_end_6f} :catchall_77

    .line 3101
    add-int/lit8 v11, v11, 0x1

    goto :goto_66

    .line 3104
    :cond_72
    nop

    .line 3106
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3104
    return v10

    .line 3106
    :catchall_77
    move-exception v0

    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3107
    throw v0

    .line 3087
    :cond_7c
    :goto_7c
    return v11

    .line 3083
    :cond_7d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3080
    :cond_83
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3077
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextWidths(Ljava/lang/String;[F)I
    .registers 5

    .line 3119
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1
.end method

.method public whitelist getTextWidths([CII[F)I
    .registers 18

    .line 2988
    move/from16 v4, p3

    move-object/from16 v8, p4

    if-eqz p1, :cond_79

    .line 2991
    or-int v0, p2, v4

    if-ltz v0, :cond_73

    add-int v0, p2, v4

    array-length v1, p1

    if-gt v0, v1, :cond_73

    array-length v0, v8

    if-gt v4, v0, :cond_73

    .line 2996
    array-length v0, p1

    const/4 v10, 0x0

    if-eqz v0, :cond_72

    if-nez v4, :cond_19

    goto :goto_72

    .line 2999
    :cond_19
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v11

    .line 3000
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3002
    :try_start_26
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_3c

    .line 3003
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move/from16 v6, p3

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_6c

    .line 3005
    nop

    .line 3017
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3005
    return p3

    .line 3008
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 3009
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v12

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3010
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move/from16 v6, p3

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 3011
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3012
    nop

    :goto_5b
    if-ge v10, v4, :cond_67

    .line 3013
    aget p1, p4, v10

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, v0

    aput p1, p4, v10
    :try_end_64
    .catchall {:try_start_3c .. :try_end_64} :catchall_6c

    .line 3012
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    .line 3015
    :cond_67
    nop

    .line 3017
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3015
    return v4

    .line 3017
    :catchall_6c
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3018
    throw p1

    .line 2997
    :cond_72
    :goto_72
    return v10

    .line 2993
    :cond_73
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2989
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 1586
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getUnderlinePosition()F
    .registers 3

    .line 1034
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUnderlineThickness()F
    .registers 3

    .line 1046
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getWordSpacing()F
    .registers 3

    .line 2037
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .line 1449
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public whitelist hasGlyph(Ljava/lang/String;)Z
    .registers 5

    .line 3458
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasShadowLayer()Z
    .registers 3

    .line 1693
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAntiAlias()Z
    .registers 3

    .line 928
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public final whitelist isDither()Z
    .registers 2

    .line 954
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1874
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetElegantTextHeight(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final whitelist isFakeBoldText()Z
    .registers 2

    .line 1121
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isFilterBitmap()Z
    .registers 2

    .line 1144
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isLinearText()Z
    .registers 2

    .line 977
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isStrikeThruText()Z
    .registers 2

    .line 1071
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isSubpixelText()Z
    .registers 2

    .line 996
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isUnderlineText()Z
    .registers 2

    .line 1018
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist measureText(Ljava/lang/CharSequence;II)F
    .registers 7

    .line 2819
    if-eqz p1, :cond_58

    .line 2822
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_52

    .line 2826
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_50

    if-ne p2, p3, :cond_18

    goto :goto_50

    .line 2829
    :cond_18
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 2830
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 2832
    :cond_23
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_47

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2c

    goto :goto_47

    .line 2836
    :cond_2c
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_37

    .line 2837
    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result p1

    return p1

    .line 2840
    :cond_37
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2841
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2842
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    .line 2843
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2844
    return p1

    .line 2834
    :cond_47
    :goto_47
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 2827
    :cond_50
    :goto_50
    const/4 p1, 0x0

    return p1

    .line 2823
    :cond_52
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2820
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist measureText(Ljava/lang/String;)F
    .registers 4

    .line 2804
    if-eqz p1, :cond_c

    .line 2807
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 2805
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist measureText(Ljava/lang/String;II)F
    .registers 16

    .line 2769
    if-eqz p1, :cond_79

    .line 2772
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_73

    .line 2776
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_71

    if-ne p2, p3, :cond_18

    goto :goto_71

    .line 2779
    :cond_18
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2780
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2782
    :try_start_25
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_42

    .line 2783
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_6b

    double-to-float p1, p1

    .line 2793
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2783
    return p1

    .line 2786
    :cond_42
    move-object v4, p1

    move v5, p2

    move v6, p3

    :try_start_45
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2787
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2788
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p2

    .line 2790
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2791
    iget p1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_6b

    double-to-float p1, p1

    .line 2793
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2791
    return p1

    .line 2793
    :catchall_6b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2794
    throw p1

    .line 2777
    :cond_71
    :goto_71
    const/4 p1, 0x0

    return p1

    .line 2773
    :cond_73
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2770
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist measureText([CII)F
    .registers 16

    .line 2730
    if-eqz p1, :cond_72

    .line 2733
    or-int v0, p2, p3

    if-ltz v0, :cond_6c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6c

    .line 2737
    array-length v0, p1

    if-eqz v0, :cond_6a

    if-nez p3, :cond_11

    goto :goto_6a

    .line 2740
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2741
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2744
    :try_start_1e
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_3b

    .line 2745
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_64

    double-to-float p1, p1

    .line 2756
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2745
    return p1

    .line 2749
    :cond_3b
    move-object v4, p1

    move v5, p2

    move v6, p3

    :try_start_3e
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2750
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2751
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p2

    .line 2753
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2754
    iget p1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_64

    double-to-float p1, p1

    .line 2756
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2754
    return p1

    .line 2756
    :catchall_64
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2757
    throw p1

    .line 2738
    :cond_6a
    :goto_6a
    const/4 p1, 0x0

    return p1

    .line 2734
    :cond_6c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2731
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist reset()V
    .registers 4

    .line 730
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 731
    const/16 v0, 0x503

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 738
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 740
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 741
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 742
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 743
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 744
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 745
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 746
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 748
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 749
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 750
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 752
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 753
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 754
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 755
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 756
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixPaintResetInconsistency()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 757
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 758
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFontVariationOverride(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4f

    .line 761
    :cond_4d
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 764
    :goto_4f
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 765
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 766
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 767
    invoke-static {v1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 768
    return-void
.end method

.method public whitelist set(Landroid/graphics/Paint;)V
    .registers 6

    .line 776
    if-eq p0, p1, :cond_c

    .line 778
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 779
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 781
    :cond_c
    return-void
.end method

.method public whitelist setARGB(IIII)V
    .registers 5

    .line 1280
    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1281
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 8

    .line 1263
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1264
    iget-wide v1, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v1

    .line 1265
    iget-wide v2, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v2, v3}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1266
    iget-wide v3, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v3, v4}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    .line 1267
    int-to-float v4, p1

    const v5, 0x3b808081

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1268
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 1269
    return-void
.end method

.method public whitelist setAntiAlias(Z)V
    .registers 4

    .line 940
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 941
    return-void
.end method

.method public greylist-max-o setBidiFlags(I)V
    .registers 5

    .line 878
    and-int/lit8 p1, p1, 0x7

    .line 879
    const/4 v0, 0x5

    if-gt p1, v0, :cond_8

    .line 882
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 883
    return-void

    .line 880
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 2

    .line 1517
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1518
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4

    .line 1219
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 1220
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1221
    return-void
.end method

.method public whitelist setColor(J)V
    .registers 10

    .line 1236
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1238
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nSetColor(JJJ)V

    .line 1239
    iput-wide v5, p0, Landroid/graphics/Paint;->mColor:J

    .line 1240
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .registers 4

    .line 1434
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_8

    .line 1435
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1439
    :cond_8
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1440
    return-object p1
.end method

.method public greylist setCompatibilityScaling(F)V
    .registers 6

    .line 816
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_11

    .line 817
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 818
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_19

    .line 820
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 821
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 822
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 824
    :goto_19
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 4

    .line 968
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 969
    return-void
.end method

.method public whitelist setElegantTextHeight(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1902
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->deprecateElegantTextHeightApi()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_1b

    .line 1903
    const-wide/32 v0, 0x14d53e73

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1904
    if-nez p1, :cond_1a

    .line 1905
    const-string p1, "Paint"

    const-string v0, "The elegant text height cannot be turned off."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_1a
    return-void

    .line 1909
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 1910
    nop

    .line 1909
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1911
    return-void
.end method

.method public whitelist setEndHyphenEdit(I)V
    .registers 4

    .line 2313
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetEndHyphenEdit(JI)V

    .line 2314
    return-void
.end method

.method public whitelist setFakeBoldText(Z)V
    .registers 4

    .line 1131
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 1132
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 4

    .line 1158
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 1159
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 4

    .line 900
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 901
    return-void
.end method

.method public whitelist setFontFeatureSettings(Ljava/lang/String;)V
    .registers 4

    .line 2079
    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2080
    const/4 p1, 0x0

    .line 2082
    :cond_b
    if-nez p1, :cond_11

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :cond_11
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2083
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2084
    :cond_1b
    return-void

    .line 2086
    :cond_1c
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2087
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 2088
    return-void
.end method

.method public whitelist setFontVariationOverride(Ljava/lang/String;)V
    .registers 8

    .line 2213
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2214
    return-void

    .line 2217
    :cond_9
    nop

    .line 2218
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettingsForList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Paint;->nCreateFontVariationBuilder(I)J

    move-result-wide v1

    .line 2220
    const/4 v3, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 2221
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontVariationAxis;

    .line 2222
    nop

    .line 2223
    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v4

    .line 2222
    invoke-static {v1, v2, v5, v4}, Landroid/graphics/Paint;->nAddFontVariationToBuilder(JIF)V

    .line 2220
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2225
    :cond_32
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Paint;->nSetFontVariationOverride(JJ)V

    .line 2226
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    .line 2227
    return-void
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Z
    .registers 11

    .line 2150
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2151
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_68

    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2152
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_68

    .line 2156
    :cond_14
    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_57

    .line 2165
    :cond_1d
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_24

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_26

    :cond_24
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2166
    :goto_26
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v2

    .line 2167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_32
    if-ge v6, v4, :cond_46

    aget-object v7, v2, v6

    .line 2169
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 2170
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 2173
    :cond_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2174
    return v5

    .line 2176
    :cond_4d
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2177
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2178
    return v1

    .line 2157
    :cond_57
    :goto_57
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2158
    iget-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2158
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2160
    return v1

    .line 2153
    :cond_68
    :goto_68
    return v1
.end method

.method public whitelist setHinting(I)V
    .registers 4

    .line 916
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 917
    return-void
.end method

.method public whitelist setLetterSpacing(F)V
    .registers 4

    .line 2025
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 2026
    return-void
.end method

.method public whitelist setLinearText(Z)V
    .registers 4

    .line 987
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 988
    return-void
.end method

.method public whitelist setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .registers 6

    .line 1568
    nop

    .line 1569
    if-eqz p1, :cond_6

    .line 1570
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    goto :goto_8

    .line 1569
    :cond_6
    const-wide/16 v0, 0x0

    .line 1572
    :goto_8
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1573
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1574
    return-object p1
.end method

.method public whitelist setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .registers 6

    .line 1539
    nop

    .line 1540
    if-eqz p1, :cond_6

    .line 1541
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    goto :goto_8

    .line 1540
    :cond_6
    const-wide/16 v0, 0x0

    .line 1543
    :goto_8
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1544
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1545
    return-object p1
.end method

.method public greylist setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1635
    return-object p1
.end method

.method public whitelist setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .registers 6

    .line 1406
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_f

    .line 1407
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1409
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1412
    :cond_f
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1413
    return-object p1
.end method

.method public whitelist setShadowLayer(FFFI)V
    .registers 11

    .line 1651
    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->setShadowLayer(FFFJ)V

    .line 1652
    return-void
.end method

.method public whitelist setShadowLayer(FFFJ)V
    .registers 16

    .line 1670
    invoke-static {p4, p5}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1671
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFJJ)V

    .line 1673
    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1674
    iput v4, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1675
    iput v5, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1676
    iput-wide v8, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 1677
    return-void
.end method

.method public whitelist setStartHyphenEdit(I)V
    .registers 4

    .line 2287
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStartHyphenEdit(JI)V

    .line 2288
    return-void
.end method

.method public whitelist setStrikeThruText(Z)V
    .registers 4

    .line 1112
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 1113
    return-void
.end method

.method public whitelist setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 4

    .line 1348
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1349
    return-void
.end method

.method public whitelist setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .registers 4

    .line 1367
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1368
    return-void
.end method

.method public whitelist setStrokeMiter(F)V
    .registers 4

    .line 1327
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1328
    return-void
.end method

.method public whitelist setStrokeWidth(F)V
    .registers 4

    .line 1305
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1306
    return-void
.end method

.method public whitelist setStyle(Landroid/graphics/Paint$Style;)V
    .registers 4

    .line 1180
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 1181
    return-void
.end method

.method public whitelist setSubpixelText(Z)V
    .registers 4

    .line 1006
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 1007
    return-void
.end method

.method public whitelist setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 4

    .line 1765
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1766
    return-void
.end method

.method public whitelist setTextLocale(Ljava/util/Locale;)V
    .registers 5

    .line 1798
    if-eqz p1, :cond_2c

    .line 1801
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1802
    return-void

    .line 1804
    :cond_1d
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1805
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1806
    return-void

    .line 1799
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "locale cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTextLocales(Landroid/os/LocaleList;)V
    .registers 3

    .line 1836
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1839
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1840
    :cond_11
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1841
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1842
    return-void

    .line 1837
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "locales cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTextScaleX(F)V
    .registers 4

    .line 1984
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1985
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4

    .line 1963
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1964
    return-void
.end method

.method public whitelist setTextSkewX(F)V
    .registers 4

    .line 2004
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 2005
    return-void
.end method

.method public whitelist setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 6

    .line 1599
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    .line 1600
    :goto_9
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1601
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1602
    return-object p1
.end method

.method public whitelist setUnderlineText(Z)V
    .registers 4

    .line 1059
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 1060
    return-void
.end method

.method public whitelist setWordSpacing(F)V
    .registers 4

    .line 2050
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 2051
    return-void
.end method

.method public whitelist setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 2

    .line 1481
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object p1

    return-object p1
.end method
