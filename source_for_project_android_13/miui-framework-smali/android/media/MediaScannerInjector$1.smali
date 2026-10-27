.class Landroid/media/MediaScannerInjector$1;
.super Landroid/os/HandlerThread;
.source "MediaScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScannerInjector;->initMediaFileCapture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected whitelist onLooperPrepared()V
    .registers 3

    .line 82
    new-instance v0, Landroid/media/MediaScannerInjector$1$1;

    invoke-virtual {p0}, Landroid/media/MediaScannerInjector$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerInjector$1$1;-><init>(Landroid/media/MediaScannerInjector$1;Landroid/os/Looper;)V

    invoke-static {v0}, Landroid/media/MediaScannerInjector;->-$$Nest$sfputsHandler(Landroid/os/Handler;)V

    .line 99
    return-void
.end method
