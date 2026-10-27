.class public interface abstract Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;
.super Ljava/lang/Object;
.source "GnssForTelcelCustomStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public isCmtHasPermission()Z
    .registers 2

    .line 21
    const/4 v0, 0x0

    return v0
.end method
