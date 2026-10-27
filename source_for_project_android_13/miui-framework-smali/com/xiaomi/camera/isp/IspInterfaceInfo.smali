.class public Lcom/xiaomi/camera/isp/IspInterfaceInfo;
.super Ljava/lang/Object;
.source "IspInterfaceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mInitialized:Z

.field public blacklist mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field private blacklist mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field private blacklist mPicImageReader:Landroid/media/ImageReader;

.field private blacklist mTuningImageReader:Landroid/media/ImageReader;

.field private blacklist mYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V
    .registers 7
    .param p1, "ispInterface"    # Lcom/xiaomi/camera/isp/IspInterface;
    .param p2, "inputOutput"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p3, "picImageReader"    # Landroid/media/ImageReader;
    .param p4, "yuvImageReader"    # Landroid/media/ImageReader;
    .param p5, "tuningImageReader"    # Landroid/media/ImageReader;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 37
    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 38
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    .line 39
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    .line 40
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object v0
.end method

.method public blacklist getPicImageReader()Landroid/media/ImageReader;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public blacklist getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRawInputConfiguration()Landroid/util/Size;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getYuvImageReader()Landroid/media/ImageReader;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public blacklist getYuvInputConfiguration()Landroid/util/Size;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    return v0
.end method

.method public blacklist release()V
    .registers 4

    .line 73
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    .line 76
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 77
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 78
    iput-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    .line 81
    :cond_25
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2e

    .line 82
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 83
    iput-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    .line 86
    :cond_2e
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_37

    .line 87
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 88
    iput-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    .line 91
    :cond_37
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-eqz v1, :cond_40

    .line 92
    invoke-virtual {v1}, Lcom/xiaomi/camera/isp/IspInterface;->release()V

    .line 93
    iput-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 96
    :cond_40
    iput-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 97
    const-string v1, "release: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
