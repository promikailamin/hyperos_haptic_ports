.class public Lmiui/imagefilters/ImageFilterBuilder;
.super Ljava/lang/Object;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/ImageFilterBuilder$ParamData;,
        Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImageFilterBuilder"


# instance fields
.field private blacklist mFilterName:Ljava/lang/String;

.field private blacklist mIgnoreWhenNotSupported:Z

.field private blacklist mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/imagefilters/ImageFilterBuilder$ParamData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addParam(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .param p3, "allowIgnore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 37
    .local p2, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    new-instance v1, Lmiui/imagefilters/ImageFilterBuilder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lmiui/imagefilters/ImageFilterBuilder$1;-><init>(Lmiui/imagefilters/ImageFilterBuilder;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public whitelist createImageFilter()Lmiui/imagefilters/IImageFilter;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "filter":Lmiui/imagefilters/IImageFilter;
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v2, "Hsl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, " not support."

    if-eqz v1, :cond_16

    .line 48
    new-instance v1, Lmiui/imagefilters/HslWrapFilter;

    invoke-direct {v1}, Lmiui/imagefilters/HslWrapFilter;-><init>()V

    move-object v0, v1

    goto/16 :goto_b1

    .line 49
    :cond_16
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Edges"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 50
    new-instance v1, Lmiui/imagefilters/EdgesFilter;

    invoke-direct {v1}, Lmiui/imagefilters/EdgesFilter;-><init>()V

    move-object v0, v1

    goto/16 :goto_b1

    .line 51
    :cond_28
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Levels"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 52
    new-instance v1, Lmiui/imagefilters/LevelsFilter;

    invoke-direct {v1}, Lmiui/imagefilters/LevelsFilter;-><init>()V

    move-object v0, v1

    goto/16 :goto_b1

    .line 53
    :cond_3a
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "GrayScale"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 54
    new-instance v1, Lmiui/imagefilters/GrayScaleFilter;

    invoke-direct {v1}, Lmiui/imagefilters/GrayScaleFilter;-><init>()V

    move-object v0, v1

    goto/16 :goto_b1

    .line 55
    :cond_4c
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "BlendImage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 56
    new-instance v1, Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {v1}, Lmiui/imagefilters/BlendImageFilter;-><init>()V

    move-object v0, v1

    goto :goto_b1

    .line 57
    :cond_5d
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "ColorMatrix"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 58
    new-instance v1, Lmiui/imagefilters/ColorMatrixFilter;

    invoke-direct {v1}, Lmiui/imagefilters/ColorMatrixFilter;-><init>()V

    move-object v0, v1

    goto :goto_b1

    .line 59
    :cond_6e
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Convolution"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 60
    new-instance v1, Lmiui/imagefilters/ConvolutionFilter;

    invoke-direct {v1}, Lmiui/imagefilters/ConvolutionFilter;-><init>()V

    move-object v0, v1

    goto :goto_b1

    .line 61
    :cond_7f
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Threshold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 62
    new-instance v1, Lmiui/imagefilters/ThresholdFilter;

    invoke-direct {v1}, Lmiui/imagefilters/ThresholdFilter;-><init>()V

    move-object v0, v1

    goto :goto_b1

    .line 63
    :cond_90
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Spread"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 64
    new-instance v1, Lmiui/imagefilters/SpreadFilter;

    invoke-direct {v1}, Lmiui/imagefilters/SpreadFilter;-><init>()V

    move-object v0, v1

    goto :goto_b1

    .line 65
    :cond_a1
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    const-string v4, "Transform"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 66
    new-instance v1, Lmiui/imagefilters/TransformFilter;

    invoke-direct {v1}, Lmiui/imagefilters/TransformFilter;-><init>()V

    move-object v0, v1

    .line 75
    :goto_b1
    iget-object v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/imagefilters/ImageFilterBuilder$ParamData;

    .line 76
    .local v4, "param":Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    iget-object v5, v4, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    iget-object v6, v4, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamValues:Ljava/util/List;

    invoke-interface {v0, v5, v6}, Lmiui/imagefilters/IImageFilter;->initParams(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 77
    iget-boolean v5, v4, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mIgnoreWhenNotSupported:Z

    if-nez v5, :cond_f5

    .line 78
    iget-boolean v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-eqz v1, :cond_d6

    return-object v2

    .line 79
    :cond_d6
    new-instance v1, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v4, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v4    # "param":Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_f5
    goto :goto_b7

    .line 84
    :cond_f6
    return-object v0

    .line 68
    :cond_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown filter:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImageFilterBuilder"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-eqz v1, :cond_116

    .line 72
    return-object v2

    .line 70
    :cond_116
    new-instance v1, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setFilterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "filterName"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public whitelist setIgnoreWhenNotSupported(Z)V
    .registers 2
    .param p1, "isAllowIgnore"    # Z

    .line 29
    iput-boolean p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    .line 30
    return-void
.end method
