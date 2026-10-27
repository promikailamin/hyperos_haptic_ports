.class public interface abstract Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;
.super Ljava/lang/Object;
.source "BatteryStatsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActiveCallback"
.end annotation


# virtual methods
.method public abstract blacklist noteAudioOffLocked(I)V
.end method

.method public abstract blacklist noteAudioOnLocked(I)V
.end method

.method public abstract blacklist noteResetAudioLocked()V
.end method

.method public abstract blacklist noteStartGpsLocked(I)V
.end method

.method public abstract blacklist noteStopGpsLocked(I)V
.end method
