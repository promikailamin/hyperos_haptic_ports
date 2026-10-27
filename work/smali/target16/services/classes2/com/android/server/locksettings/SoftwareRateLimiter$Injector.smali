.class public interface abstract Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;
.super Ljava/lang/Object;
.source "SoftwareRateLimiter.java"


# virtual methods
.method public abstract getHardwareRateLimiter(Lcom/android/server/locksettings/LskfIdentifier;)I
.end method

.method public abstract getTimeSinceBoot()Ljava/time/Duration;
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
.end method

.method public abstract readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
.end method

.method public abstract writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;I)V
.end method
