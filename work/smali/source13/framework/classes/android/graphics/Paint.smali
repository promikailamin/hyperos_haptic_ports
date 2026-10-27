.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$EndHyphenEdit;,
        Landroid/graphics/Paint$StartHyphenEdit;,
        Landroid/graphics/Paint$CursorOption;,
        Landroid/graphics/Paint$PaintFlag;,
        Landroid/graphics/Paint$NoImagePreloadHolder;
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

.field public static final whitelist DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final greylist-max-o DIRECTION_LTR:I = 0x0

.field public static final greylist-max-o DIRECTION_RTL:I = 0x1

.field public static final whitelist DITHER_FLAG:I = 0x4

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

.field public static final whitelist UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final greylist-max-o VERTICAL_TEXT_FLAG:I = 0x1000

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

.field private greylist-max-o mFontVariationSettings:Ljava/lang/String;

.field private greylist-max-o mHasCompatScaling:Z

.field private greylist-max-o mInvCompatScaling:F

.field private greylist-max-o mLocales:Landroid/os/LocaleList;

.field private greylist-max-o mMaskFilter:Landroid/graphics/MaskFilter;

.field private greylist-max-o mNativeColorFilter:J

.field private greylist-max-r mNativePaint:J

.field private greylist-max-o mNativeShader:J

.field private greylist-max-o mPathEffect:Landroid/graphics/PathEffect;

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private blacklist mShadowLayerColor:J

.field private greylist-max-o mShadowLayerDx:F

.field private greylist-max-o mShadowLayerDy:F

.field private greylist-max-o mShadowLayerRadius:F

.field private blacklist mShowTypeface:Landroid/graphics/Typeface;

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

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 108
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

    .line 111
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 114
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 117
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

    .line 582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 583
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 599
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 600
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 601
    or-int/lit16 v0, p1, 0x502

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 607
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 608
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 609
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .registers 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 619
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 620
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 621
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 622
    return-void
.end method

.method private blacklist checkMiuiFont()V
    .registers 6

    .line 753
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 754
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/graphics/FontManagerStub;->checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v0

    .line 755
    .local v0, "font":Landroid/graphics/Typeface;
    if-eqz v0, :cond_27

    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-eq v1, v0, :cond_27

    .line 756
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 757
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 760
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_27
    return-void
.end method

.method private blacklist installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 6
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1385
    if-eqz p1, :cond_5

    iget v0, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_7

    :cond_5
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1386
    .local v0, "newMode":I
    :goto_7
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v1, :cond_e

    iget v1, v1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_10

    :cond_e
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1387
    .local v1, "curMode":I
    :goto_10
    if-eq v0, v1, :cond_17

    .line 1388
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1390
    :cond_17
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1391
    return-object p1
.end method

