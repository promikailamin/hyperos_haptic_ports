.class public Lcom/android/server/audio/AudioService$VolumeStreamState$1;
.super Landroid/util/SparseIntArray;
.source "AudioService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 3

    .line 9992
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public put(II)V
    .registers 4

    .line 9995
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9996
    const-string/jumbo v0, "put"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    .line 9997
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_14

    .line 9998
    const-string p0, "AS.AudioService"

    const-string p1, "Clear volume cache after update index map"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10000
    :cond_14
    const-string p0, "getStreamVolume"

    invoke-static {p0}, Landroid/media/AudioManager;->clearVolumeCache(Ljava/lang/String;)V

    return-void
.end method

.method public final record(Ljava/lang/String;II)V
    .registers 7

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_7

    .line 10014
    const-string p2, "default"

    goto :goto_b

    .line 10015
    :cond_7
    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p2

    .line 10016
    :goto_b
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.volume."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    .line 10017
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 10019
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 10020
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MIN_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIndexMin(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result p3

    .line 10021
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIndexMax(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result p0

    .line 10022
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 10023
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public setValueAt(II)V
    .registers 4

    .line 10004
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 10005
    const-string/jumbo v0, "setValueAt"

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    .line 10006
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_18

    .line 10007
    const-string p0, "AS.AudioService"

    const-string p1, "Clear volume cache after update index map"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10009
    :cond_18
    const-string p0, "getStreamVolume"

    invoke-static {p0}, Landroid/media/AudioManager;->clearVolumeCache(Ljava/lang/String;)V

    return-void
.end method
