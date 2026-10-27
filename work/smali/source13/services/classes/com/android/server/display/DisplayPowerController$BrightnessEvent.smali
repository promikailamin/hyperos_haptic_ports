.class Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessEvent"
.end annotation


# static fields
.field static final FLAG_DOZE_SCALE:I = 0x3

.field static final FLAG_INVALID_LUX:I = 0x2

.field static final FLAG_RBC:I = 0x1

.field static final FLAG_USER_SET:I = 0x4


# instance fields
.field public adjustmentFlags:I

.field public brightness:F

.field public displayId:I

.field public flags:I

.field public hbmMax:F

.field public hbmMode:I

.field public lux:F

.field public preThresholdBrightness:F

.field public preThresholdLux:F

.field public final reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field public recommendedBrightness:F

.field public thermalMax:F

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field public time:J


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "displayId"    # I

    .line 3103
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3084
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3104
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    .line 3105
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reset()V

    .line 3106
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "that"    # Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 3099
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3084
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3100
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    .line 3101
    return-void
.end method

.method private flagsToString()Ljava/lang/String;
    .registers 4

    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, ""

    if-eqz v1, :cond_11

    const-string/jumbo v1, "user_set "

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3184
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "rbc "

    goto :goto_21

    :cond_20
    move-object v1, v2

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3185
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "invalid_lux "

    goto :goto_30

    :cond_2f
    move-object v1, v2

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3186
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_3c

    const-string v2, "doze_scale "

    :cond_3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3183
    return-object v0
.end method


# virtual methods
.method copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .registers 4
    .param p1, "that"    # Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 3109
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    .line 3110
    iget-wide v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    .line 3111
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 3112
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 3113
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 3114
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 3115
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 3116
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 3117
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 3118
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 3119
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 3120
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 3121
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 3122
    return-void
.end method

.method equalsMainData(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)Z
    .registers 4
    .param p1, "that"    # Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 3142
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 3143
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 3144
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 3145
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 3146
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 3147
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 3148
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 3149
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 3150
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 3151
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 3152
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 3154
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 3155
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3158
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    goto :goto_87

    :cond_86
    const/4 v0, 0x0

    .line 3142
    :goto_87
    return v0
.end method

.method reset()V
    .registers 4

    .line 3125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    .line 3126
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 3127
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 3128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 3129
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 3130
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 3131
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 3132
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 3133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 3134
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 3135
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 3136
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 3137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 7
    .param p1, "includeTime"    # Z

    .line 3162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_23
    move-object v2, v1

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "BrightnessEvent: disp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", brt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3165
    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_48

    const-string v1, "(user_set)"

    :cond_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcmdBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hbmMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 3171
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thrmMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3173
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 3174
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3162
    return-object v0
.end method
