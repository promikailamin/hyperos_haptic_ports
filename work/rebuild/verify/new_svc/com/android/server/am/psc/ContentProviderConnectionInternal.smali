.class public interface abstract Lcom/android/server/am/psc/ContentProviderConnectionInternal;
.super Ljava/lang/Object;
.source "ContentProviderConnectionInternal.java"

# interfaces
.implements Lcom/android/server/am/OomAdjusterImpl$Connection;


# virtual methods
.method public computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JLcom/android/server/am/psc/ProcessRecordInternal;ZII)V
    .registers 10

    const/4 p4, 0x0

    .line 40
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/psc/ContentProviderConnectionInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Z)Z

    return-void
.end method

.method public abstract getClient()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getProvider()Lcom/android/server/am/psc/ContentProviderRecordInternal;
.end method

.method public abstract trackProcState(II)V
.end method
