.class public Lcom/miui/autoui/AutoUIParams;
.super Ljava/lang/Object;
.source "AutoUIParams.java"


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mCx:F

.field private blacklist mIsRtl:Z

.field private blacklist mIsSkipDraw:Z

.field private blacklist mLeft:F

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRectF:Landroid/graphics/RectF;

.field private blacklist mRight:F

.field private blacklist mRx:F

.field private blacklist mRy:F

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTextEnd:I

.field private blacklist mTextStart:I

.field private blacklist mValueX:F

.field private blacklist mValueY:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getCx()F
    .registers 2

    .line 172
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mCx:F

    return v0
.end method

.method public blacklist getLeft()F
    .registers 2

    .line 91
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mLeft:F

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public blacklist getPath()Landroid/graphics/Path;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public blacklist getRectF()Landroid/graphics/RectF;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getRight()F
    .registers 2

    .line 100
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mRight:F

    return v0
.end method

.method public blacklist getRx()F
    .registers 2

    .line 73
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mRx:F

    return v0
.end method

.method public blacklist getRy()F
    .registers 2

    .line 82
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mRy:F

    return v0
.end method

.method public blacklist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/miui/autoui/AutoUIParams;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTextEnd()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mTextEnd:I

    return v0
.end method

.method public blacklist getTextStart()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mTextStart:I

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 145
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mValueX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 154
    iget v0, p0, Lcom/miui/autoui/AutoUIParams;->mValueY:F

    return v0
.end method

.method public blacklist isRtl()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/miui/autoui/AutoUIParams;->mIsRtl:Z

    return v0
.end method

.method public blacklist isSkipDraw()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/miui/autoui/AutoUIParams;->mIsSkipDraw:Z

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 59
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    return-object p0
.end method

.method public blacklist setCx(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "cx"    # F

    .line 176
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mCx:F

    .line 177
    return-object p0
.end method

.method public blacklist setLeft(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "left"    # F

    .line 95
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mLeft:F

    .line 96
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mName:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public blacklist setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 122
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mPaint:Landroid/graphics/Paint;

    .line 123
    return-object p0
.end method

.method public blacklist setPath(Landroid/graphics/Path;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "path"    # Landroid/graphics/Path;

    .line 113
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mPath:Landroid/graphics/Path;

    .line 114
    return-object p0
.end method

.method public blacklist setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .line 140
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mRectF:Landroid/graphics/RectF;

    .line 141
    return-object p0
.end method

.method public blacklist setRight(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "right"    # F

    .line 104
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mRight:F

    .line 105
    return-object p0
.end method

.method public blacklist setRtl(Z)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "isRtl"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/miui/autoui/AutoUIParams;->mIsRtl:Z

    .line 69
    return-object p0
.end method

.method public blacklist setRx(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "rx"    # F

    .line 77
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mRx:F

    .line 78
    return-object p0
.end method

.method public blacklist setRy(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "ry"    # F

    .line 86
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mRy:F

    .line 87
    return-object p0
.end method

.method public blacklist setSkipDraw()Lcom/miui/autoui/AutoUIParams;
    .registers 2

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autoui/AutoUIParams;->mIsSkipDraw:Z

    .line 132
    return-object p0
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 36
    iput-object p1, p0, Lcom/miui/autoui/AutoUIParams;->mText:Ljava/lang/CharSequence;

    .line 37
    return-object p0
.end method

.method public blacklist setTextIndex(II)Lcom/miui/autoui/AutoUIParams;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 49
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mTextStart:I

    .line 50
    iput p2, p0, Lcom/miui/autoui/AutoUIParams;->mTextEnd:I

    .line 51
    return-object p0
.end method

.method public blacklist setX(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "xValue"    # F

    .line 149
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mValueX:F

    .line 150
    return-object p0
.end method

.method public blacklist setY(F)Lcom/miui/autoui/AutoUIParams;
    .registers 2
    .param p1, "yValue"    # F

    .line 158
    iput p1, p0, Lcom/miui/autoui/AutoUIParams;->mValueY:F

    .line 159
    return-object p0
.end method
