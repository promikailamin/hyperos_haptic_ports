.class public Lmiui/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$DotBarDrawer;
    }
.end annotation


# static fields
.field private static final blacklist CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static blacklist IS_LPA_DECODE:Z = false

.field private static final blacklist RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x110801ef

.field private static final blacklist RES_DEFAULT_SLIDING_PANEL_ID:I = 0x110801ee

.field private static final blacklist RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x110801f0

.field private static final blacklist TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final blacklist VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private blacklist INDEX_SCALE_FACTOR:F

.field private final blacklist MAX_VALID_SAMPLE:I

.field private blacklist SAMPLE_SCALE_FACTOR:F

.field private blacklist VISUALIZE_DESC_HEIGHT:F

.field blacklist mAlphaWidthNum:I

.field private blacklist mCachedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mCachedCanvas:Landroid/graphics/Canvas;

.field blacklist mCellSize:I

.field blacklist mDotbarHeight:I

.field private blacklist mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

.field private blacklist mEnableDrawing:Z

.field private blacklist mIsEnableUpdate:Z

.field private blacklist mIsNeedCareStreamActive:Z

.field private blacklist mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPixels:[I

.field blacklist mPointData:[F

.field private blacklist mSampleBuf:[S

.field blacklist mShadowDotbarHeight:I

.field blacklist mShadowPixels:[I

.field private blacklist mSoftDrawEnabled:Z

.field private blacklist mVisualizationHeight:I

.field blacklist mVisualizationHeightNum:I

.field private blacklist mVisualizationWidth:I

.field blacklist mVisualizationWidthNum:I

.field private blacklist mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    const-string v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 76
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 81
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method private blacklist drawInternal(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 254
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int/2addr v0, v1

    .line 256
    .local v0, "end":I
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_18

    .line 257
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 261
    .end local v1    # "i":I
    :cond_18
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .restart local v1    # "i":I
    :goto_1a
    if-lez v1, :cond_38

    .line 262
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 264
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 265
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 267
    .end local v1    # "i":I
    :cond_38
    return-void
.end method

.method private blacklist drawToBitmap()Landroid/graphics/Bitmap;
    .registers 6

    .line 231
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 232
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 233
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1e

    .line 234
    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    const/4 v0, 0x0

    .line 238
    :cond_1e
    if-nez v0, :cond_38

    .line 239
    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 242
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v2

    .line 243
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 246
    :cond_38
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    invoke-direct {p0, v1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 249
    return-object v0
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "panelDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 145
    .local v1, "dotBarDrawble":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 146
    .local v2, "shadowDotbarDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 148
    .local v3, "symmetry":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 149
    iput-boolean v4, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 151
    const/4 v5, 0x0

    iput v5, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 153
    if-eqz p2, :cond_40

    .line 154
    sget-object v6, Landroid/miui/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 155
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 157
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 160
    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 161
    const/4 v7, 0x6

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 162
    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 163
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_40
    if-nez v0, :cond_4d

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110801ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    :cond_4d
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 171
    .local v4, "panelBm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_61

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110801ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    :cond_61
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 177
    .local v5, "dotBar":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 178
    .local v6, "shadowDotBar":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_7f

    .line 179
    if-nez v2, :cond_78

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x110801f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 183
    :cond_78
    move-object v7, v2

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 186
    :cond_7f
    invoke-virtual {p0, v4, v5, v6}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method


# virtual methods
.method public blacklist enableDrawing(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 284
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 285
    return-void
.end method

.method public blacklist enableUpdate(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_6d

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v1, :cond_3d

    .line 291
    sget-boolean v1, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v1, :cond_17

    .line 292
    const-string v0, "SpectrumVisualizer"

    const-string v1, "lpa decode is on, can\'t enable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 294
    :cond_17
    new-instance v1, Landroid/media/audiofx/Visualizer;

    invoke-direct {v1, v0}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 295
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_62

    .line 296
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 297
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 298
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    .line 297
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 301
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_62

    .line 304
    :cond_3d
    if-nez p1, :cond_62

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_62

    .line 305
    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 306
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_5a

    const-string v1, "is_xiaomi_device"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5a

    .line 314
    :cond_55
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 316
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 319
    :cond_62
    :goto_62
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_64} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_64} :catch_6a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_6d

    .line 325
    :catch_65
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6e

    .line 323
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_6a
    move-exception v0

    goto :goto_6d

    .line 321
    :catch_6c
    move-exception v0

    .line 327
    :cond_6d
    :goto_6d
    nop

    .line 328
    :goto_6e
    return-void
.end method

.method public blacklist getVisualHeight()I
    .registers 2

    .line 190
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public blacklist getVisualWidth()I
    .registers 2

    .line 194
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public blacklist isUpdateEnabled()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v0, :cond_8

    .line 201
    return-void

    .line 204
    :cond_8
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_16

    .line 205
    invoke-direct {p0}, Lmiui/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_19

    .line 207
    :cond_16
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 209
    :goto_19
    return-void
.end method

.method public blacklist setAlphaNum(I)V
    .registers 4
    .param p1, "num"    # I

    .line 135
    if-gtz p1, :cond_6

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 137
    return-void

    .line 139
    :cond_6
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v1, v0, 0x2

    if-le p1, v1, :cond_f

    div-int/lit8 v0, v0, 0x2

    goto :goto_10

    :cond_f
    move v0, p1

    :goto_10
    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 140
    return-void
.end method

.method public blacklist setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dotbar"    # Landroid/graphics/Bitmap;
    .param p4, "shadow"    # Landroid/graphics/Bitmap;

    .line 90
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 91
    iput p2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 93
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 95
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_16

    .line 96
    iput v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 98
    :cond_16
    iget v8, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v9, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int v0, v8, v9

    new-array v3, v0, [I

    iput-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    .line 99
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 101
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 102
    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    div-int/2addr v2, v1

    iput v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 103
    const/high16 v1, 0x41a00000    # 20.0f

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 104
    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 107
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array v1, v0, [F

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    .line 109
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez v1, :cond_5a

    .line 110
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 113
    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 114
    if-eqz p4, :cond_93

    .line 115
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 117
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr v0, v1

    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v2, :cond_6f

    .line 118
    sub-int/2addr v2, v1

    iput v2, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 120
    :cond_6f
    iget v10, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v9, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v10, v9, :cond_7d

    .line 122
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 123
    return-void

    .line 126
    :cond_7d
    mul-int v0, v9, v10

    new-array v4, v0, [I

    iput-object v4, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 127
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 128
    new-instance v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_9a

    .line 130
    :cond_93
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 132
    :goto_9a
    return-void
.end method

.method public blacklist setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "panel"    # Landroid/graphics/Bitmap;
    .param p2, "dotbar"    # Landroid/graphics/Bitmap;
    .param p3, "shadow"    # Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p0, p1}, Lmiui/widget/SpectrumVisualizer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public blacklist setSoftDrawEnabled(Z)V
    .registers 3
    .param p1, "endabled"    # Z

    .line 222
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 223
    if-nez p1, :cond_10

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 226
    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 228
    :cond_10
    return-void
.end method

.method blacklist update([B)V
    .registers 14
    .param p1, "fFtBuffer"    # [B

    .line 338
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 339
    invoke-virtual {p0, v1}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 340
    return-void

    .line 342
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 346
    if-nez p1, :cond_17

    .line 347
    return-void

    .line 350
    :cond_17
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 351
    .local v1, "sampleBuf":[S
    array-length v2, v1

    .line 352
    .local v2, "sampleLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_3c

    .line 353
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p1, v4

    .line 354
    .local v4, "a":I
    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    aget-byte v5, p1, v5

    .line 355
    .local v5, "b":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 357
    .local v6, "c":I
    const/16 v7, 0x7fff

    if-ge v6, v7, :cond_36

    move v7, v6

    :cond_36
    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 352
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v6    # "c":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 360
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, 0x0

    .line 361
    .local v3, "srcIdx":I
    const/4 v4, 0x0

    .line 362
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3f
    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v5, v6, :cond_8b

    .line 363
    const/4 v6, 0x0

    .line 366
    .local v6, "max":I
    :goto_44
    if-ge v4, v2, :cond_52

    .line 367
    aget-short v7, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 368
    add-int/lit8 v3, v3, 0x1

    .line 369
    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v4, v7

    goto :goto_44

    .line 371
    :cond_52
    sub-int/2addr v4, v2

    .line 375
    if-le v6, v0, :cond_67

    .line 376
    add-int/lit8 v7, v5, 0x2

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    iget v9, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v9, v9

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 377
    .local v7, "f":F
    add-int/lit8 v8, v6, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    mul-float/2addr v8, v7

    .line 378
    .end local v7    # "f":F
    .local v8, "rawData":F
    goto :goto_68

    .line 379
    .end local v8    # "rawData":F
    :cond_67
    const/4 v8, 0x0

    .line 384
    .restart local v8    # "rawData":F
    :goto_68
    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_72

    .line 385
    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v7, v7

    .end local v8    # "rawData":F
    .local v7, "rawData":F
    goto :goto_76

    .line 387
    .end local v7    # "rawData":F
    .restart local v8    # "rawData":F
    :cond_72
    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float v7, v8, v7

    .line 391
    .end local v8    # "rawData":F
    .restart local v7    # "rawData":F
    :goto_76
    iget-object v8, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    iget v9, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v9, v9

    div-float v9, v7, v9

    aget v10, v8, v5

    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v8, v5

    .line 362
    .end local v6    # "max":I
    .end local v7    # "rawData":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 394
    .end local v5    # "i":I
    :cond_8b
    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->invalidate()V

    .line 395
    return-void
.end method
