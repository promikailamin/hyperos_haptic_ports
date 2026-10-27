.class public Lcom/android/internal/widget/remotecompose/core/SystemClock;
.super Lcom/android/internal/widget/remotecompose/core/RemoteClock;
.source "SystemClock.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 2

    .line 39
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nanoTime()J
    .registers 3

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 2

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
