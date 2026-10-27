.class public interface abstract Lcom/android/server/location/gnss/GnssEventTrackingStub;
.super Ljava/lang/Object;
.source "GnssEventTrackingStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/location/gnss/GnssEventTrackingStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssEventTrackingStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract recordBlurLocationUsage(Z)V
.end method

.method public abstract recordChangeToBackground(Ljava/lang/String;ILjava/lang/String;ZZ)V
.end method

.method public abstract recordEngineUsage(IJ)V
.end method

.method public abstract recordGnssBackgroundOpt2Time()V
.end method

.method public abstract recordGnssBackgroundOpt3Time()V
.end method

.method public abstract recordGnssPowerSaveChanged(ZJ)V
.end method

.method public abstract recordMockLocationUsage(Z)V
.end method

.method public abstract recordNavAppTime(Ljava/lang/String;J)V
.end method

.method public abstract recordPPPEffectiveTimes(Ljava/lang/String;)V
.end method

.method public abstract recordRemove(Ljava/lang/String;IZZ)V
.end method

.method public abstract recordRequest(Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public abstract recordSatelliteBlockListChanged(JJLjava/lang/String;)V
.end method

.method public abstract usingBatInMockModeInterval(J)V
.end method

.method public abstract usingBatInMockModeTimes(J)V
.end method
