.class public Lcom/android/server/display/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HbmObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHbmActive:Landroid/util/SparseBooleanArray;

.field private final mHbmMode:Landroid/util/SparseIntArray;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mRefreshRateInHbmHdr:I

.field private mRefreshRateInHbmSunlight:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;
    .param p2, "ballotBox"    # Lcom/android/server/display/DisplayModeDirector$BallotBox;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "displaySettings"    # Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2496
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 2497
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 2507
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 2508
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2509
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 2510
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 2511
    return-void
.end method

.method private onDeviceConfigRefreshRateInHbmChanged()V
    .registers 5

    .line 2591
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    .line 2592
    .local v0, "displayIds":[I
    if-eqz v0, :cond_14

    .line 2593
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget v3, v0, v2

    .line 2594
    .local v3, "id":I
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    .line 2593
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2597
    :cond_14
    return-void
.end method

.method private recalculateVotesForDisplay(I)V
    .registers 10
    .param p1, "displayId"    # I

    .line 2600
    const/4 v0, 0x0

    .line 2601
    .local v0, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_78

    .line 2602
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 2603
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2604
    .local v1, "hbmMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    .line 2606
    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-lez v4, :cond_1f

    .line 2607
    int-to-float v2, v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_78

    .line 2610
    :cond_1f
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2611
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v4

    .line 2612
    .local v4, "limits":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    if-eqz v4, :cond_48

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 2613
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 2614
    .local v6, "limitation":Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v7, v2, :cond_45

    .line 2615
    iget-object v2, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget-object v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v2, v7}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 2617
    goto :goto_48

    .line 2612
    .end local v6    # "limitation":Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 2620
    .end local v4    # "limits":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;>;"
    .end local v5    # "i":I
    :cond_48
    :goto_48
    goto :goto_78

    .line 2621
    :cond_49
    if-ne v1, v3, :cond_56

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-lez v2, :cond_56

    .line 2625
    int-to-float v4, v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_78

    .line 2627
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HBM mode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for display ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    .end local v1    # "hbmMode":I
    :cond_78
    :goto_78
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    invoke-interface {v1, p1, v3, v0}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2632
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2635
    const-string v0, "   HbmObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    return-void
.end method

.method getRefreshRateInHbmHdr()I
    .registers 2

    .line 2536
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    return v0
.end method

.method getRefreshRateInHbmSunlight()I
    .registers 2

    .line 2528
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return v0
.end method

.method public observe()V
    .registers 5

    .line 2514
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 2515
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 2517
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2518
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 2521
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmHdrChanged(I)V
    .registers 3
    .param p1, "refreshRate"    # I

    .line 2553
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-eq p1, v0, :cond_9

    .line 2554
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 2555
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    .line 2557
    :cond_9
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmSunlightChanged(I)V
    .registers 3
    .param p1, "refreshRate"    # I

    .line 2543
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-eq p1, v0, :cond_9

    .line 2544
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 2545
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    .line 2547
    :cond_9
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2560
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 2571
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    .line 2572
    .local v0, "info":Landroid/hardware/display/BrightnessInfo;
    if-nez v0, :cond_9

    .line 2574
    return-void

    .line 2577
    :cond_9
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 2578
    .local v1, "hbmMode":I
    if-eqz v1, :cond_17

    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 2580
    .local v2, "isHbmActive":Z
    :goto_18
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_29

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 2581
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v2, v3, :cond_29

    .line 2583
    return-void

    .line 2585
    :cond_29
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2586
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2587
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    .line 2588
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2564
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2565
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2566
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2567
    return-void
.end method
