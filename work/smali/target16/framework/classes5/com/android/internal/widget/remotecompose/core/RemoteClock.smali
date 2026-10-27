.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteClock;
.super Ljava/time/Clock;
.source "RemoteClock.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    return-void
.end method

.method public static blacklist nanoTime(Ljava/time/Clock;)J
    .registers 3

    .line 35
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteClock;

    if-eqz v0, :cond_b

    .line 36
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/RemoteClock;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 38
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract blacklist nanoTime()J
.end method
