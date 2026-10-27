.class public final Lcom/android/server/input/InputGestureManager;
.super Ljava/lang/Object;
.source "InputGestureManager.java"


# static fields
.field public static final mGestureLock:Ljava/lang/Object;


# instance fields
.field public final mBlockListedTriggers:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mCustomInputGestures:Landroid/util/SparseArray;

.field public final mSystemShortcuts:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$rFyxEpYsnhnRsDQaYg4ACW996zo(Landroid/hardware/input/InputGestureData$Filter;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 469
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputGestureData$Filter;->matches(Landroid/hardware/input/InputGestureData;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Landroid/hardware/input/InputGestureData$Trigger;

    const/16 v2, 0x3d

    const/4 v3, 0x2

    .line 80
    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x3

    .line 81
    invoke-static {v2, v4}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/16 v2, 0x3e

    const/16 v5, 0x1000

    .line 82
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    aput-object v6, v1, v3

    const/16 v3, 0x1001

    .line 83
    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x1002

    const/16 v3, 0x36

    .line 85
    invoke-static {v3, v2}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    .line 87
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const/16 v2, 0x1f

    .line 88
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const/16 v2, 0x32

    .line 89
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const/16 v2, 0x34

    .line 90
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const/16 v2, 0x9

    .line 91
    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x35

    .line 92
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 79
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    .line 96
    iput-object p1, p0, Lcom/android/server/input/InputGestureManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;
    .registers 5

    .line 545
    new-instance v0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 546
    invoke-static {p0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    .line 547
    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    .line 548
    invoke-virtual {p0, p3}, Landroid/hardware/input/InputGestureData$Builder;->setAllowCaptureByFocusedWindow(Z)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I
    .registers 7

    .line 414
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    .line 416
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_71

    .line 419
    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    instance-of v3, v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v3, :cond_40

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 420
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 421
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_73

    .line 422
    :cond_3e
    :goto_3e
    monitor-exit v0

    return v2

    .line 425
    :cond_40
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 426
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    :cond_52
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 429
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 430
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 p0, 0x2

    .line 431
    monitor-exit v0

    return p0

    .line 433
    :cond_67
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 434
    monitor-exit v0

    return p0

    .line 417
    :cond_71
    :goto_71
    monitor-exit v0

    return v2

    .line 435
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_3c

    throw p0
.end method

.method public final blockListBookmarkedTriggers(Ljava/util/List;)V
    .registers 5

    .line 380
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    .line 382
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 384
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 553
    const-string v0, "InputGestureManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 555
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_b
    const-string v1, "System Shortcuts:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 558
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 559
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_2d
    move-exception p0

    goto/16 :goto_ad

    .line 561
    :cond_30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 562
    const-string v1, "Blocklisted Triggers:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 564
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData$Trigger;

    .line 565
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_41

    .line 567
    :cond_51
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 568
    const-string v1, "Custom Gestures:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 570
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_63
    if-ge v2, v1, :cond_a8

    .line 572
    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 573
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 576
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputGestureData;

    .line 577
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_92

    .line 579
    :cond_a2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 581
    :cond_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_b .. :try_end_a9} :catchall_2d

    .line 582
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 581
    :goto_ad
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_2d

    throw p0
.end method

.method public getCustomGestureForKeyEvent(ILandroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;
    .registers 6

    .line 500
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 504
    :cond_8
    sget-object v2, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    :try_start_b
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 506
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_19

    .line 508
    monitor-exit v2

    return-object v1

    :catchall_17
    move-exception p0

    goto :goto_2d

    .line 510
    :cond_19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    const p2, 0x11003

    and-int/2addr p1, p2

    .line 511
    invoke-static {v0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v2

    return-object p0

    .line 512
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_17

    throw p0
.end method

.method public getCustomGestureForTouchpadGesture(II)Landroid/hardware/input/InputGestureData;
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 521
    :cond_4
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_7
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_15

    .line 525
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception p0

    goto :goto_21

    .line 527
    :cond_15
    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v1

    return-object p0

    .line 528
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_13

    throw p0
.end method

.method public getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .registers 6

    .line 479
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 481
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_4b

    .line 483
    :cond_11
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 484
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p2, :cond_26

    .line 486
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    .line 488
    :cond_26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    .line 490
    invoke-virtual {p2, v1}, Landroid/hardware/input/InputGestureData$Filter;->matches(Landroid/hardware/input/InputGestureData;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 491
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 494
    :cond_49
    monitor-exit v0

    return-object p1

    .line 495
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_f

    throw p0
.end method

.method public getInputGesture(ILandroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;
    .registers 7

    .line 389
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_21

    .line 391
    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_76

    .line 394
    :cond_21
    instance-of v1, p2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v1, :cond_4f

    move-object v1, p2

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 395
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 396
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 397
    :cond_3c
    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 401
    :cond_4f
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    if-eqz v1, :cond_5b

    .line 403
    monitor-exit v0

    return-object v1

    .line 405
    :cond_5b
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_66

    const/4 p0, 0x0

    .line 406
    monitor-exit v0

    return-object p0

    .line 408
    :cond_66
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v0

    return-object p0

    .line 409
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_1f

    throw p0
.end method

.method public getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;
    .registers 5

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 537
    :cond_8
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    const v2, 0x11003

    and-int/2addr p1, v2

    .line 539
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v1

    return-object p0

    :catchall_21
    move-exception p0

    .line 540
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw p0
.end method

.method public init(Ljava/util/List;)V
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/android/server/input/InputGestureManager;->initSystemShortcuts()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputGestureManager;->blockListBookmarkedTriggers(Ljava/util/List;)V

    return-void
.end method

.method public final initSystemShortcuts()V
    .registers 19

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    new-array v1, v1, [Landroid/hardware/input/InputGestureData;

    const/16 v2, 0x3e

    const/high16 v3, 0x10000

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 107
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const/16 v6, 0x24

    .line 113
    invoke-static {v6, v3, v5, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v6, 0x42

    .line 119
    invoke-static {v6, v3, v5, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v1, v9

    const/16 v8, 0x25

    const/4 v10, 0x7

    .line 125
    invoke-static {v8, v3, v10, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v1, v11

    const/16 v8, 0x28

    const/16 v12, 0x20

    .line 131
    invoke-static {v8, v3, v12, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v1, v13

    const/16 v8, 0x2a

    const/16 v13, 0x8

    .line 137
    invoke-static {v8, v3, v13, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    aput-object v8, v1, v4

    const/16 v4, 0x2f

    const/16 v8, 0xa

    .line 143
    invoke-static {v4, v3, v8, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/4 v14, 0x6

    aput-object v4, v1, v14

    const/16 v4, 0x43

    .line 149
    invoke-static {v4, v3, v11, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v14

    aput-object v14, v1, v10

    const/16 v10, 0x6f

    .line 155
    invoke-static {v10, v3, v11, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v10

    aput-object v10, v1, v13

    const/16 v10, 0x35

    const/16 v13, 0x13

    const v14, 0x11000

    .line 161
    invoke-static {v13, v14, v10, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v10

    const/16 v13, 0x9

    aput-object v10, v1, v13

    const/16 v10, 0x14

    const/16 v13, 0x34

    .line 167
    invoke-static {v10, v14, v13, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v10

    aput-object v10, v1, v8

    const/16 v10, 0x15

    .line 173
    invoke-static {v10, v3, v11, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v11

    const/16 v13, 0xb

    aput-object v11, v1, v13

    const/16 v11, 0x1b

    .line 179
    invoke-static {v10, v14, v11, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v10

    const/16 v11, 0xc

    aput-object v10, v1, v11

    const/16 v10, 0x16

    const/16 v15, 0x1c

    .line 185
    invoke-static {v10, v14, v15, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v10

    const/16 v15, 0xd

    aput-object v10, v1, v15

    const/16 v10, 0x4c

    .line 191
    invoke-static {v10, v3, v11, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v16

    const/16 v17, 0xe

    aput-object v16, v1, v17

    const/16 v6, 0x3d

    .line 197
    invoke-static {v6, v3, v9, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v9, 0xf

    aput-object v6, v1, v9

    .line 106
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v1, 0x1f

    .line 205
    invoke-static {v4, v14, v1, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_MOVE_TO_NEXT_DISPLAY_SHORTCUT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 213
    invoke-static {v12, v14, v2, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ca
    const/16 v1, 0x29

    const v2, 0x10002

    const/16 v6, 0x48

    .line 230
    invoke-static {v1, v2, v6, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x32

    .line 246
    invoke-static {v1, v2, v10, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_TASK_RESIZING_KEYBOARD_SHORTCUTS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    const/16 v9, 0x47

    if-eqz v1, :cond_111

    const/16 v1, 0x44

    .line 255
    invoke-static {v9, v3, v1, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x45

    .line 262
    invoke-static {v6, v3, v1, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x46

    .line 269
    invoke-static {v1, v3, v9, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x45

    const/16 v10, 0x46

    .line 276
    invoke-static {v1, v3, v10, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_111
    const/16 v1, 0x41

    .line 285
    invoke-static {v8, v2, v1, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v13, v2, v4, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x40

    .line 299
    invoke-static {v11, v2, v1, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x42

    .line 306
    invoke-static {v15, v2, v1, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_KEYBOARD_SHORTCUTS_TO_SWITCH_DESKS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_14d

    const/16 v1, 0x4d

    .line 315
    invoke-static {v9, v14, v1, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4e

    .line 322
    invoke-static {v6, v14, v1, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_14d
    sget-object v1, Landroid/window/DesktopExperienceFlags;->CLOSE_TASK_KEYBOARD_SHORTCUT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_160

    const/16 v1, 0x33

    const/16 v2, 0x51

    .line 331
    invoke-static {v1, v14, v2, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(IIIZ)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_160
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_167
    if-ge v7, v2, :cond_17f

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    check-cast v3, Landroid/hardware/input/InputGestureData;

    move-object/from16 v4, p0

    .line 374
    iget-object v5, v4, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_167

    :catchall_17d
    move-exception v0

    goto :goto_181

    .line 376
    :cond_17f
    monitor-exit v1

    return-void

    :goto_181
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_163 .. :try_end_182} :catchall_17d

    throw v0
.end method

.method public removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .registers 7

    .line 459
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 461
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_11

    .line 463
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_33

    :cond_11
    if-nez p2, :cond_1a

    .line 466
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 467
    monitor-exit v0

    return-void

    .line 469
    :cond_1a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputGestureData$Filter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 470
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 471
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 473
    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_f

    throw p0
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I
    .registers 7

    .line 440
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_10

    .line 442
    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_3f

    .line 444
    :cond_10
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 445
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 446
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 447
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 448
    monitor-exit v0

    return v2

    .line 450
    :cond_2a
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 452
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3c
    const/4 p0, 0x1

    .line 454
    monitor-exit v0

    return p0

    .line 455
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_e

    throw p0
.end method
