.class Lcom/android/server/display/BrightnessThrottler;
.super Ljava/lang/Object;
.source "BrightnessThrottler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessThrottler$Injector;,
        Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessThrottler"

.field private static final THROTTLING_INVALID:I = -0x1


# instance fields
.field private mBrightnessCap:F

.field private mBrightnessMaxReason:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field private final mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

.field private final mThrottlingChangeCallback:Ljava/lang/Runnable;

.field private mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

.field private mThrottlingStatus:I


# direct methods
.method static bridge synthetic -$$Nest$mthermalStatusChanged(Lcom/android/server/display/BrightnessThrottler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->thermalStatusChanged(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "throttlingData"    # Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .param p3, "throttlingChangeCallback"    # Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/android/server/display/BrightnessThrottler$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessThrottler$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/BrightnessThrottler;-><init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/display/BrightnessThrottler$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "throttlingData"    # Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .param p4, "throttlingChangeCallback"    # Ljava/lang/Runnable;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 62
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 65
    iput-object p4, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessThrottler;->resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V

    .line 69
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 174
    const-string v0, "BrightnessThrottler:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMaxReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 179
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    .line 182
    return-void
.end method

.method private thermalStatusChanged(I)V
    .registers 3
    .param p1, "newStatus"    # I

    .line 126
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-eq v0, p1, :cond_9

    .line 127
    iput p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 128
    invoke-direct {p0}, Lcom/android/server/display/BrightnessThrottler;->updateThrottling()V

    .line 130
    :cond_9
    return-void
.end method

.method private updateThrottling()V
    .registers 7

    .line 133
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    return-void

    .line 137
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    .local v0, "brightnessCap":F
    const/4 v1, 0x0

    .line 140
    .local v1, "brightnessMaxReason":I
    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 142
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 143
    .local v3, "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    iget v4, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v5, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-gt v4, v5, :cond_2d

    .line 144
    iget v0, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    .line 145
    const/4 v1, 0x1

    .line 150
    .end local v3    # "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    goto :goto_17

    .line 153
    :cond_2d
    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_37

    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eq v2, v1, :cond_46

    .line 154
    :cond_37
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessThrottler;->verifyAndConstrainBrightnessCap(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 155
    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 163
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_46

    .line 164
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 167
    :cond_46
    return-void
.end method

.method private verifyAndConstrainBrightnessCap(F)F
    .registers 7
    .param p1, "brightness"    # F

    .line 110
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "brightness "

    const-string v3, "BrightnessThrottler"

    if-gez v1, :cond_28

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is lower than the minimum possible brightness "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 p1, 0x0

    .line 116
    :cond_28
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_4e

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is higher than the maximum possible brightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/high16 p1, 0x3f800000    # 1.0f

    .line 122
    :cond_4e
    return p1
.end method


# virtual methods
.method deviceSupportsThrottling()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 170
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessThrottler;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method getBrightnessCap()F
    .registers 2

    .line 76
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    return v0
.end method

.method getBrightnessMaxReason()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    return v0
.end method

.method isThrottled()Z
    .registers 2

    .line 84
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$dump$0$com-android-server-display-BrightnessThrottler(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V
    .registers 3
    .param p1, "throttlingData"    # Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    .line 102
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 104
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->startObserving()V

    .line 107
    :cond_10
    return-void
.end method

.method stop()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 98
    return-void
.end method
