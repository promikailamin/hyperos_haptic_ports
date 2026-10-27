.class public final Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 4

    .line 2143
    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    .line 2144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    .line 2145
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 2268
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2270
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2273
    :cond_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$madjustVolume(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public fastForward(Ljava/lang/String;)V
    .registers 2

    .line 2418
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2420
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2423
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mfastForward(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 2519
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2521
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2524
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetExtras(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()J
    .registers 3

    .line 2240
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_14

    .line 2242
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2245
    :cond_14
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetFlags(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 2230
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2232
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2235
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetLaunchPendingIntent(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 2

    .line 2479
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2481
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2484
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetMetadata(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .line 2200
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_14

    .line 2202
    const-string v0, "MediaSessionRecord"

    const-string v1, "Ignoring call to destroyed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mPackageName:Ljava/lang/String;

    return-object p0

    .line 2205
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .line 2489
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2491
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2494
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 2499
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2501
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2504
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetQueue(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 2509
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2511
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2514
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetQueueTitle(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getRatingType()I
    .registers 2

    .line 2529
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2531
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2534
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetRatingType(Lcom/android/server/media/MediaSessionRecord;)I

    move-result p0

    return p0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .registers 2

    .line 2220
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_14

    .line 2222
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    .line 2225
    :cond_14
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetSessionInfo(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 2210
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_14

    .line 2212
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const-string p0, ""

    return-object p0

    .line 2215
    :cond_14
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetTag(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 9

    .line 2251
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_25

    .line 2253
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2259
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object v1

    .line 2262
    :cond_25
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetVolumeAttributes(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/lang/String;)V
    .registers 2

    .line 2398
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2400
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2403
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mnext(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .registers 2

    .line 2378
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2380
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2383
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpause(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 2

    .line 2328
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2330
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2333
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mplay(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2338
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2340
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2343
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mplayFromMediaId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2348
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2350
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2353
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mplayFromSearch(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    .line 2358
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2360
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2363
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mplayFromUri(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepare(Ljava/lang/String;)V
    .registers 2

    .line 2288
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2290
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2293
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mprepare(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2298
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2300
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2303
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mprepareFromMediaId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2308
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2310
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2313
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mprepareFromSearch(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    .line 2318
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2320
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2323
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mprepareFromUri(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public previous(Ljava/lang/String;)V
    .registers 2

    .line 2408
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2410
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2413
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mprevious(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/Rating;)V
    .registers 3

    .line 2448
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2450
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2453
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mrate(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/media/Rating;)V

    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 3

    .line 2175
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_e

    .line 2179
    :try_start_a
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    return-void

    .line 2185
    :cond_e
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mregisterCallback(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 2149
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public rewind(Ljava/lang/String;)V
    .registers 2

    .line 2428
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2430
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2433
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mrewind(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .registers 4

    .line 2438
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2440
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2443
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mseekTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;J)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 2155
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2157
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2160
    :cond_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msendCommand(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2469
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2471
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2474
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msendCustomAction(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2165
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 2167
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2170
    :cond_13
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msendMediaButton(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;F)V
    .registers 3

    .line 2459
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2461
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2464
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetPlaybackSpeed(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;F)V

    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 2278
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2280
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2283
    :cond_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public skipToQueueItem(Ljava/lang/String;J)V
    .registers 4

    .line 2368
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2370
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2373
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mskipToQueueItem(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;J)V

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 2

    .line 2388
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2390
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2393
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mstop(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    .line 2190
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 2192
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2195
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$munregisterCallback(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
