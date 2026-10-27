.class Landroid/media/AudioStatusHandler$2;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioStatusHandler;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;

    .line 73
    iput-object p1, p0, Landroid/media/AudioStatusHandler$2;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Landroid/media/AudioStatusHandler$2;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0, p1}, Landroid/media/AudioStatusHandler;->-$$Nest$mcheckAndSetToNormal(Landroid/media/AudioStatusHandler;Ljava/util/List;)V

    .line 78
    return-void
.end method
