.class public interface abstract Lcom/android/server/display/BrightnessMappingStrategyStub;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategyStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/display/BrightnessMappingStrategyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategyStub;

    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public getMaxScreenNit()F
    .registers 2

    .line 20
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public abstract getMiuiMapperInstance(Landroid/hardware/display/BrightnessConfiguration;[F[FF)Lcom/android/server/display/BrightnessMappingStrategy;
.end method

.method public abstract initMiuiCurve(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V
.end method

.method public isSupportAutobrightnessByApplicationCategory()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public smoothNewCurve([F[FI)Z
    .registers 5
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public smoothNewCurveV2([F[FIZ)Landroid/util/Pair;
    .registers 6
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I
    .param p4, "curveV2Enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FIZ)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract updateUnadjustedBrightness(FFF)V
.end method
