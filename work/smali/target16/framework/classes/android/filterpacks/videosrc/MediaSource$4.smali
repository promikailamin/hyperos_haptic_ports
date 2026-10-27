.class Landroid/filterpacks/videosrc/MediaSource$4;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor blacklist <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 558
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 560
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "MediaSource"

    const-string v0, "New frame from media player"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_f
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter p1

    .line 562
    :try_start_12
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "MediaSource"

    const-string v1, "New frame: notify"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_21
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmNewFrameAvailable(Landroid/filterpacks/videosrc/MediaSource;Z)V

    .line 564
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 565
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "MediaSource"

    const-string v1, "New frame: notify done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_3b
    monitor-exit p1

    .line 567
    return-void

    .line 566
    :catchall_3d
    move-exception v0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_3d

    throw v0
.end method
