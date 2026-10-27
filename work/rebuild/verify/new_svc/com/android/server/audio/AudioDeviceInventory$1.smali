.class Lcom/android/server/audio/AudioDeviceInventory$1;
.super Ljava/util/LinkedHashMap;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$1;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 5

    .line 508
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 509
    const-string/jumbo v0, "put"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 505
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 5

    .line 515
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez p1, :cond_f

    .line 517
    const-string/jumbo v0, "putIfAbsent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_f
    return-object p1
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 505
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 6

    .line 552
    new-instance p0, Landroid/media/MediaMetrics$Item;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio.device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 553
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v1, p3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 554
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 555
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object p3, p3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 556
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p2, :cond_39

    .line 558
    const-string p2, "connected"

    goto :goto_3b

    :cond_39
    const-string p2, "disconnected"

    .line 557
    :goto_3b
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 559
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 4

    .line 524
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p1, :cond_f

    .line 526
    const-string/jumbo v0, "remove"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_f
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory$1;->remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 533
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 535
    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo v1, "remove"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_f
    return p1
.end method
