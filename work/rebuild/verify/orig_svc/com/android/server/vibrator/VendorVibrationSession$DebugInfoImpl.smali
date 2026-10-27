.class public final Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# instance fields
.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mEndedByVendor:Z

.field public final mStartTime:J

.field public final mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final mVibrations:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V
    .registers 15

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 557
    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 558
    iput-wide p3, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateUptime:J

    .line 559
    iput-wide p5, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    .line 560
    iput-wide p7, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    .line 561
    iput-wide p11, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    .line 562
    iput-boolean p13, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndedByVendor:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p9, p1

    if-lez p1, :cond_19

    sub-long/2addr p9, p3

    goto :goto_1b

    :cond_19
    const-wide/16 p9, -0x1

    .line 563
    :goto_1b
    iput-wide p9, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    .line 564
    new-instance p1, Ljava/util/ArrayList;

    if-nez p14, :cond_25

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_28

    :cond_25
    invoke-direct {p1, p14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_28
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 623
    const-string v0, "VibrationSession:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "durationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_89

    const/4 v1, 0x0

    goto :goto_8d

    .line 630
    :cond_89
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v0, "vibrations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 635
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_bc
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 636
    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_bc

    .line 638
    :cond_cc
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 640
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 606
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000002L

    .line 607
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    .line 608
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 609
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    .line 611
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 612
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-wide v2, 0x10500000001L

    .line 613
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    .line 614
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    .line 615
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 618
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpCompact(Landroid/util/IndentingPrintWriter;)V
    .registers 13

    .line 646
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    .line 648
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 650
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    .line 651
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 652
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v1, v8

    const/4 v5, 0x0

    const-string v10, ""

    if-nez v3, :cond_26

    move-object v1, v10

    goto :goto_2a

    :cond_26
    invoke-static {v1, v2, v5}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    .line 653
    :goto_2a
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    cmp-long v8, v2, v8

    if-nez v8, :cond_32

    move-object v9, v10

    goto :goto_37

    :cond_32
    invoke-static {v2, v3, v5}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_37
    const-string/jumbo v5, "session"

    move-object v8, v1

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 646
    const-string v2, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 656
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 657
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 654
    const-string v3, " | flags: %4s | usage: %s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 661
    iget-object v3, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v3

    if-eqz v3, :cond_8b

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " | audioUsage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 663
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v4

    .line 662
    invoke-static {v4}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 665
    :cond_8b
    iget-object v3, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 667
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    filled-new-array {v4, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 665
    const-string v4, " | %s (uid=%d, deviceId=%d) | reason: %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 671
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_cc
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 672
    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dumpCompact(Landroid/util/IndentingPrintWriter;)V

    goto :goto_cc

    .line 674
    :cond_dc
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    .line 579
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public getCreateUptimeMillis()J
    .registers 3

    .line 574
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateUptime:J

    return-wide v0
.end method

.method public getDumpAggregationKey()Ljava/lang/Object;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 1

    .line 569
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 6

    .line 590
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    .line 592
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorSessionStarted(I)V

    .line 593
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    .line 594
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 593
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorSessionVibrations(II)V

    .line 595
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndedByVendor:Z

    if-nez v0, :cond_27

    .line 596
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorSessionInterrupted(I)V

    .line 599
    :cond_27
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 600
    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    .line 680
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_31

    const/4 v1, 0x0

    goto :goto_35

    :cond_31
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 684
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vibrations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
