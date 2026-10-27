.class Landroid/media/MediaPlayer$7;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3964
    iput-object p1, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 3967
    iget-object p1, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-static {p1}, Landroid/media/MediaPlayer;->-$$Nest$mtryToDisableNativeRoutingCallback(Landroid/media/MediaPlayer;)V

    .line 3968
    iget-object p1, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->baseStop()V

    .line 3969
    return-void
.end method
