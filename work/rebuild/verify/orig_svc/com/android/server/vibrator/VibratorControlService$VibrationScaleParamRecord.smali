.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;
.super Ljava/lang/Object;
.source "VibratorControlService.java"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mCreateTime:J

.field public final mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public final mScale:F

.field public final mTypesMask:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V
    .registers 6

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 574
    iput-wide p2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    .line 575
    iput p4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    .line 576
    iput p5, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    return-void
.end method


# virtual methods
.method public final createVibrationUsagesString()Ljava/lang/String;
    .registers 4

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorControlService;->-$$Nest$smmapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 627
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_22

    if-lez v1, :cond_16

    .line 628
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_16
    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 631
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 599
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {}, Lcom/android/server/vibrator/VibratorControlService;->-$$Nest$sfgetDEBUG_DATE_TIME_FORMATTER()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    .line 601
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    .line 602
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 601
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 603
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 604
    iget v3, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2d

    const-string v3, ""

    goto :goto_3b

    :cond_2d
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3b
    iget v4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    int-to-long v4, v4

    .line 605
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->createVibrationUsagesString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 599
    const-string v1, "%s | %6s | scale: %5s | typesMask: %6s | usages: %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 606
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 611
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000002L

    .line 612
    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 613
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b00000001L

    .line 616
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 617
    iget v4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10200000002L

    .line 618
    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 619
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 621
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getCreateUptimeMs()J
    .registers 3

    .line 586
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    return-wide v0
.end method

.method public getGroupKey()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .registers 5

    .line 591
    instance-of v0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    .line 594
    iget v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    iget v2, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    if-ne v0, v2, :cond_15

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method
