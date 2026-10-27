.class public Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "BrightnessLowLuxModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientLux:F

.field public mBrightnessLowerBound:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public mMinNitsAllowed:F

.field public mReason:I


# direct methods
.method public static synthetic $r8$lambda$mrxB_EUddprBtF8zJnmcOsbhhrA(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "BrightnessLowLuxModifier"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 66
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 69
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .registers 4

    .line 159
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMinBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 160
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 161
    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 162
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 163
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 165
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    :cond_2f
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .registers 3

    .line 171
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    cmpg-float v0, v0, p0

    if-gez v0, :cond_a

    .line 172
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    :cond_a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 192
    const-string v0, "BrightnessLowLuxModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinNitsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .registers 3

    .line 148
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessLowerBound()F
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    return p0
.end method

.method public getBrightnessReason()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public getModifier()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public isActive()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->start()V

    return-void
.end method

.method public onSwitchUser()V
    .registers 1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public recalculateLowerBound()V
    .registers 6

    .line 80
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v3

    :goto_c
    if-eqz v2, :cond_22

    .line 87
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getMinNitsFromLux(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    .line 88
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->getBrightnessFromNits(F)F

    move-result v0

    const/16 v3, 0x10

    goto :goto_28

    .line 92
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getEvenDimmerTransitionPoint()F

    move-result v0

    .line 96
    :goto_28
    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_38

    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    if-ne v4, v3, :cond_38

    iget-boolean v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    if-eq v4, v2, :cond_37

    goto :goto_38

    :cond_37
    return-void

    .line 99
    :cond_38
    :goto_38
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 100
    iput v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 101
    sget-boolean v3, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    if-eqz v3, :cond_7a

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minBrightnessAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientLux: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minNitsAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessLowLuxModifier"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_7a
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    .line 110
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 111
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public setAmbientLux(F)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .registers 2

    .line 142
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public shouldListenToLightSensor()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .registers 1

    .line 137
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 0
    return-void
.end method
