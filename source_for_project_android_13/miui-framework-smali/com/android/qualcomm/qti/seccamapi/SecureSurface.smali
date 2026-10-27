.class public Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.super Ljava/lang/Object;
.source "SecureSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;,
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;,
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    }
.end annotation


# static fields
.field public static final blacklist FLIP_HORIZONTALLY:I = 0x1

.field public static final blacklist FLIP_VERTICALLY:I = 0x2

.field public static final blacklist IMAGE_FORMAT_PRIVATE:I = 0x22

.field public static final blacklist IMAGE_FORMAT_RAW:I = 0x24

.field public static final blacklist IMAGE_FORMAT_RAW10:I = 0x25

.field public static final blacklist IMAGE_FORMAT_RAW_SENSOR:I = 0x20

.field public static final blacklist IMAGE_FORMAT_YUV420:I = 0x23

.field public static final blacklist IMAGE_FORMAT_YUV420SP:I = 0x11

.field public static final blacklist IMAGE_FORMAT_YUV420SP_UBWC:I = 0x7fa30c06

.field public static final blacklist NO_ROTATION:I = 0x0

.field public static final blacklist ROTATE_180:I = 0x3

.field public static final blacklist ROTATE_270:I = 0x7

.field public static final blacklist ROTATE_90:I = 0x4

.field public static final blacklist ROTATE_90_HORIZONTAL_FLIP:I = 0x5

.field public static final blacklist ROTATE_90_VERTICAL_FLIP:I = 0x6

.field protected static final blacklist SECCAM_API_LOG_TAG:Ljava/lang/String; = "SECCAM-API"


# instance fields
.field private blacklist cameraId_:I

.field protected blacklist captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

.field protected blacklist imageFormat_:I

.field private blacklist previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

.field protected blacklist previewSurfaceHolder_:Landroid/view/SurfaceHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpreviewSerfaceCallback_(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Landroid/view/SurfaceHolder$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    return-object p0
.end method

.method protected constructor blacklist <init>(IIIII)V
    .registers 15
    .param p1, "cameraId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "numOfBuffers"    # I

    .line 87
    const-string v0, "SecureSurface::SecureSurface - ERROR: "

    const-string v1, "SECCAM-API"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 79
    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    .line 80
    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    .line 82
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    .line 89
    :try_start_11
    iput p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    .line 90
    iput p4, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->imageFormat_:I

    .line 91
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getSecureCameraSurface(IIIII)Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureSurface::SecureSurface - CaptureSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v3}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", surfaceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 94
    invoke-virtual {v3}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_50} :catch_67
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_50} :catch_51

    goto :goto_7c

    .line 99
    :catch_51
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_67
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_7c
    nop

    .line 102
    :goto_7d
    return-void
.end method

.method public static blacklist imageFormatToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "imageFormat"    # I

    .line 150
    sparse-switch p0, :sswitch_data_32

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :sswitch_1d
    const-string v0, "YUV420SP_UBWC"

    return-object v0

    .line 155
    :sswitch_20
    const-string v0, "RAW10"

    return-object v0

    .line 154
    :sswitch_23
    const-string v0, "RAW(PRIVATE)"

    return-object v0

    .line 153
    :sswitch_26
    const-string v0, "YUV420"

    return-object v0

    .line 157
    :sswitch_29
    const-string v0, "PRIVATE"

    return-object v0

    .line 156
    :sswitch_2c
    const-string v0, "RAW(SENSOR)"

    return-object v0

    .line 151
    :sswitch_2f
    const-string v0, "YUV420SP"

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_2f
        0x20 -> :sswitch_2c
        0x22 -> :sswitch_29
        0x23 -> :sswitch_26
        0x24 -> :sswitch_23
        0x25 -> :sswitch_20
        0x7fa30c06 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static blacklist rotationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "rotation"    # I

    .line 166
    packed-switch p0, :pswitch_data_1c

    .line 174
    const-string v0, "0"

    return-object v0

    .line 169
    :pswitch_6
    const-string v0, "270"

    return-object v0

    .line 173
    :pswitch_9
    const-string v0, "90+VFLIP"

    return-object v0

    .line 172
    :pswitch_c
    const-string v0, "90+HFLIP"

    return-object v0

    .line 167
    :pswitch_f
    const-string v0, "90"

    return-object v0

    .line 168
    :pswitch_12
    const-string v0, "180"

    return-object v0

    .line 171
    :pswitch_15
    const-string v0, "VFLIP"

    return-object v0

    .line 170
    :pswitch_18
    const-string v0, "HFLIP"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist assignPreviewSurface(Landroid/view/SurfaceHolder;IIIII)Z
    .registers 15
    .param p1, "previewSurfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "rotation"    # I
    .param p6, "numOfBuffers"    # I

    .line 195
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->setSecurePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface;IIIII)Z

    move-result v0

    .line 197
    .local v0, "result":Z
    if-eqz v0, :cond_22

    .line 198
    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    .line 199
    new-instance v1, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;

    invoke-direct {v1, p0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;-><init>(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)V

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    .line 225
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 228
    :cond_22
    return v0
.end method

.method public blacklist enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z
    .registers 4
    .param p1, "frameCallback"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    .param p2, "returnParamsSize"    # I

    .line 235
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z

    move-result v0

    .line 237
    .local v0, "result":Z
    return v0
.end method

.method public blacklist getCameraId()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    return v0
.end method

.method public blacklist getCaptureSurface()Landroid/view/Surface;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCaptureSurfaceId()Ljava/lang/Long;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageFormat()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->imageFormat_:I

    return v0
.end method

.method public blacklist getPreviewSurface()Landroid/view/Surface;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_9

    .line 123
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 125
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release()Z
    .registers 3

    .line 182
    const/4 v0, 0x1

    .line 184
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    if-eqz v1, :cond_10

    .line 185
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z

    move-result v0

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 188
    :cond_10
    return v0
.end method

.method protected blacklist releaseCaptureSurface()Z
    .registers 2

    .line 132
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z

    move-result v0

    return v0
.end method
