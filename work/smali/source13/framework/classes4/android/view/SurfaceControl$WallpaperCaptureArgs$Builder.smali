.class public Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;
.super Landroid/view/SurfaceControl$CaptureArgs$Builder;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$WallpaperCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1328
    invoke-direct {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SurfaceControl$WallpaperCaptureArgs;
    .registers 3

    .line 1331
    new-instance v0, Landroid/view/SurfaceControl$WallpaperCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControl$WallpaperCaptureArgs;-><init>(Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;Landroid/view/SurfaceControl$WallpaperCaptureArgs-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;
    .registers 1

    .line 1336
    return-object p0
.end method

.method public bridge synthetic blacklist setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    .line 1328
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1328
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    .line 1328
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method
