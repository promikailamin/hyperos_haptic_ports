.class abstract Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlenderPerChannel"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor blacklist <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 52
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blacklist blendAlpha(FF)F
.end method

.method public abstract blacklist blendChannel(FFFF)F
.end method

.method public blacklist blendFinal(II)I
    .registers 19
    .param p1, "dstArgb"    # I
    .param p2, "srcArgb"    # I

    .line 55
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    ushr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 56
    .local v3, "srcA":I
    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v3

    .line 57
    .local v4, "srcR":I
    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v3

    .line 58
    .local v5, "srcG":I
    and-int/lit16 v6, v2, 0xff

    mul-int/2addr v6, v3

    .line 60
    .local v6, "srcB":I
    ushr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 61
    .local v7, "dstA":I
    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    mul-int/2addr v8, v7

    .line 62
    .local v8, "dstR":I
    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    mul-int/2addr v9, v7

    .line 63
    .local v9, "dstG":I
    and-int/lit16 v10, v1, 0xff

    mul-int/2addr v10, v7

    .line 65
    .local v10, "dstB":I
    int-to-float v11, v7

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    .line 66
    .local v11, "Da":F
    int-to-float v13, v3

    div-float/2addr v13, v12

    .line 68
    .local v13, "Sa":F
    invoke-virtual {v0, v11, v13}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendAlpha(FF)F

    move-result v14

    const/4 v15, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v15, v14, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    .line 69
    .local v1, "resultA":I
    if-nez v1, :cond_3f

    const/4 v12, 0x0

    goto :goto_4e

    :cond_3f
    int-to-float v14, v8

    int-to-float v12, v4

    invoke-virtual {v0, v14, v12, v11, v13}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v12

    int-to-float v14, v1

    div-float/2addr v12, v14

    const/high16 v14, 0x437f0000    # 255.0f

    invoke-static {v15, v12, v14}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    float-to-int v12, v12

    .line 70
    .local v12, "resultR":I
    :goto_4e
    if-nez v1, :cond_52

    const/4 v2, 0x0

    goto :goto_62

    :cond_52
    int-to-float v14, v9

    int-to-float v15, v5

    invoke-virtual {v0, v14, v15, v11, v13}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v14

    int-to-float v15, v1

    div-float/2addr v14, v15

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v15, 0x0

    invoke-static {v15, v14, v2}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v14

    float-to-int v2, v14

    .line 71
    .local v2, "resultG":I
    :goto_62
    if-nez v1, :cond_66

    const/4 v14, 0x0

    goto :goto_76

    :cond_66
    int-to-float v14, v10

    int-to-float v15, v6

    invoke-virtual {v0, v14, v15, v11, v13}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v14

    int-to-float v15, v1

    div-float/2addr v14, v15

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v15, 0x0

    invoke-static {v15, v14, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    float-to-int v14, v0

    :goto_76
    move v0, v14

    .line 73
    .local v0, "resultB":I
    shl-int/lit8 v14, v1, 0x18

    shl-int/lit8 v15, v12, 0x10

    or-int/2addr v14, v15

    shl-int/lit8 v15, v2, 0x8

    or-int/2addr v14, v15

    or-int/2addr v14, v0

    return v14
.end method
