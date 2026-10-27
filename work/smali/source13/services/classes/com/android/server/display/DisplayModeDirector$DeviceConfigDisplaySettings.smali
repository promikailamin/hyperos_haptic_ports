.class Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 2690
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2691
    return-void
.end method

.method private getIntArrayProperty(Ljava/lang/String;)[I
    .registers 5
    .param p1, "prop"    # Ljava/lang/String;

    .line 2832
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2835
    .local v0, "strArray":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 2836
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 2839
    :cond_14
    return-object v2
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .registers 7
    .param p1, "strArray"    # Ljava/lang/String;

    .line 2843
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2844
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 2847
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    :try_start_a
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 2848
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_19

    .line 2847
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2853
    .end local v2    # "i":I
    :cond_18
    goto :goto_39

    .line 2850
    :catch_19
    move-exception v2

    .line 2851
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect format for array: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2852
    const/4 v1, 0x0

    .line 2855
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_39
    return-object v1
.end method


# virtual methods
.method public getDefaultPeakRefreshRate()Ljava/lang/Float;
    .registers 5

    .line 2785
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    const-string/jumbo v2, "peak_refresh_rate_default"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 2789
    .local v0, "defaultPeakRefreshRate":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_17

    .line 2790
    const/4 v1, 0x0

    return-object v1

    .line 2792
    :cond_17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getHighAmbientBrightnessThresholds()[I
    .registers 2

    .line 2741
    const-string v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getHighDisplayBrightnessThresholds()[I
    .registers 2

    .line 2732
    const-string v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLowAmbientBrightnessThresholds()[I
    .registers 2

    .line 2711
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLowDisplayBrightnessThresholds()[I
    .registers 2

    .line 2702
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRateInHbmHdr()I
    .registers 5

    .line 2771
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    .line 2772
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2774
    .local v0, "defaultRefreshRateInHbmHdr":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_hbm_hdr"

    invoke-interface {v1, v2, v3, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2778
    .local v1, "refreshRate":I
    return v1
.end method

.method public getRefreshRateInHbmSunlight()I
    .registers 5

    .line 2759
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    .line 2760
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2763
    .local v0, "defaultRefreshRateInHbmSunlight":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_hbm_sunlight"

    invoke-interface {v1, v2, v3, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2767
    .local v1, "refreshRate":I
    return v1
.end method

.method public getRefreshRateInHighZone()I
    .registers 5

    .line 2747
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2750
    .local v0, "defaultRefreshRateInZone":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_high_zone"

    invoke-interface {v1, v2, v3, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2755
    .local v1, "refreshRate":I
    return v1
.end method

.method public getRefreshRateInLowZone()I
    .registers 5

    .line 2717
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2720
    .local v0, "defaultRefreshRateInZone":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_zone"

    invoke-interface {v1, v2, v3, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2725
    .local v1, "refreshRate":I
    return v1
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 14
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2797
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v0

    .line 2798
    .local v0, "defaultPeakRefreshRate":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2799
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object v1

    .line 2802
    .local v1, "lowDisplayBrightnessThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v2

    .line 2803
    .local v2, "lowAmbientBrightnessThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result v3

    .line 2805
    .local v3, "refreshRateInLowZone":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2807
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2808
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2809
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object v4

    .line 2812
    .local v4, "highDisplayBrightnessThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v5

    .line 2813
    .local v5, "highAmbientBrightnessThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result v7

    .line 2815
    .local v7, "refreshRateInHighZone":I
    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v8

    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x6

    invoke-virtual {v8, v10, v9}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2817
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2818
    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v7, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 2819
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result v8

    .line 2822
    .local v8, "refreshRateInHbmSunlight":I
    iget-object v9, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v9}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v8, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 2824
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result v9

    .line 2827
    .local v9, "refreshRateInHbmHdr":I
    iget-object v10, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v10}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v9, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 2828
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2829
    return-void
.end method

.method public startListening()V
    .registers 4

    .line 2694
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    .line 2695
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2694
    const-string v2, "display_manager"

    invoke-interface {v0, v2, v1, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2696
    return-void
.end method
