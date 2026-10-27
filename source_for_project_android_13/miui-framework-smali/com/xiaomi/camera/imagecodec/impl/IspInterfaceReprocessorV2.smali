.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "IspInterfaceReprocessorV2.java"


# static fields
.field public static final blacklist ISP_REPROCESSOR_TYPE_RAW2YUV:I = 0x1

.field public static final blacklist ISP_REPROCESSOR_TYPE_YUV2JPEG:I = 0x2

.field public static final blacklist TAG:Ljava/lang/String; = "IspInterfaceV2"

.field public static blacklist sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

.field private blacklist mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    .line 30
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    return-void
.end method


# virtual methods
.method public blacklist customize(Ljava/util/HashMap;)V
    .registers 3
    .param p1, "settings"    # Ljava/util/HashMap;

    .line 103
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->customize(Ljava/util/HashMap;)V

    .line 105
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->customize(Ljava/util/HashMap;)V

    .line 107
    return-void
.end method

.method public blacklist deInit()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->deInit()V

    .line 93
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->deInit()V

    .line 94
    return-void
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 98
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->init(Landroid/content/Context;)V

    .line 42
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public blacklist queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .registers 7
    .param p1, "io"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p2, "settings"    # Landroid/os/Parcelable;
    .param p3, "param"    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .param p4, "doQuery"    # Z

    .line 115
    const-string v0, "IspInterfaceV2"

    const-string v1, "raw2yuv queryFeatureSetting"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setOutputPictureSpec(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 47
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->setOutputPictureSpec(III)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->setOutputPictureSpec(III)V

    .line 49
    return-void
.end method

.method public blacklist submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 11
    .param p1, "data"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 55
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "inputImages":Ljava/util/List;, "Ljava/util/List<Landroid/media/Image;>;"
    const-string v1, "IspInterfaceV2"

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 57
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 58
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 59
    .local v2, "inputFormat":I
    goto :goto_20

    .line 60
    .end local v2    # "inputFormat":I
    :cond_1a
    const-string v2, "input image is null, could not get format"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x0

    .line 63
    .restart local v2    # "inputFormat":I
    :goto_20
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getReprocessFunctionType()I

    move-result v3

    .line 64
    .local v3, "reprocessFunctionType":I
    const/16 v4, 0x25

    const/16 v5, 0x20

    if-eq v2, v5, :cond_2c

    if-ne v2, v4, :cond_35

    :cond_2c
    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    if-eq v6, v3, :cond_3a

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    if-ne v6, v3, :cond_35

    goto :goto_3a

    .line 69
    :cond_35
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v6

    .local v6, "outputFormat":I
    goto :goto_3c

    .line 67
    .end local v6    # "outputFormat":I
    :cond_3a
    :goto_3a
    const/16 v6, 0x23

    .line 71
    .restart local v6    # "outputFormat":I
    :goto_3c
    const/4 v7, 0x0

    .line 72
    .local v7, "reprocessType":I
    const/16 v8, 0x23

    if-eq v2, v5, :cond_43

    if-ne v2, v4, :cond_47

    :cond_43
    if-ne v6, v8, :cond_47

    .line 73
    const/4 v7, 0x1

    goto :goto_53

    .line 74
    :cond_47
    if-ne v2, v8, :cond_53

    const/16 v4, 0x100

    if-eq v6, v4, :cond_52

    const v4, 0x48454946

    if-ne v6, v4, :cond_53

    .line 75
    :cond_52
    const/4 v7, 0x2

    .line 77
    :cond_53
    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reprocess data type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inputFormat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " outputFormat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    packed-switch v7, :pswitch_data_8e

    goto :goto_8d

    .line 83
    :pswitch_81
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mYuv2JpegReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 84
    goto :goto_8d

    .line 80
    :pswitch_87
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->mRaw2YuvReprocessor:Lcom/xiaomi/camera/imagecodec/BaseReprocessor;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 81
    nop

    .line 88
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_87
        :pswitch_81
    .end packed-switch
.end method
