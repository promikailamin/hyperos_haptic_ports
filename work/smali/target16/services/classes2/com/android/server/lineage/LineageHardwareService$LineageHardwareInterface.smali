.class public interface abstract Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;
.super Ljava/lang/Object;
.source "LineageHardwareService.java"


# virtual methods
.method public abstract get(I)Z
.end method

.method public abstract getColorBalance()I
.end method

.method public abstract getColorBalanceMax()I
.end method

.method public abstract getColorBalanceMin()I
.end method

.method public abstract getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
.end method

.method public abstract getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
.end method

.method public abstract getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
.end method

.method public abstract getDisplayColorCalibration()[I
.end method

.method public abstract getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;
.end method

.method public abstract getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
.end method

.method public abstract getPictureAdjustmentRanges()Ljava/util/List;
.end method

.method public abstract getSupportedFeatures()I
.end method

.method public abstract isSunlightEnhancementSelfManaged()Z
.end method

.method public abstract requireAdaptiveBacklightForSunlightEnhancement()Z
.end method

.method public abstract set(IZ)Z
.end method

.method public abstract setColorBalance(I)Z
.end method

.method public abstract setDisplayColorCalibration([I)Z
.end method

.method public abstract setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z
.end method

.method public abstract setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
.end method
