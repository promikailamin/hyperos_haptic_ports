.class Landroid/media/browse/MediaBrowser$3;
.super Landroid/os/ResultReceiver;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic blacklist val$mediaId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$3;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    .line 411
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$3;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 412
    return-void

    .line 414
    :cond_9
    if-nez p1, :cond_30

    if-eqz p2, :cond_30

    .line 415
    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_30

    .line 419
    :cond_16
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 420
    if-eqz p1, :cond_28

    instance-of p2, p1, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez p2, :cond_28

    .line 421
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object p2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 422
    return-void

    .line 424
    :cond_28
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p2, p1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    .line 425
    return-void

    .line 416
    :cond_30
    :goto_30
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object p2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 417
    return-void
.end method
