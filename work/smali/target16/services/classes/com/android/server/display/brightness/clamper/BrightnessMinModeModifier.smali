.class public Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;
.super Ljava/lang/Object;
.source "BrightnessMinModeModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$lIhrcpu9DMfAexoOwZF0c1xMYL0(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;)V
    .registers 11

    .line 58
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;)V
    .registers 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mIsActive:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mApplied:Z

    .line 68
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 70
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mContext:Landroid/content/Context;

    .line 71
    invoke-interface {p5}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;->getBrightnessMinModeCap()F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    .line 72
    new-instance p4, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;

    invoke-direct {p4, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 85
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;->registerMinModeSettingObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .registers 5

    .line 93
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mIsActive:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2e

    .line 94
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 95
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    const/4 p1, 0x5

    .line 96
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 99
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mApplied:Z

    if-nez p1, :cond_2a

    .line 100
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    :cond_2a
    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mApplied:Z

    return-void

    .line 104
    :cond_2e
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mApplied:Z

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .registers 3

    .line 149
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mIsActive:Z

    if-eqz v0, :cond_11

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_11

    .line 150
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x5

    .line 151
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_11
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 115
    const-string v0, "BrightnessMinModeModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mApplied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 138
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getBrightnessMinModeCap()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mBrightnessCap:F

    .line 139
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAmbientLux(F)V
    .registers 2

    .line 0
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
