.class public interface abstract Lcom/android/internal/os/BatteryStatsManagerStub;
.super Ljava/lang/Object;
.source "BatteryStatsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;
    }
.end annotation


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/os/BatteryStatsManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/android/internal/os/BatteryStatsManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsManagerStub;

    sput-object v0, Lcom/android/internal/os/BatteryStatsManagerStub;->sInstance:Lcom/android/internal/os/BatteryStatsManagerStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/os/BatteryStatsManagerStub;->sInstance:Lcom/android/internal/os/BatteryStatsManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getAppScreenInfo(Lcom/android/internal/os/BatteryStatsImpl;J)[B
.end method

.method public blacklist getBacklightLevel(I)I
    .registers 3
    .param p1, "brightness"    # I

    .line 40
    div-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public abstract blacklist getDefaultDataSlotId()I
.end method

.method public blacklist getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    return-object p1
.end method

.method public abstract blacklist getTargetScreenInfo(Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl;J)[B
.end method

.method public blacklist noteActivityPausedLocked(IJJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 54
    return-void
.end method

.method public blacklist noteActivityResumedLocked(Lcom/android/internal/os/BatteryStatsImpl;IJJLjava/lang/String;)V
    .registers 8
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J
    .param p7, "packageName"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public abstract blacklist noteAudioOffLocked(I)V
.end method

.method public abstract blacklist noteAudioOnLocked(I)V
.end method

.method public abstract blacklist noteResetAudioLocked()V
.end method

.method public blacklist noteScreenBrightnessLocked(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V
    .registers 7
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "bin"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .line 55
    return-void
.end method

.method public abstract blacklist noteStartGpsLocked(I)V
.end method

.method public abstract blacklist noteStopGpsLocked(I)V
.end method

.method public abstract blacklist noteSyncStart(Ljava/lang/String;IZ)V
.end method

.method public abstract blacklist noteVideoFps(II)V
.end method

.method public abstract blacklist notifyDetailsWakeUp(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract blacklist notifyWakeUp(Ljava/lang/String;)V
.end method

.method public abstract blacklist readFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V
.end method

.method public abstract blacklist readSummaryFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V
.end method

.method public abstract blacklist resetAllStatsLocked(JJ)V
.end method

.method public abstract blacklist setActiveCallback(Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;)V
.end method

.method public abstract blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
.end method

.method public abstract blacklist writeToParcelLocked(Landroid/os/Parcel;J)V
.end method
