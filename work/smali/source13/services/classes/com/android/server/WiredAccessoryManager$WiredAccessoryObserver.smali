.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/WiredAccessoryManager;

    .line 428
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 429
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 430
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 473
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetBIT_HEADSET()I

    move-result v5

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetBIT_HEADSET_NO_MIC()I

    move-result v6

    const/16 v7, 0x20

    const-string/jumbo v4, "h2w"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 474
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 477
    :cond_2b
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_34
    :goto_34
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string/jumbo v6, "usb_audio"

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 483
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 486
    :cond_4c
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_55
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v6, "hdmi_audio"

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v2

    .line 498
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 499
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 501
    :cond_6e
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "hdmi"

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v2

    .line 502
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 505
    :cond_87
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_90
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetDP_AUDIO_CONNS()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_96
    if-ge v4, v3, :cond_ee

    aget-object v11, v2, v4

    .line 512
    .local v11, "conn":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Monitor DP conn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v12, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move-object v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v12

    .line 515
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    .line 518
    :cond_cb
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not have DP audio support"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v11    # "conn":Ljava/lang/String;
    :goto_eb
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 521
    :cond_ee
    return-object v0
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_80

    .line 601
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 603
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uei.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uevent.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 608
    const/4 v2, 0x1

    if-ne p3, v2, :cond_69

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-lez v2, :cond_69

    .line 609
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->setStreamIndex(I)V

    .line 611
    :cond_69
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v4

    .line 612
    invoke-virtual {v1, v4, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v4

    .line 611
    invoke-static {v2, p2, v3, v4}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    return-void

    .line 600
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "i":I
    :cond_80
    return-void
.end method


# virtual methods
.method init()V
    .registers 11

    .line 433
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 434
    :try_start_7
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 436
    .local v2, "buffer":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    .line 437
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_c5

    .line 440
    .local v4, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_start_26
    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 441
    .local v5, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 442
    .local v7, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 443
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 445
    .local v6, "curState":I
    if-lez v6, :cond_51

    .line 446
    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_51} :catch_72
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_51} :catch_52
    .catchall {:try_start_26 .. :try_end_51} :catchall_c5

    .line 454
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "curState":I
    .end local v7    # "len":I
    :cond_51
    goto :goto_92

    .line 451
    :catch_52
    move-exception v5

    .line 452
    .local v5, "e":Ljava/lang/Exception;
    :try_start_53
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while attempting to determine initial switch state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 453
    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    .line 448
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_72
    move-exception v5

    .line 449
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found while attempting to determine initial switch state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    nop

    .line 436
    .end local v4    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 456
    .end local v2    # "buffer":[C
    .end local v3    # "i":I
    :cond_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_53 .. :try_end_96} :catchall_c5

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_97
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c4

    .line 462
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 463
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVPATH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 461
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 465
    .end local v0    # "i":I
    :cond_c4
    return-void

    .line 456
    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 526
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "devPath":Ljava/lang/String;
    const-string v1, "NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 530
    .local v2, "state":I
    if-nez v1, :cond_15

    .line 531
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    :cond_15
    :try_start_15
    const-string/jumbo v3, "soc:qcom,msm-ext-disp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 535
    const-string v3, "STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "state_str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 537
    .local v4, "offset":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 540
    .local v5, "length":I
    :goto_29
    if-ge v4, v5, :cond_50

    .line 541
    const/16 v6, 0x3d

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 543
    .local v6, "equals":I
    if-le v6, v4, :cond_4d

    .line 544
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "intf_name":Ljava/lang/String;
    const-string v8, "DP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 548
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v6, 0x2

    .line 549
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 548
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 551
    goto :goto_50

    .line 555
    .end local v7    # "intf_name":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v4, v6, 0x3

    .line 556
    .end local v6    # "equals":I
    goto :goto_29

    .line 557
    .end local v3    # "state_str":Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "length":I
    :cond_50
    :goto_50
    goto :goto_5c

    .line 558
    :cond_51
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_5b} :catch_5e

    move v2, v3

    .line 592
    :goto_5c
    goto/16 :goto_cd

    .line 560
    :catch_5e
    move-exception v3

    .line 561
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "couldn\'t get state from event, checking node"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_69
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_cd

    .line 564
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 566
    .local v5, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 567
    const/16 v6, 0x400

    new-array v7, v6, [C

    .line 568
    .local v7, "buffer":[C
    const/4 v8, 0x0

    .line 571
    .local v8, "len":I
    const/4 v9, 0x0

    :try_start_89
    new-instance v10, Ljava/io/FileReader;

    .line 572
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 573
    .local v10, "file":Ljava/io/FileReader;
    invoke-virtual {v10, v7, v9, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    move v8, v6

    .line 574
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_9a} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9a} :catch_9b

    .line 580
    .end local v10    # "file":Ljava/io/FileReader;
    goto :goto_a5

    .line 578
    :catch_9b
    move-exception v6

    .line 579
    .local v6, "e11":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v6    # "e11":Ljava/lang/Exception;
    :goto_a5
    :try_start_a5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    .line 584
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 583
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_b2} :catch_b4

    move v2, v6

    .line 588
    goto :goto_cd

    .line 585
    :catch_b4
    move-exception v6

    .line 586
    .local v6, "e2":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "could not convert to number"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    goto :goto_cd

    .line 575
    .end local v6    # "e2":Ljava/lang/NumberFormatException;
    :catch_bf
    move-exception v6

    .line 576
    .local v6, "e1":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "file not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    goto :goto_cd

    .line 563
    .end local v5    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    .end local v7    # "buffer":[C
    .end local v8    # "len":I
    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 594
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    :cond_cd
    :goto_cd
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 595
    :try_start_d4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    monitor-exit v3

    .line 597
    return-void

    .line 596
    :catchall_d9
    move-exception v4

    monitor-exit v3
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_d9

    throw v4
.end method
