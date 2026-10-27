.class public Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MiuiFreeDragViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeDragShadowBuilder"
.end annotation


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mExtendX:I

.field private blacklist mExtendY:I

.field private blacklist mShadow1BlurRadius:I

.field private blacklist mShadow1Color:I

.field private blacklist mShadow1OffsetX:I

.field private blacklist mShadow1OffsetY:I

.field private blacklist mShadow2BlurRadius:I

.field private blacklist mShadow2Color:I

.field private blacklist mShadow2OffsetX:I

.field private blacklist mShadow2OffsetY:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 104
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 89
    const/16 v0, 0xff

    iput v0, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mAlpha:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1107008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1BlurRadius:I

    .line 108
    const v1, 0x1107008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetX:I

    .line 109
    const v1, 0x11070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetY:I

    .line 110
    const v1, 0x1106004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1Color:I

    .line 112
    const v1, 0x11070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2BlurRadius:I

    .line 113
    const v1, 0x11070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetX:I

    .line 114
    const v1, 0x11070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetY:I

    .line 115
    const v1, 0x1106004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2Color:I

    .line 117
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1BlurRadius:I

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetX:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2BlurRadius:I

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetX:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    .line 118
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1BlurRadius:I

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetY:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2BlurRadius:I

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetY:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    .line 120
    const v1, 0x1107008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .local v1, "size":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    const/4 v4, 0x0

    if-le v2, v3, :cond_9a

    .line 124
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p2, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_b4

    .line 125
    :cond_9a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_b4

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    invoke-static {p2, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 130
    :cond_b4
    :goto_b4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_cf

    .line 131
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {p2, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_f0

    .line 132
    :cond_cf
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_ea

    .line 133
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {p2, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_f0

    .line 135
    :cond_ea
    invoke-static {p2, v1, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    :goto_f0
    return-void
.end method


# virtual methods
.method public whitelist onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 149
    .local v0, "shadowPaint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1BlurRadius:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetX:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1OffsetY:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow1Color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    int-to-float v2, v1

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    iget-object v5, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2BlurRadius:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetX:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2OffsetY:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mShadow2Color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 154
    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    int-to-float v2, v1

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    iget-object v5, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v1, "bitmapPaint":Landroid/graphics/Paint;
    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    return-void
.end method

.method public whitelist onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .line 141
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 142
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendX:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mExtendY:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 143
    return-void
.end method

.method public blacklist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 163
    iput p1, p0, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->mAlpha:I

    .line 164
    return-void
.end method
