.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdbDebuggingThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 388
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private closeSocketLocked()V
    .registers 6

    .line 530
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_a

    .line 531
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 532
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_b

    .line 536
    :cond_a
    goto :goto_26

    .line 534
    :catch_b
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v1    # "e":Ljava/io/IOException;
    :goto_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2f

    .line 540
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 541
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 545
    :cond_2f
    goto :goto_4b

    .line 543
    :catch_30
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_4b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    return-void
.end method

.method private listenToSocket()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    const/high16 v0, 0x10000

    :try_start_2
    new-array v0, v0, [B

    .line 445
    .local v0, "buffer":[B
    :goto_4
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 448
    .local v1, "count":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_29

    .line 449
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read failed with count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    goto/16 :goto_231

    .line 453
    :cond_29
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    const/16 v5, 0x50

    const/16 v6, 0x4b

    const/4 v7, 0x1

    if-ne v4, v5, :cond_6c

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_6c

    .line 454
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 455
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 458
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 459
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_20b

    :cond_6c
    aget-byte v4, v0, v3

    const/16 v5, 0x44

    const/4 v8, 0x7

    const/16 v9, 0x43

    if-ne v4, v5, :cond_ad

    aget-byte v4, v0, v7

    if-ne v4, v9, :cond_ad

    .line 461
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 462
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received disconnected message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 465
    .restart local v3    # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_20b

    :cond_ad
    aget-byte v4, v0, v3

    const/16 v5, 0xa

    if-ne v4, v9, :cond_eb

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_eb

    .line 468
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 469
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received connected key message: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 472
    .restart local v3    # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_20b

    :cond_eb
    aget-byte v4, v0, v3

    const/4 v6, 0x3

    const/16 v9, 0x57

    if-ne v4, v9, :cond_17d

    aget-byte v4, v0, v7

    const/16 v10, 0x45

    if-ne v4, v10, :cond_17d

    .line 477
    aget-byte v2, v0, v2

    .line 478
    .local v2, "transportType":B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 479
    .local v3, "key":Ljava/lang/String;
    if-nez v2, :cond_12e

    .line 480
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received USB TLS connected key message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 483
    .local v4, "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_17b

    :cond_12e
    if-ne v2, v7, :cond_15b

    .line 486
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WIFI TLS connected key message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 489
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 490
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_17b

    .line 492
    :cond_15b
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unknown transport type from adbd ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v2    # "transportType":B
    .end local v3    # "key":Ljava/lang/String;
    :goto_17b
    goto/16 :goto_20b

    :cond_17d
    aget-byte v4, v0, v3

    if-ne v4, v9, :cond_20d

    aget-byte v4, v0, v7

    const/16 v5, 0x46

    if-ne v4, v5, :cond_20d

    .line 496
    aget-byte v2, v0, v2

    .line 497
    .restart local v2    # "transportType":B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 498
    .restart local v3    # "key":Ljava/lang/String;
    if-nez v2, :cond_1bd

    .line 499
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received USB TLS disconnect message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 502
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_20a

    :cond_1bd
    if-ne v2, v7, :cond_1ea

    .line 505
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WIFI TLS disconnect key message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 508
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_20a

    .line 511
    :cond_1ea
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unknown transport type from adbd ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v2    # "transportType":B
    .end local v3    # "key":Ljava/lang/String;
    :goto_20a
    nop

    .line 519
    .end local v1    # "count":I
    :goto_20b
    goto/16 :goto_4

    .line 515
    .restart local v1    # "count":I
    :cond_20d
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    .line 516
    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_230
    .catchall {:try_start_2 .. :try_end_230} :catchall_23b

    .line 517
    nop

    .line 521
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :goto_231
    monitor-enter p0

    .line 522
    :try_start_232
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 523
    monitor-exit p0

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_238
    move-exception v0

    monitor-exit p0
    :try_end_23a
    .catchall {:try_start_232 .. :try_end_23a} :catchall_238

    throw v0

    .line 521
    :catchall_23b
    move-exception v0

    monitor-enter p0

    .line 522
    :try_start_23d
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 523
    monitor-exit p0
    :try_end_241
    .catchall {:try_start_23d .. :try_end_241} :catchall_242

    .line 524
    throw v0

    .line 523
    :catchall_242
    move-exception v0

    :try_start_243
    monitor-exit p0
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    throw v0
.end method

.method private openSocketLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "adbd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 425
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 428
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 429
    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 431
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 432
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 433
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 438
    nop

    .line 439
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    return-void

    .line 434
    :catch_30
    move-exception v0

    .line 435
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught an exception opening the socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 437
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 400
    :goto_0
    monitor-enter p0

    .line 401
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-eqz v0, :cond_7

    .line 403
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    return-void

    .line 406
    :cond_7
    const-wide/16 v0, 0x3e8

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->openSocketLocked()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_1b

    .line 410
    goto :goto_11

    .line 407
    :catch_d
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1b

    .line 413
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->listenToSocket()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 417
    :goto_15
    goto :goto_0

    .line 414
    :catch_16
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 411
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 558
    monitor-enter p0

    .line 559
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 561
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11
    .catchall {:try_start_9 .. :try_end_10} :catchall_1d

    .line 564
    goto :goto_1b

    .line 562
    :catch_11
    move-exception v0

    .line 563
    .local v0, "ex":Ljava/io/IOException;
    :try_start_12
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 567
    return-void

    .line 566
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 393
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 394
    return-void
.end method

.method stopListening()V
    .registers 2

    .line 551
    monitor-enter p0

    .line 552
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 553
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 554
    monitor-exit p0

    .line 555
    return-void

    .line 554
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
