.class public Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;
.super Ljava/lang/Object;
.source "ExternalBrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# static fields
.field public static final TAG:Ljava/lang/String; = "ExternalBrightnessModifier"


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mBrightnessCapMap:Ljava/util/Map;

.field public mBrightnessCapReason:I

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mHandler:Landroid/os/Handler;

.field public mStopped:Z


# direct methods
.method public static synthetic $r8$lambda$1WBTU1BaKOJ1fbzMTLRTm22f_tk(Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;IF)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->lambda$setBrightnessCap$0(IF)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    .line 48
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mApplied:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mStopped:Z

    .line 53
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .registers 5

    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->shouldApplyCap()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3a

    .line 63
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 64
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 65
    iget p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 66
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 69
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mApplied:Z

    if-nez p1, :cond_36

    .line 70
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    :cond_36
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mApplied:Z

    return-void

    .line 74
    :cond_3a
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mApplied:Z

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .registers 4

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->shouldApplyCap()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 119
    iput v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 120
    iget p0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 85
    const-string v0, "BrightnessExternalModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 88
    const-string/jumbo v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}:"

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    .line 91
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 94
    :cond_44
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBrightnessCapMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCapReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mStopped:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$setBrightnessCap$0(IF)V
    .registers 6

    .line 136
    iget v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    .line 137
    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    .line 138
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->reconfigureBrightnessCap()V

    .line 140
    iget p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_20

    iget p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    if-eq v1, p1, :cond_1f

    goto :goto_20

    :cond_1f
    return-void

    .line 141
    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public final reconfigureBrightnessCap()V
    .registers 7

    .line 149
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 150
    iget-object v5, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v5, v3, v1

    if-gez v5, :cond_d

    move v1, v3

    move v2, v4

    goto :goto_d

    .line 157
    :cond_30
    iput v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    .line 158
    iput v2, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCapReason:I

    return-void
.end method

.method public setAmbientLux(F)V
    .registers 2

    .line 0
    return-void
.end method

.method public setBrightnessCap(FI)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_17

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_17

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 130
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad value for cap: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final shouldApplyCap()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mStopped:Z

    if-nez v0, :cond_e

    iget p0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mBrightnessCap:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public shouldListenToLightSensor()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->mStopped:Z

    return-void
.end method
