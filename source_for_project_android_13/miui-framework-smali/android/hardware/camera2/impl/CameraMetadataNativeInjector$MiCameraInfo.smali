.class Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
.super Ljava/lang/Object;
.source "CameraMetadataNativeInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MiCameraInfo"
.end annotation


# static fields
.field public static final blacklist MI_RES_INFO_TYPE_ADD:Ljava/lang/String; = "add"

.field public static final blacklist MI_RES_INFO_TYPE_ISO:Ljava/lang/String; = "iso"

.field public static final blacklist MI_RES_INFO_TYPE_LIMIT:Ljava/lang/String; = "limit"

.field public static final blacklist MI_RES_INFO_TYPE_SSIZE:Ljava/lang/String; = "ssize"


# instance fields
.field public blacklist cameraId:Ljava/lang/String;

.field public blacklist format:I

.field public blacklist isInput:Z

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist size:Landroid/util/Size;

.field public blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 382
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "format"    # I
    .param p7, "isInput"    # Z

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->packageName:Ljava/lang/String;

    .line 398
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->cameraId:Ljava/lang/String;

    .line 399
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->type:Ljava/lang/String;

    .line 400
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p4, p5}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 401
    iput p6, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    .line 402
    iput-boolean p7, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->isInput:Z

    .line 403
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiCameraInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cameraId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->isInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
