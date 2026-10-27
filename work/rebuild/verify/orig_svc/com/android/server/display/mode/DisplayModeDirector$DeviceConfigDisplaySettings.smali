.class public Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$4IM44pR3egbsLgKCJgtproSJ4HU(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->lambda$getRefreshRateInHbmHdr$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UjQJH7qg8DdCnUYR-DTJghZFPuQ(Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 1

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    return p0
.end method

.method public static synthetic $r8$lambda$Zlf8FUrJAId9oJETwAtYDKb3u9M(Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 1

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    return p0
.end method

.method public static synthetic $r8$lambda$p85UmY-pmP6AkHPGqUwdtsPukFw(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->lambda$getRefreshRateInHbmSunlight$2()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetRefreshRateInHbmHdr(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetRefreshRateInHbmSunlight(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .registers 2

    .line 3028
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    return-void
.end method


# virtual methods
.method public final getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I
    .registers 6

    const/4 v0, -0x1

    .line 3056
    :try_start_1
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move p1, v0

    :goto_7
    if-ne p1, v0, :cond_20

    if-nez p4, :cond_1b

    .line 3062
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_19
    move p1, p0

    goto :goto_20

    .line 3063
    :cond_1b
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    goto :goto_19

    :cond_20
    :goto_20
    return p1
.end method

.method public final getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 5

    .line 3035
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    const v2, 0x10e0080

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public final getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I
    .registers 5

    .line 3044
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    const v2, 0x10e0081

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getRefreshRateInHbmHdr$0()I
    .registers 1

    .line 3036
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHbmHdr()I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getRefreshRateInHbmSunlight$2()I
    .registers 1

    .line 3045
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHbmSunlight()I

    move-result p0

    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 3070
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result p1

    .line 3071
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_18

    const/4 p1, 0x0

    goto :goto_1c

    .line 3072
    :cond_18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1c
    const/4 v1, 0x3

    .line 3071
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3072
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3074
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 3075
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 3076
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3077
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object v0

    .line 3078
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result v1

    .line 3080
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3082
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3084
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3085
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3087
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 3088
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 3089
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3090
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object v0

    .line 3091
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result v1

    .line 3093
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3095
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3097
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3098
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3100
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3101
    :try_start_aa
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 3102
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result v0

    .line 3103
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3107
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 3108
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result v0

    .line 3109
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3110
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3111
    monitor-exit p1

    return-void

    :catchall_dd
    move-exception p0

    monitor-exit p1
    :try_end_df
    .catchall {:try_start_aa .. :try_end_df} :catchall_dd

    throw p0
.end method

.method public startListening()V
    .registers 3

    .line 3030
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3031
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3030
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
