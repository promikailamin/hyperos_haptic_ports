.class public final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# instance fields
.field public final mRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    .line 1633
    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    .line 1634
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public destroySession()V
    .registers 2

    .line 1643
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1645
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1648
    :cond_12
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mdestroySession(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public getBinderForSetQueue()Landroid/os/IBinder;
    .registers 2

    .line 1754
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 1756
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1759
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetBinderForSetQueue(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getController()Landroid/media/session/ISessionController;
    .registers 2

    .line 1663
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    .line 1665
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1668
    :cond_13
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetController(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/ISessionController;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .registers 1

    .line 1638
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public resetQueue()V
    .registers 2

    .line 1744
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1746
    const-string p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1749
    :cond_12
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mresetQueue(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1653
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1655
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1658
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msendEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActive(Z)V
    .registers 2

    .line 1673
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1675
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1678
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetActive(Lcom/android/server/media/MediaSessionRecord;Z)V

    return-void
.end method

.method public setCurrentVolume(I)V
    .registers 2

    .line 1794
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1796
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1799
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetCurrentVolume(Lcom/android/server/media/MediaSessionRecord;I)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    .line 1774
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1776
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1779
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetExtras(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)V

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    .line 1683
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1685
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1688
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetFlags(Lcom/android/server/media/MediaSessionRecord;I)V

    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .line 1714
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1716
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1719
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetLaunchPendingIntent(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 2

    .line 1704
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1706
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1709
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetMediaButtonBroadcastReceiver(Lcom/android/server/media/MediaSessionRecord;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 2

    .line 1693
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1695
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1698
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetMediaButtonReceiver(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 5

    .line 1724
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1726
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1729
    :cond_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetMetadata(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;JLjava/lang/String;)V

    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 2

    .line 1734
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1736
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1739
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetPlaybackState(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 2

    .line 1804
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1806
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1809
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetPlaybackToLocal(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public setPlaybackToRemote(IILjava/lang/String;)V
    .registers 4

    .line 1814
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1816
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1819
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetPlaybackToRemote(Lcom/android/server/media/MediaSessionRecord;IILjava/lang/String;)V

    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1764
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1766
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1769
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetQueueTitle(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRatingType(I)V
    .registers 2

    .line 1784
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_12

    .line 1786
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1789
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetRatingType(Lcom/android/server/media/MediaSessionRecord;I)V

    return-void
.end method
