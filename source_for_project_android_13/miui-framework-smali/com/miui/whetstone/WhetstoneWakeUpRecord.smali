.class public Lcom/miui/whetstone/WhetstoneWakeUpRecord;
.super Ljava/lang/Object;
.source "WhetstoneWakeUpRecord.java"


# static fields
.field private static final blacklist DELAY_STOP_RTC_APP_TIME:I = 0x1388


# instance fields
.field public blacklist intent:Landroid/app/PendingIntent;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist status:Z

.field public blacklist uid:I

.field public blacklist updateTime:J

.field public blacklist wakeup_count:I


# direct methods
.method public constructor blacklist <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    .line 17
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    .line 18
    iput-object p3, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->packageName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist clearWakeupCount()V
    .registers 2

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 25
    return-void
.end method

.method public blacklist disableWakeUpStatus()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    .line 29
    return-void
.end method

.method public blacklist getLastWakeUpTime()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    return-wide v0
.end method

.method public blacklist getRecordPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getRecordStatus()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    return v0
.end method

.method public blacklist getWakeUpCount()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    return v0
.end method

.method public blacklist increaseWakeUpCount()V
    .registers 5

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 33
    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    .line 36
    :cond_19
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; wakeup_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; updateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
