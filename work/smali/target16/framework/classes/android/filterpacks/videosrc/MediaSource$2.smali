.class Landroid/filterpacks/videosrc/MediaSource$2;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 537
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 539
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "MediaSource"

    const-string v0, "MediaPlayer is prepared"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_f
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter p1

    .line 541
    :try_start_12
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmPrepared(Landroid/filterpacks/videosrc/MediaSource;Z)V

    .line 542
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 543
    monitor-exit p1

    .line 544
    return-void

    .line 543
    :catchall_1f
    move-exception v0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v0
.end method
