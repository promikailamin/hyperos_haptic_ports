.class Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemovedAlarm"
.end annotation


# static fields
.field static final REMOVE_REASON_ALARM_CANCELLED:I = 0x1

.field static final REMOVE_REASON_DATA_CLEARED:I = 0x3

.field static final REMOVE_REASON_EXACT_PERMISSION_REVOKED:I = 0x2

.field static final REMOVE_REASON_PI_CANCELLED:I = 0x4

.field static final REMOVE_REASON_UNDEFINED:I


# instance fields
.field final mRemoveReason:I

.field final mTag:Ljava/lang/String;

.field final mWhenRemovedElapsed:J

.field final mWhenRemovedRtc:J


# direct methods
.method constructor <init>(Lcom/android/server/alarm/Alarm;IJJ)V
    .registers 8
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;
    .param p2, "removeReason"    # I
    .param p3, "nowRtc"    # J
    .param p5, "nowElapsed"    # J

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mTag:Ljava/lang/String;

    .line 603
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 604
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 605
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    .line 606
    return-void
.end method

.method static final isLoggable(I)Z
    .registers 2
    .param p0, "reason"    # I

    .line 611
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static final removeReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 615
    packed-switch p0, :pswitch_data_26

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :pswitch_18
    const-string/jumbo v0, "pi_cancelled"

    return-object v0

    .line 621
    :pswitch_1c
    const-string v0, "data_cleared"

    return-object v0

    .line 619
    :pswitch_1f
    const-string v0, "exact_alarm_permission_revoked"

    return-object v0

    .line 617
    :pswitch_22
    const-string v0, "alarm_cancelled"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 8
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 630
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mTag:Ljava/lang/String;

    const-string v1, "[tag"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 631
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->removeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 632
    const-string v0, "elapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 634
    const-string v0, " rtc="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 636
    const-string v0, "]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 637
    return-void
.end method
