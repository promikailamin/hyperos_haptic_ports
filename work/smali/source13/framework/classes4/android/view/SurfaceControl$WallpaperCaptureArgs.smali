.class public Landroid/view/SurfaceControl$WallpaperCaptureArgs;
.super Landroid/view/SurfaceControl$CaptureArgs;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;

    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V

    .line 1326
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;Landroid/view/SurfaceControl$WallpaperCaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$WallpaperCaptureArgs;-><init>(Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;)V

    return-void
.end method
