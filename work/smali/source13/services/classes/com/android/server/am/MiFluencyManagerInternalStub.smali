.class public interface abstract Lcom/android/server/am/MiFluencyManagerInternalStub;
.super Ljava/lang/Object;
.source "MiFluencyManagerInternalStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/MiFluencyManagerInternalStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/am/MiFluencyManagerInternalStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiFluencyManagerInternalStub;

    return-object v0
.end method


# virtual methods
.method public abstract BoostHomeProcess(Ljava/lang/String;IJ)V
.end method

.method public abstract BoostThread(IIJ)V
.end method

.method public abstract ReLimitCpu()V
.end method

.method public abstract StopBoostHomeProcess(Ljava/lang/String;I)V
.end method

.method public abstract StopBoostThread(Ljava/lang/String;II)V
.end method

.method public abstract UnlimitCpu(J)V
.end method
