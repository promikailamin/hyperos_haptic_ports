.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# instance fields
.field public final mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDeviceConfigListeners:Ljava/util/List;

.field public final mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mDisplayDeviceDataListeners:Ljava/util/List;

.field public mDisplayState:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mExternalBrightnessModifier:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

.field public final mHandler:Landroid/os/Handler;

.field public final mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field public final mModifiers:Ljava/util/List;

.field public mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

.field public final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public volatile mStarted:Z

.field public final mStatefulModifiers:Ljava/util/List;

.field public final mUserSwitchListeners:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$KW1PfQkggty-OpDV9NTT8OvIsEM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;)V
    .registers 2

    .line 235
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;->applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O_Db3R5ZOThySPed3NrXWlnzByY(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0jhELYM8iAkhQZTlgzlCemCYMI(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbHQs2xcCeL-ihfZ8Z3AiRG97qA(Landroid/util/IndentingPrintWriter;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .registers 2

    .line 199
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_99BYE4X6wh_0QCNX7YtZRRi0qQ(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->recalculateModifiersState()V

    return-void
.end method

.method public static synthetic $r8$lambda$lZbkd5dSsq5LPeOklHPm2wOksTM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTdg2EEUse8KZfVRspHss_Ie-xA(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;)V
    .registers 2

    .line 159
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmModifiers(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)V
    .registers 19

    .line 97
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)V
    .registers 19

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 83
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 106
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 107
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    .line 108
    invoke-virtual {p1, v1, p5, v0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getLightSensorController(Landroid/hardware/SensorManager;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/LightSensorController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    .line 111
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 112
    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 114
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 115
    new-instance v6, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V

    move-object v1, p1

    move-object v5, p2

    move-object v7, p4

    move-object v3, p5

    move-object v2, p6

    move-object/from16 v4, p8

    move/from16 v8, p9

    .line 121
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getModifiers(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/plugin/PluginManager;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;F)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 124
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 147
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 150
    invoke-virtual {p4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->start()V

    return-void
.end method


# virtual methods
.method public final adjustLightSensorSubscription()V
    .registers 3

    .line 268
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;-><init>()V

    .line 269
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 270
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->restart()V

    return-void

    .line 272
    :cond_1c
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    return-void
.end method

.method public clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;
    .registers 6

    .line 170
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 171
    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1, p4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 174
    invoke-virtual {p1, p3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    const/4 p3, 0x0

    .line 178
    :goto_10
    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_26

    .line 179
    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-interface {p4, p2, p1}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    .line 182
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 196
    const-string v0, "BrightnessClamperController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getMaxBrightness()F
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    return p0
.end method

.method public getMinBrightness()F
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    return p0
.end method

.method public isThrottled()Z
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 3

    .line 116
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 117
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .registers 4

    .line 126
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    .line 127
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_c
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    .line 130
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_18
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    .line 133
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_24
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    .line 136
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_30
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    if-eqz v0, :cond_45

    .line 139
    check-cast p1, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    .line 140
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExternalBrightnessModifier:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    if-nez v0, :cond_3d

    .line 144
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExternalBrightnessModifier:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    return-void

    .line 141
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot have more than one external brightness cap modifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    return-void
.end method

.method public final synthetic lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z
    .registers 4

    .line 245
    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_3f

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 247
    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_3f

    iget-object p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    iget-object v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    if-ne p0, v0, :cond_3f

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mHdrRatioScaleFactor:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mHdrRatioScaleFactor:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_3f

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-ne p0, v0, :cond_3f

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 252
    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_3f

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    iget p1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    .line 254
    invoke-static {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    return-void
.end method

.method public onUserSwitch()V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final recalculateModifiersState()V
    .registers 4

    .line 234
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 238
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 240
    :cond_1c
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    return-void
.end method

.method public setBrightnessCap(FI)V
    .registers 3

    .line 284
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExternalBrightnessModifier:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    if-eqz p0, :cond_8

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->setBrightnessCap(FI)V

    return-void

    .line 287
    :cond_8
    const-string p0, "BrightnessClamperController"

    const-string p1, "Unable to set brightness cap"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final start()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 260
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 263
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 208
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 211
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
