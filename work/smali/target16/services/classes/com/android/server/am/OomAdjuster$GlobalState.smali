.class public interface abstract Lcom/android/server/am/OomAdjuster$GlobalState;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# virtual methods
.method public abstract getBackupTarget(I)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getHeavyWeightProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getHomeProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getPreviousProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getShowingUiWhileDozingProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getTopProcessState()I
.end method

.method public abstract hasExpandedNotificationShade()Z
.end method

.method public abstract isAwake()Z
.end method

.method public abstract isLastMemoryLevelNormal()Z
.end method

.method public abstract isUnlocking()Z
.end method
