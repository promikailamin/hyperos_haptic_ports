.class public Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;
.super Ljava/lang/Object;
.source "RoiEncodeUnitClient.java"


# static fields
.field private static final blacklist ROI_ENABLE_KEY:Ljava/lang/String; = "vendor.qti-ext-enc-roiinfo.enable"

.field private static final blacklist TAG:Ljava/lang/String; = "RoiEncodeUnitClient-sdk"


# instance fields
.field private volatile blacklist mSetRoiOn:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mSetRoiOn:Z

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist enableRoiEncode(Landroid/media/MediaFormat;I)I
    .registers 5
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "roiEnable"    # I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRoiEncode roiEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RoiEncodeUnitClient-sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mSetRoiOn:Z

    .line 52
    const/4 v1, 0x1

    if-eqz p2, :cond_20

    if-ne p2, v1, :cond_29

    .line 53
    :cond_20
    if-ne p2, v1, :cond_24

    .line 54
    iput-boolean v1, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mSetRoiOn:Z

    .line 56
    :cond_24
    const-string v1, "vendor.qti-ext-enc-roiinfo.enable"

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 58
    :cond_29
    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 20
    const/16 v0, 0x2710

    return v0
.end method

.method public whitelist isRoiEncodeEnable(Landroid/media/MediaCodec;)Z
    .registers 8
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 68
    const-string v0, "RoiEncodeUnitClient-sdk"

    const-string v1, "vendor.qti-ext-enc-roiinfo.enable"

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 69
    .local v2, "format":Landroid/media/MediaFormat;
    const/4 v3, 0x0

    .line 71
    .local v3, "roiEnable":I
    :try_start_9
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 72
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoiEncodeEnable roiEnable="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2b

    .line 77
    :cond_2a
    goto :goto_2f

    .line 75
    :catch_2b
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2f
    const/4 v1, 0x0

    .line 79
    .local v1, "roiFlag":Z
    const/4 v4, 0x1

    if-eq v3, v4, :cond_37

    iget-boolean v4, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mSetRoiOn:Z

    if-eqz v4, :cond_38

    .line 80
    :cond_37
    const/4 v1, 0x1

    .line 82
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoiEncodeEnable roiFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1
.end method

.method public whitelist isRoiEncodeSupported(Landroid/media/MediaCodec;)I
    .registers 7
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 30
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getSupportedVendorParameters()Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "RoiEncodeUnitClient-sdk"

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    .local v3, "param":Ljava/lang/String;
    const-string v4, "qti-ext-enc-roiinfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 34
    const-string v2, "isRoiEncodeSupported return true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x1

    return v1

    .line 37
    .end local v3    # "param":Ljava/lang/String;
    :cond_2d
    goto :goto_12

    .line 39
    :cond_2e
    const-string v2, "isRoiEncodeSupported return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setRoiParameter(Landroid/media/MediaCodec;Ljava/lang/String;J)I
    .registers 11
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "roiInfo"    # Ljava/lang/String;
    .param p3, "pts"    # J

    .line 99
    iget-boolean v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mSetRoiOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "param":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "codecName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRoiParameter roiInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codecName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RoiEncodeUnitClient-sdk"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_6e

    .line 104
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "codecType":Ljava/lang/String;
    const-string v4, "c2.qti"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 106
    const-string v4, "vendor.qti-ext-enc-roiinfo.timestamp"

    invoke-virtual {v0, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 107
    const-string v4, "vendor.qti-ext-enc-roiinfo.type"

    const-string v5, "rect"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "vendor.qti-ext-enc-roiinfo.rect-payload"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 110
    :cond_61
    const-string v4, "roi-rect"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "roi-timestamp"

    invoke-virtual {v0, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    :goto_6b
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 116
    .end local v0    # "param":Landroid/os/Bundle;
    .end local v2    # "codecName":Ljava/lang/String;
    .end local v3    # "codecType":Ljava/lang/String;
    :cond_6e
    return v1
.end method
