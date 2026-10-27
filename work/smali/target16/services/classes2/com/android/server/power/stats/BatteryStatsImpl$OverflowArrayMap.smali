.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public mActiveOverflow:Landroid/util/ArrayMap;

.field public mCurOverflow:Ljava/lang/Object;

.field public mLastCleanupTimeMs:J

.field public mLastClearTimeMs:J

.field public mLastOverflowFinishTimeMs:J

.field public mLastOverflowTimeMs:J

.field public final mMap:Landroid/util/ArrayMap;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .registers 3

    .line 4038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4030
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4039
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_4

    .line 4055
    const-string p1, ""

    .line 4057
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 4059
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public cleanup(J)V
    .registers 6

    .line 4064
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    .line 4065
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 4066
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_f

    .line 4067
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 4070
    :cond_f
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const-string v0, "BatteryStatsImpl"

    const-string v1, "*overflow*"

    if-nez p1, :cond_41

    .line 4073
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 4074
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4075
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4074
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    :cond_3e
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    return-void

    .line 4081
    :cond_41
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_4f

    :cond_4e
    return-void

    .line 4082
    :cond_4f
    :goto_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " map="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 4083
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4082
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .registers 1

    .line 4043
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
.end method

.method public startObject(Ljava/lang/String;J)Ljava/lang/Object;
    .registers 8

    if-nez p1, :cond_4

    .line 4090
    const-string p1, ""

    .line 4092
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 4099
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    const-string v2, "*overflow*"

    if-eqz v0, :cond_4c

    .line 4100
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_4c

    .line 4103
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez p2, :cond_46

    .line 4106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Have active overflow "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but null overflow"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryStatsImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 4108
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4110
    :cond_46
    iget p0, v0, Landroid/util/MutableInt;->value:I

    add-int/2addr p0, v1

    iput p0, v0, Landroid/util/MutableInt;->value:I

    return-object p2

    .line 4117
    :cond_4c
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4118
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetMAX_WAKELOCKS_PER_UID()I

    move-result v3

    if-lt v0, v3, :cond_7f

    .line 4121
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez v0, :cond_67

    .line 4124
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 4125
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    :cond_67
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v2, :cond_72

    .line 4128
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 4130
    :cond_72
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    return-object v0

    .line 4136
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object p2

    .line 4137
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public stopObject(Ljava/lang/String;J)Ljava/lang/Object;
    .registers 9

    if-nez p1, :cond_4

    .line 4143
    const-string p1, ""

    .line 4145
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 4152
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2d

    .line 4153
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_2d

    .line 4156
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v1, :cond_2d

    .line 4158
    iget v2, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2c

    .line 4160
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    :cond_2c
    return-object v1

    .line 4170
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4171
    const-string v1, "Unable to find object for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    const-string p1, " in uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4174
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4175
    const-string p1, " mapsize="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4177
    const-string p1, " activeoverflow="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4179
    const-string p1, " curoverflow="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4180
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4182
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_79

    .line 4183
    const-string p1, " lastOverflowTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4186
    :cond_79
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_8a

    .line 4187
    const-string p1, " lastOverflowFinishTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4188
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4190
    :cond_8a
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_9b

    .line 4191
    const-string p1, " lastClearTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4194
    :cond_9b
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_ac

    .line 4195
    const-string p1, " lastCleanupTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4196
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    sub-long/2addr p0, p2

    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4198
    :cond_ac
    const-string p0, "BatteryStatsImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
