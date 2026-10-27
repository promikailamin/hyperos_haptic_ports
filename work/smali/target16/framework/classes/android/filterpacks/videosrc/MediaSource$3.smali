.class Landroid/filterpacks/videosrc/MediaSource$3;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 548
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 550
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "MediaSource"

    const-string v0, "MediaPlayer has completed playback"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_f
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter p1

    .line 552
    :try_start_12
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmCompleted(Landroid/filterpacks/videosrc/MediaSource;Z)V

    .line 553
    monitor-exit p1

    .line 554
    return-void

    .line 553
    :catchall_1a
    move-exception v0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v0
.end method
