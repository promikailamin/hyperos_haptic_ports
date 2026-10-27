.class Landroid/os/BaseLooper$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BaseLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BaseLooper$MessageMonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist callbackName:Ljava/lang/String;

.field blacklist dispatchBlkioDelay:J

.field blacklist dispatchCurrentTime:J

.field blacklist dispatchReclaimDelay:J

.field blacklist dispatchRunnableTime:J

.field blacklist dispatchRunningTime:J

.field blacklist dispatchSwapinDelay:J

.field blacklist dispatchTime:J

.field blacklist finishBlkioDelay:J

.field blacklist finishReclaimDelay:J

.field blacklist finishRunnableTime:J

.field blacklist finishRunningTime:J

.field blacklist finishSwapinDelay:J

.field blacklist finishTime:J

.field protected blacklist mSeq:J

.field blacklist msgWhat:I

.field blacklist planCurrentTime:J

.field blacklist planTime:J

.field blacklist targetName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 670
    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo$1;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo$1;-><init>()V

    sput-object v0, Landroid/os/BaseLooper$MessageMonitorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    .line 467
    return-void
.end method


# virtual methods
.method blacklist createMonitorDigest()Ljava/lang/String;
    .registers 2

    .line 657
    const-string v0, ""

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getBlkioDelay()J
    .registers 5

    .line 542
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishBlkioDelay:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchBlkioDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getLatencyMillis()J
    .registers 5

    .line 522
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getMessageSummary(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 652
    const-string v0, ""

    return-object v0
.end method

.method blacklist getMonitorDigest()Ljava/lang/String;
    .registers 2

    .line 667
    const-string v0, ""

    return-object v0
.end method

.method blacklist getMonitorMessage()Ljava/lang/String;
    .registers 2

    .line 662
    const-string v0, ""

    return-object v0
.end method

.method blacklist getReclaimDelay()J
    .registers 5

    .line 550
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishReclaimDelay:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchReclaimDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getRunnableTime()J
    .registers 5

    .line 558
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunnableTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunnableTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getRunningTime()J
    .registers 5

    .line 554
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunningTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunningTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getShortTime()Ljava/lang/String;
    .registers 7

    .line 603
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 604
    .local v0, "sleepTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_34

    move-wide v3, v0

    :cond_34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method blacklist getSwapinDelay()J
    .registers 5

    .line 546
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishSwapinDelay:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchSwapinDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getTookTime()J
    .registers 3

    .line 642
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist getTookTimeAfterDispatch()J
    .registers 3

    .line 647
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist getTotalMillis()J
    .registers 5

    .line 534
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 537
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist getWallMillis()J
    .registers 5

    .line 526
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 527
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 529
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist init(Landroid/os/Message;J)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 470
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_13

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    goto :goto_22

    .line 474
    :cond_13
    iput-wide p2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 476
    .local v0, "delayMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    .line 478
    .end local v0    # "delayMillis":J
    :goto_22
    return-void
.end method

.method blacklist isFinished()Z
    .registers 5

    .line 517
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist markDispatch(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 491
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    const-string v1, ""

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_12

    :cond_8
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->targetName:Ljava/lang/String;

    .line 492
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    goto :goto_23

    :cond_19
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_23
    iput-object v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchCurrentTime:J

    .line 496
    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 497
    .local v0, "delays":[J
    invoke-static {v0}, Landroid/os/BaseLooper;->nGetThreadDelay([J)V

    .line 498
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchBlkioDelay:J

    .line 499
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchSwapinDelay:J

    .line 500
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchReclaimDelay:J

    .line 501
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunningTime:J

    .line 502
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunnableTime:J

    .line 503
    return-void
.end method

.method blacklist markFinish(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    .line 507
    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 508
    .local v0, "delays":[J
    invoke-static {v0}, Landroid/os/BaseLooper;->nGetThreadDelay([J)V

    .line 509
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishBlkioDelay:J

    .line 510
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishSwapinDelay:J

    .line 511
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishReclaimDelay:J

    .line 512
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunningTime:J

    .line 513
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunnableTime:J

    .line 514
    return-void
.end method

.method blacklist reset()V
    .registers 3

    .line 481
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 482
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    .line 483
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    .line 484
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->targetName:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    .line 488
    return-void
.end method

.method blacklist toShortString()Ljava/lang/String;
    .registers 8

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->mSeq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "ms "

    if-lez v1, :cond_4d

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_4d
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_73

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runnable="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_73
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_99

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "io="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_99
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_bf

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swapin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_bf
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_e5

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reclaim="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_e5
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_10b

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "late="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_10b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_144

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15c

    .line 635
    :cond_144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :goto_15c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 563
    const-string v0, "ms"

    const-string v1, ""

    .line 565
    .local v1, "result":Ljava/lang/String;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_196

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->mSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-wide v3, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4d

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " plan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    invoke-static {v7, v8}, Landroid/os/BaseLooper;->formatCurrentTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " late="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " running="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_d3

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_d3
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_f9

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " io="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_f9
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_11f

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " swapin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_11f
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_145

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " reclaim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " h="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17e

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " c="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_196

    .line 592
    :cond_17e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_196
    :goto_196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19a} :catch_19c

    move-object v1, v0

    .line 598
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1b9

    .line 596
    :catch_19c
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageString failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseLooper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b9
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 689
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 691
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 692
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 693
    return-void
.end method
