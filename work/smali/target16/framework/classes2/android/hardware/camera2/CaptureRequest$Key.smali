.class public final Landroid/hardware/camera2/CaptureRequest$Key;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 216
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 131
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/Class;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;J)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;J)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 120
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 184
    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-object v0
.end method

.method public greylist-max-o getVendorId()J
    .registers 3

    .line 167
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getVendorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CaptureRequest.Key(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
