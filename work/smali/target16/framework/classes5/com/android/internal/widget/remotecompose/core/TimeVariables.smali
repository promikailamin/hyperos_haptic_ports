.class public Lcom/android/internal/widget/remotecompose/core/TimeVariables;
.super Ljava/lang/Object;
.source "TimeVariables.java"


# instance fields
.field private blacklist mClock:Ljava/time/Clock;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>(Ljava/time/Clock;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/Clock;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->mClock:Ljava/time/Clock;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getClock()Ljava/time/Clock;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->mClock:Ljava/time/Clock;

    return-object v0
.end method

.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->mClock:Ljava/time/Clock;

    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V

    .line 101
    return-void
.end method

.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V
    .registers 15

    .line 60
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Month;->getValue()I

    move-result v0

    .line 61
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    .line 62
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v2

    .line 63
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    .line 64
    mul-int/lit8 v4, v1, 0x3c

    add-int/2addr v4, v2

    .line 65
    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v3

    .line 66
    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getNano()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    .line 67
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/DayOfWeek;->getValue()I

    move-result v5

    .line 68
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    .line 69
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v7

    .line 70
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getYear()I

    move-result v8

    .line 72
    invoke-virtual {p3, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p2

    .line 74
    invoke-virtual {p3, p2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v9

    .line 76
    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0xa

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 77
    const/4 p2, 0x1

    invoke-virtual {p1, p2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 79
    const/16 p2, 0x20

    long-to-int p3, v9

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 80
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 81
    const/4 p2, 0x3

    int-to-float p3, v4

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 82
    const/4 p2, 0x4

    int-to-float p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 83
    const/16 p2, 0x9

    int-to-float p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 84
    const/16 p2, 0xc

    int-to-float p3, v6

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 85
    const/16 p2, 0xb

    int-to-float p3, v5

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 86
    const/16 p2, 0x22

    int-to-float p3, v7

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 87
    const/16 p2, 0x23

    int-to-float p3, v8

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 89
    nop

    .line 91
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocumentApiLevel()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3dcccccd    # 0.1f

    add-float/2addr p2, p3

    .line 89
    const/16 p3, 0x1c

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 92
    return-void
.end method