.method private static native greylist-max-o nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native greylist-max-o nBreakText(J[CIIFI[F)I
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

.method private static native greylist-max-o nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I
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

.method private static native greylist-max-o nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
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

.method private static native greylist-max-o nSetElegantTextHeight(JZ)V
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

.method private greylist-max-o setClassVariablesFrom(Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 681
    iget-wide v0, p1, Landroid/graphics/Paint;->mColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 682
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 683
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 684
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 685
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 686
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 688
    iget-object v0, p1, Landroid/graphics/Paint;->mShowTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mShowTypeface:Landroid/graphics/Typeface;

    .line 689
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 690
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 692
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 693
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 694
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 696
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 697
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 698
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 699
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 701
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 702
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 703
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 704
    iget-wide v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 705
    return-void
.end method

.method private greylist-max-o syncTextLocalesWithMinikin()V
    .registers 7

    .line 1770
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1773
    :try_start_9
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1774
    .local v3, "minikinLocaleListId":Ljava/lang/Integer;
    if-nez v3, :cond_22

    .line 1775
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v4

    .line 1776
    .local v4, "newID":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    monitor-exit v1

    return-void

    .line 1779
    .end local v4    # "newID":I
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2d

    .line 1780
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1781
    return-void

    .line 1779
    .end local v3    # "minikinLocaleListId":Ljava/lang/Integer;
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private blacklist useMiuiVarFont(Landroid/graphics/Typeface;)V
    .registers 7
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1522
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1523
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/graphics/FontManagerStub;->useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1524
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_1b

    const-wide/16 v1, 0x0

    goto :goto_1d

    :cond_1b
    iget-wide v1, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 1525
    .local v1, "typefaceNative":J
    :goto_1d
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1526
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1528
    .end local v0    # "tf":Landroid/graphics/Typeface;
    .end local v1    # "typefaceNative":J
    :cond_24
    return-void
.end method


# virtual methods
.method public whitelist ascent()F
    .registers 3

    .line 2120
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist breakText(Ljava/lang/CharSequence;IIZF[F)I
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .line 2574
    if-eqz p1, :cond_5b

    .line 2577
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_55

    .line 2581
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    if-ne p2, p3, :cond_19

    goto :goto_54

    .line 2584
    :cond_19
    if-nez p2, :cond_2d

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_2d

    .line 2585
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 2589
    :cond_2d
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2592
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2594
    if-eqz p4, :cond_44

    .line 2595
    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .local v1, "result":I
    goto :goto_50

    .line 2597
    .end local v1    # "result":I
    :cond_44
    const/4 v4, 0x0

    sub-int v1, p3, p2

    neg-int v5, v1

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .line 2600
    .restart local v1    # "result":I
    :goto_50
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2601
    return v1

    .line 2582
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_54
    :goto_54
    return v1

    .line 2578
    :cond_55
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2575
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist breakText(Ljava/lang/String;ZF[F)I
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .line 2622
    if-eqz p1, :cond_41

    .line 2626
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2627
    return v1

    .line 2629
    :cond_a
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1b

    .line 2630
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    .line 2634
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2635
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2636
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p3, v2

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v2

    .line 2638
    .local v2, "res":I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2639
    if-eqz p4, :cond_40

    aget v3, p4, v1

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v1

    .line 2640
    :cond_40
    return v2

    .line 2623
    .end local v0    # "oldSize":F
    .end local v2    # "res":I
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist breakText([CIIF[F)I
    .registers 18
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .line 2531
    move-object v0, p0

    move-object v9, p1

    if-eqz v9, :cond_58

    .line 2534
    if-ltz p2, :cond_52

    array-length v1, v9

    sub-int/2addr v1, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_52

    .line 2538
    array-length v1, v9

    const/4 v10, 0x0

    if-eqz v1, :cond_51

    if-nez p3, :cond_15

    goto :goto_51

    .line 2541
    :cond_15
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_29

    .line 2542
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    return v1

    .line 2546
    :cond_29
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 2547
    .local v11, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v11

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2548
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p4, v3

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    .line 2550
    .local v1, "res":I
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2551
    if-eqz p5, :cond_50

    aget v2, p5, v10

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p5, v10

    .line 2552
    :cond_50
    return v1

    .line 2539
    .end local v1    # "res":I
    .end local v11    # "oldSize":F
    :cond_51
    :goto_51
    return v10

    .line 2535
    :cond_52
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2532
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearShadowLayer()V
    .registers 3

    .line 1608
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1609
    return-void
.end method

.method public whitelist descent()F
    .registers 3

    .line 2134
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 3284
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getAlpha()I
    .registers 3

    .line 1150
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

    .line 769
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1359
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_6

    .line 1360
    const/4 v0, 0x0

    return-object v0

    .line 1362
    :cond_6
    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .registers 3

    .line 1093
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1322
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColorLong()J
    .registers 3

    .line 1107
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    return-wide v0
.end method

.method public whitelist getEndHyphenEdit()I
    .registers 3

    .line 2053
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetEndHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .registers 9
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 1282
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getFlags()I
    .registers 3

    .line 791
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .line 1919
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .registers 4
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2181
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public whitelist getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .line 2189
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2190
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2191
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .registers 4
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2374
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public whitelist getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .registers 2

    .line 2378
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2379
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2380
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 24
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2218
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v14, p7

    if-eqz v2, :cond_a0

    .line 2221
    if-ltz v12, :cond_97

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v12, v0, :cond_97

    .line 2224
    if-ltz p3, :cond_8f

    add-int v0, v12, p3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_8f

    .line 2227
    if-ltz v13, :cond_87

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v13, v0, :cond_87

    .line 2230
    if-ltz p5, :cond_7f

    add-int v0, v13, p5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_7f

    .line 2233
    if-eqz v14, :cond_76

    .line 2237
    if-nez p3, :cond_38

    .line 2238
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2239
    return-void

    .line 2242
    :cond_38
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 2243
    iget-wide v3, v1, Landroid/graphics/Paint;->mNativePaint:J

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_70

    .line 2246
    :cond_51
    invoke-static/range {p5 .. p5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v15

    .line 2248
    .local v15, "buf":[C
    add-int v0, v13, p5

    const/4 v3, 0x0

    :try_start_58
    invoke-static {v2, v13, v0, v15, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2249
    iget-wide v3, v1, Landroid/graphics/Paint;->mNativePaint:J

    sub-int v6, v12, v13

    const/4 v8, 0x0

    move-object v5, v15

    move/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_71

    .line 2252
    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2253
    nop

    .line 2256
    .end local v15    # "buf":[C
    :goto_70
    return-void

    .line 2252
    .restart local v15    # "buf":[C
    :catchall_71
    move-exception v0

    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2253
    throw v0

    .line 2234
    .end local v15    # "buf":[C
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "outMetrics must not be null."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2231
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "ctxCount argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2228
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "ctxStart argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "count argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "start argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2219
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 22
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2280
    move-object v0, p0

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-object/from16 v13, p7

    if-eqz v10, :cond_67

    .line 2283
    if-ltz v11, :cond_5e

    array-length v1, v10

    if-ge v11, v1, :cond_5e

    .line 2286
    if-ltz p3, :cond_56

    add-int v1, v11, p3

    array-length v2, v10

    if-gt v1, v2, :cond_56

    .line 2289
    if-ltz v12, :cond_4e

    array-length v1, v10

    if-ge v12, v1, :cond_4e

    .line 2292
    if-ltz p5, :cond_46

    add-int v1, v12, p5

    array-length v2, v10

    if-gt v1, v2, :cond_46

    .line 2295
    if-eqz v13, :cond_3d

    .line 2299
    if-nez p3, :cond_2a

    .line 2300
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2301
    return-void

    .line 2304
    :cond_2a
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .line 2306
    return-void

    .line 2296
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "outMetrics must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2293
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ctxCount argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2290
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ctxStart argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2287
    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "count argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2284
    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "start argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2281
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getFontSpacing()F
    .registers 2

    .line 2394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 1953
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHinting()I
    .registers 3

    .line 808
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public blacklist getInternalTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 1515
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getLetterSpacing()F
    .registers 3

    .line 1869
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    .line 1444
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public declared-synchronized greylist getNativeInstance()J
    .registers 9

    monitor-enter p0

    .line 733
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    .line 734
    .local v0, "filter":Z
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_d

    move-wide v4, v2

    goto :goto_11

    :cond_d
    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v4

    .line 735
    .local v4, "newNativeShader":J
    :goto_11
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1e

    .line 736
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 737
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v4, v5}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 739
    .end local p0    # "this":Landroid/graphics/Paint;
    :cond_1e
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_23

    :goto_22
    goto :goto_28

    :cond_23
    invoke-virtual {v1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    goto :goto_22

    :goto_28
    move-wide v1, v2

    .line 740
    .local v1, "newNativeColorFilter":J
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_36

    .line 741
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 742
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v1, v2}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 745
    :cond_36
    invoke-direct {p0}, Landroid/graphics/Paint;->checkMiuiFont()V

    .line 746
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-wide v6

    .line 732
    .end local v0    # "filter":Z
    .end local v1    # "newNativeColorFilter":J
    .end local v4    # "newNativeShader":J
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .registers 20
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3260
    move-object v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    if-eqz v0, :cond_42

    .line 3263
    or-int v3, v1, p2

    or-int/2addr v3, p3

    or-int/2addr v3, v2

    sub-int v4, p2, v1

    or-int/2addr v3, v4

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p3

    or-int/2addr v3, v4

    .line 3265
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    if-ltz v3, :cond_3c

    .line 3269
    sub-int v3, v2, v1

    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 3270
    .local v3, "buf":[C
    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3271
    sub-int v6, p2, v1

    sub-int v7, p3, v1

    const/4 v8, 0x0

    sub-int v9, v2, v1

    move-object v4, p0

    move-object v5, v3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v4

    add-int/2addr v4, v1

    .line 3273
    .local v4, "result":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3274
    return v4

    .line 3266
    .end local v3    # "buf":[C
    .end local v4    # "result":I
    :cond_3c
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 3261
    :cond_42
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist getOffsetForAdvance([CIIIIZF)I
    .registers 19
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3233
    move-object v9, p1

    if-eqz v9, :cond_30

    .line 3236
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_29

    .line 3242
    move-object v10, p0

    iget-wide v0, v10, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 3239
    :cond_29
    move-object v10, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3234
    :cond_30
    move-object v10, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPathEffect()Landroid/graphics/PathEffect;
    .registers 2

    .line 1416
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public greylist getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1542
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .registers 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3183
    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-eqz v0, :cond_4e

    .line 3186
    or-int v5, v3, v1

    or-int v5, v5, p7

    or-int/2addr v5, v2

    or-int/2addr v5, v4

    sub-int v6, v1, v3

    or-int/2addr v5, v6

    sub-int v6, p7, v1

    or-int/2addr v5, v6

    sub-int v6, v2, p7

    or-int/2addr v5, v6

    sub-int v6, v4, v2

    or-int/2addr v5, v6

    .line 3188
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    or-int/2addr v5, v6

    if-ltz v5, :cond_48

    .line 3191
    if-ne v2, v1, :cond_29

    .line 3192
    const/4 v5, 0x0

    return v5

    .line 3195
    :cond_29
    sub-int v5, v4, v3

    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v5

    .line 3196
    .local v5, "buf":[C
    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3197
    sub-int v8, v1, v3

    sub-int v9, v2, v3

    const/4 v10, 0x0

    sub-int v11, v4, v3

    sub-int v13, p7, v3

    move-object v6, p0

    move-object v7, v5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v6

    .line 3199
    .local v6, "result":F
    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3200
    return v6

    .line 3189
    .end local v5    # "buf":[C
    .end local v6    # "result":F
    :cond_48
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 3184
    :cond_4e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "text cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist getRunAdvance([CIIIIZI)F
    .registers 21
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3153
    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    if-eqz v9, :cond_3e

    .line 3156
    or-int v0, p4, v10

    or-int v0, v0, p7

    or-int/2addr v0, v11

    or-int v0, v0, p5

    sub-int v1, v10, p4

    or-int/2addr v0, v1

    sub-int v1, p7, v10

    or-int/2addr v0, v1

    sub-int v1, v11, p7

    or-int/2addr v0, v1

    sub-int v1, p5, v11

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_37

    .line 3161
    if-ne v11, v10, :cond_23

    .line 3162
    const/4 v0, 0x0

    return v0

    .line 3165
    :cond_23
    move-object v12, p0

    iget-wide v0, v12, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result v0

    return v0

    .line 3159
    :cond_37
    move-object v12, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3154
    :cond_3e
    move-object v12, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShader()Landroid/graphics/Shader;
    .registers 2

    .line 1291
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public whitelist getShadowLayerColor()I
    .registers 3

    .line 1654
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getShadowLayerColorLong()J
    .registers 3

    .line 1666
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    return-wide v0
.end method

.method public whitelist getShadowLayerDx()F
    .registers 2

    .line 1636
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    return v0
.end method

.method public whitelist getShadowLayerDy()F
    .registers 2

    .line 1645
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    return v0
.end method

.method public whitelist getShadowLayerRadius()F
    .registers 2

    .line 1627
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    return v0
.end method

.method public whitelist getStartHyphenEdit()I
    .registers 3

    .line 2041
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStartHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruPosition()F
    .registers 3

    .line 987
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruThickness()F
    .registers 3

    .line 999
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 4

    .line 1238
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeJoin()Landroid/graphics/Paint$Join;
    .registers 4

    .line 1257
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeMiter()F
    .registers 3

    .line 1216
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeWidth()F
    .registers 3

    .line 1193
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/graphics/Paint$Style;
    .registers 4

    .line 1069
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextAlign()Landroid/graphics/Paint$Align;
    .registers 4

    .line 1678
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3063
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_2b

    .line 3066
    if-eqz p4, :cond_22

    .line 3069
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3070
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3071
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 3072
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3073
    return-void

    .line 3067
    .end local v0    # "buf":[C
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3064
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3038
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_24

    .line 3041
    if-eqz p4, :cond_1b

    .line 3044
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 3045
    return-void

    .line 3042
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3039
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextBounds([CIILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3085
    or-int v0, p2, p3

    if-ltz v0, :cond_20

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_20

    .line 3088
    if-eqz p4, :cond_17

    .line 3091
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 3093
    return-void

    .line 3089
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3086
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextLocale()Ljava/util/Locale;
    .registers 3

    .line 1701
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .registers 2

    .line 1711
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3020
    move-object v0, p0

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_20

    .line 3023
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 3024
    return-void

    .line 3021
    :cond_20
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist getTextPath([CIIFFLandroid/graphics/Path;)V
    .registers 19
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3000
    move-object v0, p0

    or-int v1, p2, p3

    if-ltz v1, :cond_1e

    add-int v1, p2, p3

    move-object v11, p1

    array-length v2, v11

    if-gt v1, v2, :cond_1f

    .line 3003
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 3004
    return-void

    .line 3000
    :cond_1e
    move-object v11, p1

    .line 3001
    :cond_1f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist getTextRunAdvances([CIIIIZ[FI)F
    .registers 23
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .line 2824
    move-object v0, p0

    move-object v11, p1

    move-object/from16 v12, p7

    if-eqz v11, :cond_95

    .line 2827
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v11

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 2831
    if-nez v12, :cond_23

    const/4 v2, 0x0

    goto :goto_27

    .line 2832
    :cond_23
    array-length v2, v12

    add-int v3, p8, p3

    sub-int/2addr v2, v3

    :goto_27
    or-int/2addr v1, v2

    if-ltz v1, :cond_8f

    .line 2836
    array-length v1, v11

    if-eqz v1, :cond_8d

    if-nez p3, :cond_31

    goto/16 :goto_8d

    .line 2839
    :cond_31
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-nez v1, :cond_51

    .line 2840
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2841
    if-eqz p6, :cond_3d

    move v8, v2

    goto :goto_3e

    :cond_3d
    move v8, v3

    .line 2840
    :goto_3e
    move-wide v1, v4

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    return v1

    .line 2845
    :cond_51
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 2846
    .local v13, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2847
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2848
    if-eqz p6, :cond_61

    move v8, v2

    goto :goto_62

    :cond_61
    move v8, v3

    .line 2847
    :goto_62
    move-wide v1, v4

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 2849
    .local v1, "res":F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2851
    if-eqz v12, :cond_89

    .line 2852
    move/from16 v2, p8

    .local v2, "i":I
    add-int v3, v2, p3

    .local v3, "e":I
    :goto_7d
    if-ge v2, v3, :cond_89

    .line 2853
    aget v4, v12, v2

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v12, v2

    .line 2852
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 2856
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_89
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    return v2

    .line 2837
    .end local v1    # "res":F
    .end local v13    # "oldSize":F
    :cond_8d
    :goto_8d
    const/4 v1, 0x0

    return v1

    .line 2833
    :cond_8f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2825
    :cond_95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTextRunCursor(Ljava/lang/CharSequence;IIZII)I
    .registers 24
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2927
    move-object/from16 v0, p1

    move/from16 v8, p2

    move/from16 v9, p3

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_4e

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_4e

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_13

    goto :goto_4e

    .line 2932
    :cond_13
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_2b

    .line 2933
    move-object v1, v0

    check-cast v1, Landroid/text/GraphicsOperations;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p0

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result v1

    return v1

    .line 2937
    :cond_2b
    sub-int v1, v9, v8

    .line 2938
    .local v1, "contextLen":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2939
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v0, v8, v9, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2940
    const/4 v12, 0x0

    sub-int v15, p5, v8

    move-object/from16 v10, p0

    move-object v11, v2

    move v13, v1

    move/from16 v14, p4

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v3

    .line 2941
    .local v3, "relPos":I
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2942
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4b

    goto :goto_4d

    :cond_4b
    add-int v4, v3, v8

    :goto_4d
    return v4

    .line 2929
    .end local v1    # "contextLen":I
    .end local v2    # "buf":[C
    .end local v3    # "relPos":I
    :cond_4e
    :goto_4e
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIZII)I

    move-result v1

    return v1
.end method

.method public blacklist getTextRunCursor(Ljava/lang/String;IIZII)I
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2975
    move/from16 v9, p6

    or-int v0, p2, p3

    or-int v0, v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 2977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_2d

    const/4 v0, 0x4

    if-gt v9, v0, :cond_2d

    .line 2982
    move-object v10, p0

    iget-wide v1, v10, Landroid/graphics/Paint;->mNativePaint:J

    .line 2983
    nop

    .line 2982
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 2977
    :cond_2d
    move-object v10, p0

    .line 2979
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextRunCursor([CIIZII)I
    .registers 20
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2886
    move/from16 v9, p6

    add-int v10, p2, p3

    .line 2887
    .local v10, "contextEnd":I
    or-int v0, p2, v10

    or-int v0, v0, p5

    sub-int v1, v10, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v10, p5

    or-int/2addr v0, v1

    move-object v11, p1

    array-length v1, v11

    sub-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_2f

    const/4 v0, 0x4

    if-gt v9, v0, :cond_2f

    .line 2894
    move-object v12, p0

    iget-wide v1, v12, Landroid/graphics/Paint;->mNativePaint:J

    .line 2895
    nop

    .line 2894
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v0

    return v0

    .line 2887
    :cond_2f
    move-object v12, p0

    .line 2891
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextScaleX()F
    .registers 3

    .line 1828
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 3

    .line 1809
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSkewX()F
    .registers 3

    .line 1849
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths(Ljava/lang/CharSequence;II[F)I
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 2693
    if-eqz p1, :cond_68

    .line 2696
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_62

    .line 2699
    sub-int v0, p3, p2

    array-length v1, p4

    if-gt v0, v1, :cond_5c

    .line 2703
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    if-ne p2, p3, :cond_1e

    goto :goto_5b

    .line 2706
    :cond_1e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 2707
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2709
    :cond_2a
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_52

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_33

    goto :goto_52

    .line 2713
    :cond_33
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3f

    .line 2714
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 2718
    :cond_3f
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2719
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2720
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 2721
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2722
    return v1

    .line 2711
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2704
    :cond_5b
    :goto_5b
    return v1

    .line 2700
    :cond_5c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2697
    :cond_62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2694
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextWidths(Ljava/lang/String;II[F)I
    .registers 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 2736
    move-object v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    if-eqz p1, :cond_80

    .line 2739
    or-int v1, v11, v12

    sub-int v2, v12, v11

    or-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v12

    or-int/2addr v1, v2

    if-ltz v1, :cond_7a

    .line 2742
    sub-int v1, v12, v11

    array-length v2, v13

    if-gt v1, v2, :cond_74

    .line 2746
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_72

    if-ne v11, v12, :cond_24

    goto :goto_72

    .line 2749
    :cond_24
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_3f

    .line 2750
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2751
    sub-int v1, v12, v11

    return v1

    .line 2754
    :cond_3f
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 2755
    .local v14, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v14

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2756
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2757
    invoke-virtual {p0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_61
    sub-int v2, v12, v11

    if-ge v1, v2, :cond_6f

    .line 2759
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2758
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 2761
    .end local v1    # "i":I
    :cond_6f
    sub-int v1, v12, v11

    return v1

    .line 2747
    .end local v14    # "oldSize":F
    :cond_72
    :goto_72
    const/4 v1, 0x0

    return v1

    .line 2743
    :cond_74
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2740
    :cond_7a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2737
    :cond_80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTextWidths(Ljava/lang/String;[F)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .line 2773
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths([CII[F)I
    .registers 20
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .line 2655
    move-object v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    if-eqz v11, :cond_6b

    .line 2658
    or-int v1, p2, v12

    if-ltz v1, :cond_65

    add-int v1, p2, v12

    array-length v2, v11

    if-gt v1, v2, :cond_65

    array-length v1, v13

    if-gt v12, v1, :cond_65

    .line 2663
    array-length v1, v11

    if-eqz v1, :cond_63

    if-nez v12, :cond_1b

    goto :goto_63

    .line 2666
    :cond_1b
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_34

    .line 2667
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2668
    return v12

    .line 2671
    :cond_34
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 2672
    .local v14, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v14

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2673
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2674
    invoke-virtual {p0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2675
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_56
    if-ge v1, v12, :cond_62

    .line 2676
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2675
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 2678
    .end local v1    # "i":I
    :cond_62
    return v12

    .line 2664
    .end local v14    # "oldSize":F
    :cond_63
    :goto_63
    const/4 v1, 0x0

    return v1

    .line 2660
    :cond_65
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2656
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 3

    .line 1477
    iget-object v0, p0, Landroid/graphics/Paint;->mShowTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_17

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1478
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1479
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1481
    :cond_16
    return-object v1

    .line 1484
    :cond_17
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getUnderlinePosition()F
    .registers 3

    .line 934
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUnderlineThickness()F
    .registers 3

    .line 946
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getWordSpacing()F
    .registers 3

    .line 1892
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .line 1349
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public whitelist hasGlyph(Ljava/lang/String;)Z
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 3112
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasShadowLayer()Z
    .registers 3

    .line 1618
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAntiAlias()Z
    .registers 3

    .line 828
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

    .line 854
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

    .line 1789
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isFakeBoldText()Z
    .registers 2

    .line 1021
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

    .line 1044
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

    .line 877
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

    .line 971
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

    .line 896
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

    .line 918
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
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2486
    if-eqz p1, :cond_5e

    .line 2489
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_58

    .line 2493
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_56

    if-ne p2, p3, :cond_18

    goto :goto_56

    .line 2496
    :cond_18
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 2497
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2499
    :cond_24
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4d

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2d

    goto :goto_4d

    .line 2503
    :cond_2d
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_39

    .line 2504
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 2507
    :cond_39
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2508
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2509
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 2510
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2511
    return v1

    .line 2501
    .end local v0    # "buf":[C
    .end local v1    # "result":F
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2494
    :cond_56
    :goto_56
    const/4 v0, 0x0

    return v0

    .line 2490
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2487
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;)F
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 2471
    if-eqz p1, :cond_c

    .line 2474
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2472
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;II)F
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2440
    if-eqz p1, :cond_63

    .line 2443
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_5d

    .line 2447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5b

    if-ne p2, p3, :cond_18

    goto :goto_5b

    .line 2451
    :cond_18
    invoke-direct {p0}, Landroid/graphics/Paint;->checkMiuiFont()V

    .line 2452
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_35

    .line 2453
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2456
    :cond_35
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2457
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2458
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 2460
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2461
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 2448
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return v0

    .line 2444
    :cond_5d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2441
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText([CII)F
    .registers 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .line 2406
    if-eqz p1, :cond_5c

    .line 2409
    or-int v0, p2, p3

    if-ltz v0, :cond_56

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_56

    .line 2413
    array-length v0, p1

    if-eqz v0, :cond_54

    if-nez p3, :cond_11

    goto :goto_54

    .line 2417
    :cond_11
    invoke-direct {p0}, Landroid/graphics/Paint;->checkMiuiFont()V

    .line 2418
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_2e

    .line 2419
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2423
    :cond_2e
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2424
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2425
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 2427
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2428
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 2414
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_54
    :goto_54
    const/4 v0, 0x0

    return v0

    .line 2410
    :cond_56
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2407
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reset()V
    .registers 4

    .line 626
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 627
    const/16 v0, 0x503

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 634
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 636
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 637
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 638
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 639
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 640
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 642
    iput-object v0, p0, Landroid/graphics/Paint;->mShowTypeface:Landroid/graphics/Typeface;

    .line 643
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 646
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 647
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 649
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 650
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 651
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 652
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 653
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 656
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 657
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 658
    invoke-static {v1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 659
    return-void
.end method

.method public whitelist set(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Paint;

    .line 667
    if-eq p0, p1, :cond_f

    .line 669
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 670
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 672
    invoke-direct {p0}, Landroid/graphics/Paint;->checkMiuiFont()V

    .line 674
    :cond_f
    return-void
.end method

.method public whitelist setARGB(IIII)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1180
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1181
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 8
    .param p1, "a"    # I

    .line 1163
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1164
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v1

    .line 1165
    .local v1, "r":F
    iget-wide v2, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v2, v3}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1166
    .local v2, "g":F
    iget-wide v3, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v3, v4}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    .line 1167
    .local v3, "b":F
    int-to-float v4, p1

    const v5, 0x3b808081

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/Paint;->mColor:J

    .line 1168
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 1169
    return-void
.end method

.method public whitelist setAntiAlias(Z)V
    .registers 4
    .param p1, "aa"    # Z

    .line 840
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 841
    return-void
.end method

.method public greylist-max-o setBidiFlags(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 778
    and-int/lit8 p1, p1, 0x7

    .line 779
    const/4 v0, 0x5

    if-gt p1, v0, :cond_8

    .line 782
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 783
    return-void

    .line 780
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 1407
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1408
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1119
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 1120
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1121
    return-void
.end method

.method public whitelist setColor(J)V
    .registers 10
    .param p1, "color"    # J

    .line 1136
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1138
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nSetColor(JJJ)V

    .line 1139
    iput-wide p1, p0, Landroid/graphics/Paint;->mColor:J

    .line 1140
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .registers 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1334
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_8

    .line 1335
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1339
    :cond_8
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1340
    return-object p1
.end method

.method public greylist setCompatibilityScaling(F)V
    .registers 6
    .param p1, "factor"    # F

    .line 710
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_11

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 712
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_19

    .line 714
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 715
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 716
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 718
    :goto_19
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .line 868
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 869
    return-void
.end method

.method public whitelist setElegantTextHeight(Z)V
    .registers 4
    .param p1, "elegant"    # Z

    .line 1800
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    .line 1801
    return-void
.end method

.method public whitelist setEndHyphenEdit(I)V
    .registers 4
    .param p1, "endHyphen"    # I

    .line 2106
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetEndHyphenEdit(JI)V

    .line 2107
    return-void
.end method

.method public whitelist setFakeBoldText(Z)V
    .registers 4
    .param p1, "fakeBoldText"    # Z

    .line 1031
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 1032
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 4
    .param p1, "filter"    # Z

    .line 1058
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 1059
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 800
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 801
    return-void
.end method

.method public whitelist setFontFeatureSettings(Ljava/lang/String;)V
    .registers 4
    .param p1, "settings"    # Ljava/lang/String;

    .line 1934
    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1935
    const/4 p1, 0x0

    .line 1937
    :cond_b
    if-nez p1, :cond_11

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :cond_11
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1938
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1939
    :cond_1b
    return-void

    .line 1941
    :cond_1c
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1942
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 1943
    return-void
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Z
    .registers 12
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 1999
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    .local v0, "settings":Ljava/lang/String;
    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_68

    if-eqz v0, :cond_12

    .line 2001
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_68

    .line 2005
    :cond_12
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1}, Landroid/graphics/Paint;->useMiuiVarFont(Landroid/graphics/Typeface;)V

    .line 2007
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_57

    .line 2016
    :cond_20
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_26

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 2017
    .local v1, "targetTypeface":Landroid/graphics/Typeface;
    :cond_26
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    .line 2018
    .local v3, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    .local v4, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_32
    if-ge v7, v5, :cond_46

    aget-object v8, v3, v7

    .line 2020
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 2021
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 2024
    :cond_46
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 2025
    return v6

    .line 2027
    :cond_4d
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2028
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2029
    return v2

    .line 2008
    .end local v1    # "targetTypeface":Landroid/graphics/Typeface;
    .end local v3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v4    # "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    :cond_57
    :goto_57
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2009
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2010
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2009
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2011
    return v2

    .line 2002
    :cond_68
    :goto_68
    return v2
.end method

.method public whitelist setHinting(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 816
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 817
    return-void
.end method

.method public whitelist setLetterSpacing(F)V
    .registers 4
    .param p1, "letterSpacing"    # F

    .line 1880
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 1881
    return-void
.end method

.method public whitelist setLinearText(Z)V
    .registers 4
    .param p1, "linearText"    # Z

    .line 887
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 888
    return-void
.end method

.method public whitelist setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .registers 6
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .line 1458
    const-wide/16 v0, 0x0

    .line 1459
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_6

    .line 1460
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1462
    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1463
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1464
    return-object p1
.end method

.method public whitelist setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .registers 6
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .line 1429
    const-wide/16 v0, 0x0

    .line 1430
    .local v0, "effectNative":J
    if-eqz p1, :cond_6

    .line 1431
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1433
    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1434
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1435
    return-object p1
.end method

.method public greylist setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .registers 2
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1560
    return-object p1
.end method

.method public whitelist setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .registers 6
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1306
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_f

    .line 1307
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1309
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1312
    :cond_f
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1313
    return-object p1
.end method

.method public whitelist setShadowLayer(FFFI)V
    .registers 11
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .line 1576
    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->setShadowLayer(FFFJ)V

    .line 1577
    return-void
.end method

.method public whitelist setShadowLayer(FFFJ)V
    .registers 16
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # J

    .line 1595
    invoke-static {p4, p5}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1596
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFJJ)V

    .line 1598
    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1599
    iput p2, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1600
    iput p3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1601
    iput-wide p4, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 1602
    return-void
.end method

.method public whitelist setStartHyphenEdit(I)V
    .registers 4
    .param p1, "startHyphen"    # I

    .line 2080
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStartHyphenEdit(JI)V

    .line 2081
    return-void
.end method

.method public whitelist setStrikeThruText(Z)V
    .registers 4
    .param p1, "strikeThruText"    # Z

    .line 1012
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 1013
    return-void
.end method

.method public whitelist setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 5
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 1248
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1249
    return-void
.end method

.method public whitelist setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .registers 5
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .line 1267
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1268
    return-void
.end method

.method public whitelist setStrokeMiter(F)V
    .registers 4
    .param p1, "miter"    # F

    .line 1227
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1228
    return-void
.end method

.method public whitelist setStrokeWidth(F)V
    .registers 4
    .param p1, "width"    # F

    .line 1205
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1206
    return-void
.end method

.method public whitelist setStyle(Landroid/graphics/Paint$Style;)V
    .registers 5
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 1080
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 1081
    return-void
.end method

.method public whitelist setSubpixelText(Z)V
    .registers 4
    .param p1, "subpixelText"    # Z

    .line 906
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 907
    return-void
.end method

.method public whitelist setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 5
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 1690
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1691
    return-void
.end method

.method public whitelist setTextLocale(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1723
    if-eqz p1, :cond_2a

    .line 1726
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1727
    return-void

    .line 1729
    :cond_1b
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1730
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1731
    return-void

    .line 1724
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextLocales(Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1761
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1764
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1765
    :cond_11
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1766
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1767
    return-void

    .line 1762
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextScaleX(F)V
    .registers 4
    .param p1, "scaleX"    # F

    .line 1839
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1840
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4
    .param p1, "textSize"    # F

    .line 1818
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1819
    return-void
.end method

.method public whitelist setTextSkewX(F)V
    .registers 4
    .param p1, "skewX"    # F

    .line 1859
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 1860
    return-void
.end method

.method public whitelist setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1498
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1499
    iput-object p1, p0, Landroid/graphics/Paint;->mShowTypeface:Landroid/graphics/Typeface;

    .line 1500
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->useMiuiVarFont(Landroid/graphics/Typeface;)V

    .line 1501
    return-object p1

    .line 1504
    :cond_10
    if-nez p1, :cond_15

    const-wide/16 v0, 0x0

    goto :goto_17

    :cond_15
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1505
    .local v0, "typefaceNative":J
    :goto_17
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1506
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1507
    return-object p1
.end method

.method public whitelist setUnderlineText(Z)V
    .registers 4
    .param p1, "underlineText"    # Z

    .line 959
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 960
    return-void
.end method

.method public whitelist setWordSpacing(F)V
    .registers 4
    .param p1, "wordSpacing"    # F

    .line 1905
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 1906
    return-void
.end method

.method public whitelist setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 3
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1380
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v0

    return-object v0
.end method
