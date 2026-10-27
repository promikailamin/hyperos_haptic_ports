.class interface abstract Landroid/media/MediaPlayerStub;
.super Ljava/lang/Object;
.source "MediaPlayerStub.java"


# direct methods
.method public static blacklist get()Landroid/media/MediaPlayerStub;
    .registers 1

    .line 11
    const-class v0, Landroid/media/MediaPlayerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getCacheForType(ILandroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMiuiActualDefaultRingtoneUri(Landroid/net/Uri;Landroid/content/Context;I)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .line 19
    invoke-static {p2, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
