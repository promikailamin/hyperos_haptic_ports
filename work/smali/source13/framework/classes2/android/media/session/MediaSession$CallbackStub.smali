.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private greylist-max-o mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/session/MediaSession;)V
    .registers 3
    .param p1, "session"    # Landroid/media/session/MediaSession;

    .line 1190
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    .line 1191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    .line 1192
    return-void
.end method

.method private static blacklist createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1195
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public blacklist onAdjustVolume(Ljava/lang/String;III)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "direction"    # I

    .line 1401
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1402
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1403
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    .line 1406
    :cond_11
    return-void
.end method

.method public blacklist onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "cb"    # Landroid/os/ResultReceiver;

    .line 1201
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1202
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1203
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5, p6}, Landroid/media/session/MediaSession;->dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1206
    :cond_11
    return-void
.end method

.method public blacklist onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;

    .line 1392
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1393
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1394
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1397
    :cond_11
    return-void
.end method

.method public blacklist onFastForward(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1350
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1351
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1352
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1354
    :cond_11
    return-void
.end method

.method public greylist-max-o onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p5, "sequenceNumber"    # I
    .param p6, "cb"    # Landroid/os/ResultReceiver;

    .line 1211
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1213
    .local v0, "session":Landroid/media/session/MediaSession;
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1214
    :try_start_b
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_1a

    .line 1218
    :catchall_13
    move-exception v2

    if-eqz p6, :cond_19

    .line 1219
    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1221
    :cond_19
    throw v2

    .line 1218
    :cond_1a
    :goto_1a
    if-eqz p6, :cond_1f

    .line 1219
    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1222
    :cond_1f
    return-void
.end method

.method public blacklist onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 1227
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1228
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1229
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V

    .line 1232
    :cond_11
    return-void
.end method

.method public blacklist onNext(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1334
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1335
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1336
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1338
    :cond_11
    return-void
.end method

.method public blacklist onPause(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1318
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1319
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1320
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1322
    :cond_11
    return-void
.end method

.method public blacklist onPlay(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1273
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1274
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1275
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1277
    :cond_11
    return-void
.end method

.method public blacklist onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1282
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1283
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1284
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1287
    :cond_11
    return-void
.end method

.method public blacklist onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1292
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1293
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1294
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1297
    :cond_11
    return-void
.end method

.method public blacklist onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1301
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1302
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1303
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1306
    :cond_11
    return-void
.end method

.method public blacklist onPrepare(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1236
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1237
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1238
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1240
    :cond_11
    return-void
.end method

.method public blacklist onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1245
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1246
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_12

    .line 1247
    nop

    .line 1248
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1247
    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1250
    :cond_12
    return-void
.end method

.method public blacklist onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1255
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1256
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_12

    .line 1257
    nop

    .line 1258
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1257
    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1260
    :cond_12
    return-void
.end method

.method public blacklist onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 1264
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1265
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1266
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1269
    :cond_11
    return-void
.end method

.method public blacklist onPrevious(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1342
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1343
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1344
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1346
    :cond_11
    return-void
.end method

.method public blacklist onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rating"    # Landroid/media/Rating;

    .line 1374
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1375
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1376
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V

    .line 1378
    :cond_11
    return-void
.end method

.method public blacklist onRewind(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1358
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1359
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1360
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1362
    :cond_11
    return-void
.end method

.method public blacklist onSeekTo(Ljava/lang/String;IIJ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pos"    # J

    .line 1366
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1367
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1368
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    .line 1370
    :cond_11
    return-void
.end method

.method public blacklist onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "speed"    # F

    .line 1382
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1383
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_12

    .line 1384
    nop

    .line 1385
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1384
    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchSetPlaybackSpeed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;F)V

    .line 1387
    :cond_12
    return-void
.end method

.method public blacklist onSetVolumeTo(Ljava/lang/String;III)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # I

    .line 1410
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1411
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1412
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    .line 1415
    :cond_11
    return-void
.end method

.method public blacklist onSkipToTrack(Ljava/lang/String;IIJ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "id"    # J

    .line 1310
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1311
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1312
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    .line 1314
    :cond_11
    return-void
.end method

.method public blacklist onStop(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1326
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1327
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_11

    .line 1328
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1330
    :cond_11
    return-void
.end method
