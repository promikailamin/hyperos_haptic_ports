.class public Lmiui/imagefilters/ThresholdFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ThresholdFilter.java"


# instance fields
.field private blacklist mThresholdLevel:I

.field private blacklist mUniform:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 5
    const/16 v0, 0x80

    iput v0, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    return-void
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 15
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 18
    iget v0, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 19
    .local v0, "width":I
    iget v1, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 20
    .local v1, "height":I
    iget-object v2, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 22
    .local v2, "pixels":[I
    const/4 v3, 0x0

    .line 23
    .local v3, "thresholdLevel":I
    iget-boolean v4, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    if-nez v4, :cond_e

    .line 24
    iget v3, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    goto :goto_4c

    .line 26
    :cond_e
    array-length v4, v2

    .line 27
    .local v4, "visiblePixelCount":I
    const/16 v5, 0x100

    new-array v6, v5, [I

    .line 28
    .local v6, "perGrayscaleCount":[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_14
    if-ge v7, v1, :cond_39

    .line 29
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_17
    if-ge v8, v0, :cond_36

    .line 30
    mul-int v9, v7, v0

    add-int/2addr v9, v8

    .line 31
    .local v9, "colorIndex":I
    aget v10, v2, v9

    .line 32
    .local v10, "argb":I
    ushr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xa

    if-ge v11, v12, :cond_29

    .line 33
    add-int/lit8 v4, v4, -0x1

    .line 34
    goto :goto_33

    .line 36
    :cond_29
    invoke-static {v10}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v11

    .line 37
    .local v11, "grayscale":I
    aget v12, v6, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v11

    .line 29
    .end local v9    # "colorIndex":I
    .end local v10    # "argb":I
    .end local v11    # "grayscale":I
    :goto_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 28
    .end local v8    # "x":I
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 41
    .end local v7    # "y":I
    :cond_39
    iget v7, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xff

    .line 42
    .local v7, "highThresholdCount":I
    const/4 v8, 0x0

    .line 43
    .local v8, "grayscaleStep":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_40
    if-ge v9, v5, :cond_4c

    .line 44
    aget v10, v6, v9

    add-int/2addr v8, v10

    .line 45
    if-lt v8, v7, :cond_49

    .line 46
    move v3, v9

    .line 47
    goto :goto_4c

    .line 43
    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 52
    .end local v4    # "visiblePixelCount":I
    .end local v6    # "perGrayscaleCount":[I
    .end local v7    # "highThresholdCount":I
    .end local v8    # "grayscaleStep":I
    .end local v9    # "i":I
    :cond_4c
    :goto_4c
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_4d
    if-ge v4, v1, :cond_70

    .line 53
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_50
    if-ge v5, v0, :cond_6d

    .line 54
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 55
    .local v6, "colorIndex":I
    aget v7, v2, v6

    .line 56
    .local v7, "argb":I
    invoke-static {v7}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v8

    .line 57
    .local v8, "grayscale":I
    const/high16 v9, -0x1000000

    if-lt v8, v3, :cond_67

    .line 58
    and-int/2addr v9, v7

    const v10, 0xffffff

    or-int/2addr v9, v10

    aput v9, v2, v6

    goto :goto_6a

    .line 60
    :cond_67
    and-int/2addr v9, v7

    aput v9, v2, v6

    .line 53
    .end local v6    # "colorIndex":I
    .end local v7    # "argb":I
    .end local v8    # "grayscale":I
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 52
    .end local v5    # "x":I
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 64
    .end local v4    # "y":I
    :cond_70
    return-void
.end method

.method public whitelist setThresholdLevel(I)V
    .registers 2
    .param p1, "value"    # I

    .line 9
    iput p1, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    .line 10
    return-void
.end method

.method public whitelist setUniform(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 13
    iput-boolean p1, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    .line 14
    return-void
.end method
