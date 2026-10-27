.class public Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# instance fields
.field public mDevPath:Ljava/util/List;

.field public final mUEventInfo:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 439
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mDevPath:Ljava/util/List;

    .line 442
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 11

    .line 446
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x400

    .line 448
    :try_start_9
    new-array v2, v1, [C

    const/4 v3, 0x0

    move v4, v3

    .line 450
    :goto_d
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b0

    .line 451
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_62

    .line 454
    :try_start_1d
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v6

    .line 455
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v7, v2, v3, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    .line 457
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 458
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v3, v8}, Ljava/lang/String;-><init>([CII)V

    const-string v8, "\\D+"

    const-string v9, ""

    .line 459
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_ac

    .line 462
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v8, v8, 0x2

    .line 463
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 464
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string v8, "HDMI"

    invoke-static {v6, v8}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fputmDetectedIntf(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)V

    goto :goto_67

    :catchall_62
    move-exception p0

    goto/16 :goto_ef

    :catch_65
    move-exception v6

    goto :goto_73

    .line 466
    :cond_67
    :goto_67
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_72} :catch_90
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_72} :catch_65
    .catchall {:try_start_1d .. :try_end_72} :catchall_62

    goto :goto_ac

    .line 472
    :goto_73
    :try_start_73
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while attempting to determine initial switch state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-static {v7, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 469
    :catch_90
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found while attempting to determine initial switch state"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 476
    :cond_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_73 .. :try_end_b1} :catchall_62

    .line 481
    :goto_b1
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_ee

    .line 482
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 483
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v1

    .line 485
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mDevPath:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    goto :goto_eb

    .line 488
    :cond_ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVPATH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mDevPath:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_eb
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_ee
    return-void

    .line 476
    :goto_ef
    :try_start_ef
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_62

    throw p0
.end method

.method public final makeObservedUEventList()Ljava/util/List;
    .registers 15

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 499
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v6, 0x2

    const/16 v7, 0x20

    const-string v4, "h2w"

    const/4 v5, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v9, v3

    .line 500
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 501
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 503
    :cond_24
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "This kernel does not have wired headset support"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_2e
    move-object v9, p0

    .line 508
    :goto_2f
    new-instance v8, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string/jumbo v10, "usb_audio"

    const/4 v11, 0x4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 509
    invoke-virtual {v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 510
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 512
    :cond_45
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "This kernel does not have usb audio support"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_4e
    new-instance v8, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v10, "hdmi_audio"

    const/16 v11, 0x10

    invoke-direct/range {v8 .. v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 524
    invoke-virtual {v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 525
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 527
    :cond_63
    new-instance v8, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v10, "hdmi"

    const/16 v11, 0x10

    invoke-direct/range {v8 .. v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 528
    invoke-virtual {v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result p0

    if-eqz p0, :cond_78

    .line 529
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 531
    :cond_78
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "This kernel does not have HDMI audio support"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_81
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetDP_AUDIO_CONNS()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_87
    if-ge v2, v1, :cond_be

    aget-object v10, p0, v2

    .line 540
    new-instance v8, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v11, 0x10

    invoke-direct/range {v8 .. v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 541
    invoke-virtual {v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 542
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 544
    :cond_9e
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have DP audio support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_be
    return-object v0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11

    .line 553
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v1, "NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    .line 558
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    const/4 v2, 0x0

    .line 562
    :try_start_15
    const-string/jumbo v3, "soc:qcom,msm-ext-disp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 563
    const-string v3, "STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_28} :catch_61

    move v4, v2

    move v5, v4

    :goto_2a
    if-ge v4, v3, :cond_db

    const/16 v6, 0x3d

    .line 569
    :try_start_2e
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-le v6, v4, :cond_5e

    .line 572
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 574
    const-string v7, "DP"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_48

    const-string v7, "HDMI"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    :cond_48
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    .line 576
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 575
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5e

    .line 578
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1, v4}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fputmDetectedIntf(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_5c} :catch_6f

    goto/16 :goto_db

    :cond_5e
    add-int/lit8 v4, v6, 0x3

    goto :goto_2a

    :catch_61
    move v5, v2

    goto :goto_6f

    .line 587
    :cond_63
    :try_start_63
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6d} :catch_61

    goto/16 :goto_db

    .line 590
    :catch_6f
    :goto_6f
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v3, "couldn\'t get state from event, checking node"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 592
    :goto_79
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_db

    .line 593
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 595
    invoke-virtual {v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    const/16 p1, 0x400

    .line 596
    new-array v4, p1, [C

    .line 600
    :try_start_97
    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v6, v4, v2, p1}, Ljava/io/FileReader;->read([CII)I

    move-result p1
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_a4} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a4} :catch_aa

    .line 602
    :try_start_a4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a7} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_b6

    :catch_a8
    move-exception v3

    goto :goto_ac

    :catch_aa
    move-exception v3

    move p1, v2

    .line 607
    :goto_ac
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onUEvent exception"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :goto_b6
    :try_start_b6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_c3} :catch_c4

    goto :goto_db

    .line 613
    :catch_c4
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "could not convert to number"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 604
    :catch_ce
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file not found"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :cond_d8
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    .line 621
    :cond_db
    :goto_db
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 622
    :try_start_e2
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 623
    monitor-exit p1

    return-void

    :catchall_e7
    move-exception p0

    monitor-exit p1
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_e7

    throw p0
.end method

.method public final updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 627
    :goto_2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 628
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 629
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const/4 p1, 0x1

    if-ne p3, p1, :cond_30

    .line 630
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    if-lez v1, :cond_30

    .line 631
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->setStreamIndex(I)V

    :cond_30
    if-ne p3, p1, :cond_42

    .line 635
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmDetectedIntf(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DP"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr p1, v1

    .line 636
    invoke-virtual {v2, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->setCableIndex(I)V

    .line 638
    :cond_42
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 639
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevAddress()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result p0

    .line 640
    invoke-virtual {v2, p0, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result p0

    .line 638
    invoke-static {p1, p2, v1, p0, v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_59
    return-void
.end method
