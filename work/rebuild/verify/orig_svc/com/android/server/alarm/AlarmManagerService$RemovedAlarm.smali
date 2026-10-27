.class public Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public final mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

.field public final mRemoveReason:I

.field public final mWhenRemovedElapsed:J

.field public final mWhenRemovedRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;IJJ)V
    .registers 8

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Lcom/android/server/alarm/Alarm$Snapshot;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/Alarm$Snapshot;-><init>(Lcom/android/server/alarm/Alarm;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    .line 608
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 609
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 610
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    return-void
.end method

.method public static final isLoggable(I)Z
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final removeReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 632
    :pswitch_16
    const-string/jumbo p0, "listener_cached"

    return-object p0

    .line 630
    :pswitch_1a
    const-string/jumbo p0, "listener_binder_died"

    return-object p0

    .line 628
    :pswitch_1e
    const-string/jumbo p0, "pi_cancelled"

    return-object p0

    .line 626
    :pswitch_22
    const-string p0, "data_cleared"

    return-object p0

    .line 624
    :pswitch_25
    const-string p0, "exact_alarm_permission_revoked"

    return-object p0

    .line 622
    :pswitch_28
    const-string p0, "alarm_cancelled"

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 8

    .line 639
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 641
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->removeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reason"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 642
    const-string v0, "elapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 644
    const-string v0, " rtc="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 648
    const-string p4, "Snapshot:"

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 650
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/Alarm$Snapshot;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 651
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 653
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
