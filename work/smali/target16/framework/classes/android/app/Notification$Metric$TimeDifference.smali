.class public final Landroid/app/Notification$Metric$TimeDifference;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeDifference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Metric$TimeDifference$Format;
    }
.end annotation


# static fields
.field public static final blacklist FORMAT_ADAPTIVE:I = 0x1

.field public static final blacklist FORMAT_CHRONOMETER:I = 0x2

.field private static final blacklist KEY_COUNT_DOWN:Ljava/lang/String; = "countDown"

.field private static final blacklist KEY_FORMAT:Ljava/lang/String; = "format"

.field private static final blacklist KEY_PAUSED_DURATION:Ljava/lang/String; = "pausedDuration"

.field private static final blacklist KEY_ZERO_ELAPSED_REALTIME:Ljava/lang/String; = "zeroElapsedRealtime"

.field private static final blacklist KEY_ZERO_TIME:Ljava/lang/String; = "zeroTime"


# instance fields
.field private final blacklist mCountDown:Z

.field private final blacklist mFormat:I

.field private final blacklist mPausedDuration:Ljava/time/Duration;

.field private final blacklist mZeroElapsedRealtime:Ljava/lang/Long;

.field private final blacklist mZeroTime:Ljava/time/Instant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$TimeDifference;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$TimeDifference;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V
    .registers 11

    .line 12249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12250
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v0

    :goto_b
    if-eqz p2, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v0

    :goto_10
    add-int/2addr v2, v3

    .line 12251
    if-eqz p3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v0

    :goto_16
    add-int/2addr v2, v3

    if-ne v2, v1, :cond_1b

    move v2, v1

    goto :goto_1c

    :cond_1b
    move v2, v0

    :goto_1c
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v3

    .line 12250
    const-string v4, "Exactly one of zeroTime, zeroElapsedRealtime, or pausedDuration must be present; received %s,%s,%s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12255
    if-lt p5, v1, :cond_2b

    const/4 v2, 0x2

    if-gt p5, v2, :cond_2b

    move v0, v1

    .line 12256
    :cond_2b
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 12255
    const-string v2, "Invalid format: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12257
    iput-object p1, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    .line 12258
    iput-object p2, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 12259
    iput-object p3, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    .line 12260
    iput-boolean p4, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    .line 12261
    iput p5, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    .line 12262
    return-void
.end method

.method public static blacklist forPausedStopwatch(Ljava/time/Duration;I)Landroid/app/Notification$Metric$TimeDifference;
    .registers 8

    .line 12243
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    .line 12244
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/time/Duration;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    .line 12243
    return-object v0
.end method

.method public static blacklist forPausedTimer(Ljava/time/Duration;I)Landroid/app/Notification$Metric$TimeDifference;
    .registers 8

    .line 12233
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    .line 12234
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/time/Duration;

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    .line 12233
    return-object v0
.end method

.method public static blacklist forStopwatch(JI)Landroid/app/Notification$Metric$TimeDifference;
    .registers 9

    .line 12223
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static blacklist forStopwatch(Ljava/time/Instant;I)Landroid/app/Notification$Metric$TimeDifference;
    .registers 8

    .line 12208
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/time/Instant;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static blacklist forTimer(JI)Landroid/app/Notification$Metric$TimeDifference;
    .registers 9

    .line 12195
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static blacklist forTimer(Ljava/time/Instant;I)Landroid/app/Notification$Metric$TimeDifference;
    .registers 8

    .line 12181
    new-instance v0, Landroid/app/Notification$Metric$TimeDifference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/time/Instant;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$TimeDifference;
    .registers 10

    .line 12266
    const-string/jumbo v0, "zeroTime"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 12267
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    move-object v4, v0

    goto :goto_15

    :cond_14
    move-object v4, v2

    .line 12268
    :goto_15
    const-string/jumbo v0, "zeroElapsedRealtime"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 12269
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    goto :goto_29

    :cond_28
    move-object v5, v2

    .line 12270
    :goto_29
    const-string/jumbo v0, "pausedDuration"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 12271
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    move-object v6, v0

    goto :goto_3d

    :cond_3c
    move-object v6, v2

    .line 12272
    :goto_3d
    if-nez v4, :cond_45

    if-nez v5, :cond_45

    if-eqz v6, :cond_44

    goto :goto_45

    .line 12277
    :cond_44
    return-object v2

    .line 12273
    :cond_45
    :goto_45
    new-instance v3, Landroid/app/Notification$Metric$TimeDifference;

    .line 12274
    const-string v0, "countDown"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 12275
    const-string v0, "format"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Landroid/app/Notification$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    .line 12273
    return-object v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12297
    instance-of v0, p1, Landroid/app/Notification$Metric$TimeDifference;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    check-cast p1, Landroid/app/Notification$Metric$TimeDifference;

    .line 12298
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12299
    :cond_b
    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    iget-object v3, p1, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    iget-object v3, p1, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 12300
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    iget-object v3, p1, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    .line 12301
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-boolean v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    iget-boolean v3, p1, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    iget p1, p1, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    if-ne v2, p1, :cond_37

    move v1, v0

    goto :goto_38

    :cond_37
    nop

    .line 12299
    :goto_38
    return v1

    .line 12297
    :cond_39
    return v1
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 12397
    iget v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    return v0
.end method

.method public blacklist getPausedDuration()Ljava/time/Duration;
    .registers 2

    .line 12375
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getZeroElapsedRealtime()Ljava/lang/Long;
    .registers 2

    .line 12360
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getZeroTime()Ljava/time/Instant;
    .registers 2

    .line 12342
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 12308
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    iget-object v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    iget-boolean v3, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    .line 12309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 12308
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isStopwatch()Z
    .registers 2

    .line 12383
    iget-boolean v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isTimer()Z
    .registers 2

    .line 12391
    iget-boolean v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 5

    .line 12284
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    if-eqz v0, :cond_11

    .line 12285
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-string/jumbo v2, "zeroTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_32

    .line 12286
    :cond_11
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    if-eqz v0, :cond_22

    .line 12287
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "zeroElapsedRealtime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_32

    .line 12288
    :cond_22
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    if-eqz v0, :cond_32

    .line 12289
    iget-object v0, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const-string/jumbo v2, "pausedDuration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12291
    :cond_32
    :goto_32
    const-string v0, "countDown"

    iget-boolean v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12292
    const-string v0, "format"

    iget v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12293
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 12314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeDifference{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12315
    iget-object v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    if-eqz v1, :cond_18

    .line 12316
    const-string/jumbo v1, "mZeroTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 12317
    :cond_18
    iget-object v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    if-eqz v1, :cond_29

    .line 12318
    const-string/jumbo v1, "mZeroElapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 12319
    :cond_29
    iget-object v1, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    if-eqz v1, :cond_39

    .line 12320
    const-string/jumbo v1, "mPausedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12322
    :cond_39
    :goto_39
    const-string v1, ", mCountDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mCountDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12323
    const-string v2, ", mFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/Notification$Metric$TimeDifference;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12324
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 2

    .line 12406
    invoke-static {}, Landroid/app/Notification$Metric$MetricValue$ValueString;->-$$Nest$sfgetEMPTY()Landroid/app/Notification$Metric$MetricValue$ValueString;

    move-result-object p1

    return-object p1
.end method
