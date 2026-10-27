.class public interface abstract Lcom/android/server/location/gnss/hal/GnssScoringModelStub;
.super Ljava/lang/Object;
.source "GnssScoringModelStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/hal/GnssScoringModelStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Z)V
.end method

.method public abstract reportSvStatus2Score([F)V
.end method

.method public abstract startScoringModel(Z)V
.end method

.method public abstract updateFixTime(J)V
.end method
