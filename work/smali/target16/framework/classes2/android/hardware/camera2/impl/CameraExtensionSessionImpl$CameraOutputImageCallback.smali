.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraOutputImageCallback"
.end annotation


# instance fields
.field private blacklist mImageListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mOutOfBuffers:Z

.field private final blacklist mPruneOlderBuffers:Z

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    .line 1442
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1446
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    .line 1447
    iput-boolean p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mPruneOlderBuffers:Z

    .line 1448
    return-void
.end method

.method private blacklist notifyDroppedImages(J)V
    .registers 11

    .line 1485
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1486
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1489
    cmp-long v5, v3, p1

    if-gez v5, :cond_86

    .line 1490
    iget-boolean v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mPruneOlderBuffers:Z

    if-nez v5, :cond_45

    .line 1491
    const-string v5, "CameraExtensionSessionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected older image with ts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    goto :goto_14

    .line 1494
    :cond_45
    const-string v5, "CameraExtensionSessionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropped image with ts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1496
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_74

    .line 1497
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v6, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1499
    :cond_74
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_7f

    .line 1500
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    .line 1502
    :cond_7f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    :cond_86
    goto :goto_14

    .line 1505
    :cond_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1506
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    goto :goto_8b

    .line 1508
    :cond_a5
    monitor-exit v0

    .line 1509
    return-void

    .line 1508
    :catchall_a7
    move-exception p1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_5 .. :try_end_a9} :catchall_a7

    throw p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 1535
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1536
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1537
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_26

    .line 1538
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 1540
    :cond_26
    goto :goto_f

    .line 1541
    :cond_27
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1542
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1543
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_58

    .line 1544
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v4, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1546
    :cond_58
    goto :goto_31

    .line 1547
    :cond_59
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1548
    monitor-exit v0

    .line 1549
    return-void

    .line 1548
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 7

    .line 1453
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
    :try_start_5
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_9} :catch_5a
    .catchall {:try_start_5 .. :try_end_9} :catchall_58

    .line 1460
    nop

    .line 1461
    if-nez v1, :cond_15

    .line 1462
    :try_start_c
    const-string p1, "CameraExtensionSessionImpl"

    const-string v1, "Invalid image!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    monitor-exit v0

    return-void

    .line 1466
    :cond_15
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1467
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1468
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1470
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_39

    .line 1471
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v3, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    goto :goto_43

    .line 1473
    :cond_39
    const-string p1, "CameraExtensionSessionImpl"

    const-string v3, "Invalid image listener, dropping frame!"

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1476
    :goto_43
    goto :goto_4f

    .line 1477
    :cond_44
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    :goto_4f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->notifyDroppedImages(J)V

    .line 1481
    monitor-exit v0

    .line 1482
    return-void

    .line 1481
    :catchall_58
    move-exception p1

    goto :goto_67

    .line 1456
    :catch_5a
    move-exception p1

    .line 1457
    const-string p1, "CameraExtensionSessionImpl"

    const-string v1, "Failed to acquire image, too many images pending!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1459
    monitor-exit v0

    return-void

    .line 1481
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_58

    throw p1
.end method

.method public blacklist registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V
    .registers 7

    .line 1512
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1513
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1514
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1516
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_36

    .line 1517
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-interface {p2, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 1518
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    if-eqz p1, :cond_52

    .line 1519
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1520
    const-string p1, "CameraExtensionSessionImpl"

    const-string p2, "Out of buffers, retry!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->onImageAvailable(Landroid/media/ImageReader;)V

    goto :goto_52

    .line 1524
    :cond_36
    const-string p2, "CameraExtensionSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid image for listener with ts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1525
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1524
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_52
    :goto_52
    goto :goto_5e

    .line 1528
    :cond_53
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :goto_5e
    monitor-exit v0

    .line 1531
    return-void

    .line 1530
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw p1
.end method
