.class public abstract Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_MIN_TIME_BETWEEN_READ:J = 0x3e8L


# instance fields
.field private blacklist mLastReadTimeMs:J

.field private blacklist mMinTimeBetweenRead:J

.field final blacklist mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field final blacklist mTag:Ljava/lang/String;

.field final blacklist mThrottle:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 5
    .param p1, "reader"    # Lcom/android/internal/os/UidAppKernelProcStringReader;
    .param p2, "throttle"    # Z

    .line 61
    .local p0, "this":Lcom/android/internal/os/KernelSysAppCpuTimeReader;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mTag:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    .line 62
    iput-object p1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    .line 63
    iput-boolean p2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/internal/os/KernelSysAppCpuTimeReader;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader<TT;>;"
    .local p1, "cb":Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    if-nez v0, :cond_8

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    .line 75
    return-void

    .line 77
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    .local v0, "currTimeMs":J
    iget-wide v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    .line 82
    return-void

    .line 84
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    .line 85
    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    .line 86
    return-void
.end method

.method abstract blacklist readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public blacklist setThrottle(J)V
    .registers 5
    .param p1, "minTimeBetweenRead"    # J

    .line 95
    .local p0, "this":Lcom/android/internal/os/KernelSysAppCpuTimeReader;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 96
    iput-wide p1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    .line 98
    :cond_c
    return-void
.end method
