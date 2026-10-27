.class public Lmiui/imagefilters/HslWrapFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslWrapFilter.java"


# instance fields
.field private blacklist mHsl:Lmiui/imagefilters/HslFilter;

.field private blacklist mHsv:Lmiui/imagefilters/HslFilter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 10
    return-void
.end method

.method private blacklist ensureHsl()V
    .registers 3

    .line 13
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_e

    .line 14
    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    .line 15
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    .line 17
    :cond_e
    return-void
.end method

.method private blacklist ensureHsv()V
    .registers 3

    .line 20
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_e

    .line 21
    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    .line 24
    :cond_e
    return-void
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 3
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 69
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    .line 70
    :cond_7
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    .line 71
    :cond_e
    return-void
.end method

.method public whitelist setHueAdjust(F)V
    .registers 3
    .param p1, "hue"    # F

    .line 47
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 48
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueAdjust(F)V

    .line 49
    return-void
.end method

.method public whitelist setHueModify(F)V
    .registers 3
    .param p1, "hue"    # F

    .line 27
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 28
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueModify(F)V

    .line 29
    return-void
.end method

.method public whitelist setLightnessAdjust(F)V
    .registers 3
    .param p1, "lightness"    # F

    .line 57
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    .line 58
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 59
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    goto :goto_16

    .line 61
    :cond_e
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    .line 62
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    .line 64
    :goto_16
    return-void
.end method

.method public whitelist setLightnessModify(F)V
    .registers 3
    .param p1, "lightness"    # F

    .line 37
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    .line 38
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 39
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    goto :goto_16

    .line 41
    :cond_e
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    .line 42
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    .line 44
    :goto_16
    return-void
.end method

.method public whitelist setSaturationAdjust(F)V
    .registers 3
    .param p1, "saturation"    # F

    .line 52
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 53
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationAdjust(F)V

    .line 54
    return-void
.end method

.method public whitelist setSaturationModify(F)V
    .registers 3
    .param p1, "saturation"    # F

    .line 32
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    .line 33
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationModify(F)V

    .line 34
    return-void
.end method
