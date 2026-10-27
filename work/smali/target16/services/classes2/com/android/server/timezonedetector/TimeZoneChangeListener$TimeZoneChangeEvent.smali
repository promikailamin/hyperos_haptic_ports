.class public Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
.super Ljava/lang/Object;
.source "TimeZoneChangeListener.java"


# instance fields
.field public final mCause:Ljava/lang/String;

.field public final mElapsedRealtimeMillis:J

.field public final mNewConfidence:I

.field public final mNewZoneId:Ljava/lang/String;

.field public final mOldConfidence:I

.field public final mOldZoneId:Ljava/lang/String;

.field public final mOrigin:I

.field public final mUnixEpochTimeMillis:J

.field public final mUserId:I


# direct methods
.method public constructor <init>(JJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 12

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    .line 61
    iput-wide p3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    .line 62
    iput p5, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    .line 63
    iput p6, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    .line 64
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    .line 65
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    .line 66
    iput p9, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    .line 67
    iput p10, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    .line 68
    invoke-static {p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p11, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    instance-of v1, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    check-cast p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 141
    iget-wide v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    iget-wide v5, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_52

    iget-wide v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_52

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    iget v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    if-ne v1, v3, :cond_52

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    iget v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    if-ne v1, v3, :cond_52

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    .line 145
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    .line 146
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    iget v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    if-ne v1, v3, :cond_52

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    iget v3, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    if-ne v1, v3, :cond_52

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    .line 149
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    return v0

    :cond_52
    return v2
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public getNewConfidence()I
    .registers 1

    .line 105
    iget p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    return p0
.end method

.method public getNewZoneId()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getOldConfidence()I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    return p0
.end method

.method public getOldZoneId()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    return p0
.end method

.method public getUnixEpochTimeMillis()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .registers 12

    .line 156
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    .line 156
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneChangeEvent{mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUnixEpochTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOldZoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNewZoneId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOldConfidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldConfidence:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNewConfidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCause=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
