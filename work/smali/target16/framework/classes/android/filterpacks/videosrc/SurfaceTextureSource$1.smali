.class Landroid/filterpacks/videosrc/SurfaceTextureSource$1;
.super Ljava/lang/Object;
.source "SurfaceTextureSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/SurfaceTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;


# direct methods
.method constructor blacklist <init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 249
    invoke-static {}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->-$$Nest$sfgetmLogVerbose()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "SurfaceTextureSource"

    const-string v0, "New frame from SurfaceTexture"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_d
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->-$$Nest$fgetmNewFrameAvailable(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 251
    return-void
.end method
