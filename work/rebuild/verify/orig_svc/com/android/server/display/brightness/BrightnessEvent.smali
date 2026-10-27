.class public final Lcom/android/server/display/brightness/BrightnessEvent;
.super Ljava/lang/Object;
.source "BrightnessEvent.java"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mAdjustmentFlags:I

.field public mAutoBrightnessMode:I

.field public mAutomaticBrightnessEnabled:Z

.field public mBrightness:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mDisplayId:I

.field public mDisplayPolicy:I

.field public mDisplayState:I

.field public mDisplayStateReason:I

.field public mFlags:I

.field public mHbmMax:F

.field public mHbmMode:I

.field public mHdrBrightness:F

.field public mHdrNits:F

.field public mInitialBrightness:F

.field public mLastReadLux:F

.field public mLux:F

.field public mNits:F

.field public mPercent:F

.field public mPhysicalDisplayId:Ljava/lang/String;

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public mPowerFactor:F

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mRampSpeed:F

.field public mRbcStrength:I

.field public mReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mRecommendedBrightness:F

.field public mSlowChange:Z

.field public mThermalMax:F

.field public mTime:J

.field public mUnclampedBrightness:F

.field public mWasShortTermModelActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 93
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 105
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    .line 107
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 108
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 109
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 110
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 112
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 113
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPreThresholdLux()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 114
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    .line 115
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getNits()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 116
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHdrNits()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    .line 117
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPercent()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    .line 119
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 120
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 121
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHdrBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    .line 122
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getUnclampedBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 123
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRecommendedBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 124
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPreThresholdBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 126
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 127
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 128
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 129
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 130
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 131
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 132
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 133
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getAdjustmentFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 135
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 136
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 137
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 138
    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    .line 139
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    if-ne v0, v1, :cond_122

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 204
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 205
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 206
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 207
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    .line 208
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    .line 212
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    .line 213
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 214
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 215
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 216
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 217
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 218
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 221
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 223
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 224
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 225
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 226
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_122

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    if-ne v0, v1, :cond_122

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    if-ne v0, v1, :cond_122

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    if-ne v0, v1, :cond_122

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    if-ne p0, p1, :cond_122

    const/4 p0, 0x1

    return p0

    :cond_122
    const/4 p0, 0x0

    return p0
.end method

.method public flagsToString()Ljava/lang/String;
    .registers 4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    const-string v2, ""

    if-eqz v1, :cond_11

    const-string/jumbo v1, "user_set "

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "rbc "

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2c

    const-string v1, "invalid_lux "

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_39

    const-string v1, "doze_scale "

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_47

    const-string/jumbo v1, "low_power_mode "

    goto :goto_48

    :cond_47
    move-object v1, v2

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_53

    const-string v2, "even_dimmer "

    :cond_53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdjustmentFlags()I
    .registers 1

    .line 500
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    return p0
.end method

.method public getAutoBrightnessMode()I
    .registers 1

    .line 525
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    return p0
.end method

.method public getBrightness()F
    .registers 1

    .line 367
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    return p0
.end method

.method public getFlags()I
    .registers 1

    .line 492
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    return p0
.end method

.method public getHbmMax()F
    .registers 1

    .line 438
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    return p0
.end method

.method public getHbmMode()I
    .registers 1

    .line 430
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    return p0
.end method

.method public getHdrBrightness()F
    .registers 1

    .line 375
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    return p0
.end method

.method public getHdrNits()F
    .registers 1

    .line 410
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    return p0
.end method

.method public getInitialBrightness()F
    .registers 1

    .line 359
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    return p0
.end method

.method public getLux()F
    .registers 1

    .line 339
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    return p0
.end method

.method public getNits()F
    .registers 1

    .line 402
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    return p0
.end method

.method public getPercent()F
    .registers 1

    .line 394
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    return p0
.end method

.method public getPhysicalDisplayId()Ljava/lang/String;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhysicalDisplayName()Ljava/lang/String;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerFactor()F
    .registers 1

    .line 466
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    return p0
.end method

.method public getPreThresholdBrightness()F
    .registers 1

    .line 422
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    return p0
.end method

.method public getPreThresholdLux()F
    .registers 1

    .line 351
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    return p0
.end method

.method public getRbcStrength()I
    .registers 1

    .line 446
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    return p0
.end method

.method public getReason()Lcom/android/server/display/brightness/BrightnessReason;
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getRecommendedBrightness()F
    .registers 1

    .line 414
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    return p0
.end method

.method public getThermalMax()F
    .registers 1

    .line 458
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    return p0
.end method

.method public getTime()J
    .registers 3

    .line 295
    iget-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    return-wide v0
.end method

.method public getUnclampedBrightness()F
    .registers 1

    .line 383
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    return p0
.end method

.method public isAutomaticBrightnessEnabled()Z
    .registers 1

    .line 508
    iget-boolean p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    return p0
.end method

.method public isLowPowerModeSet()Z
    .registers 1

    .line 474
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isRbcEnabled()Z
    .registers 2

    .line 454
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 5

    .line 146
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 150
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 151
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 152
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 154
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    const/4 v3, 0x0

    .line 155
    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 156
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    .line 157
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 158
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    .line 159
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 161
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 162
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 163
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    .line 164
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 165
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 166
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 168
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 170
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 171
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 172
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 173
    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 174
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 175
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    const/4 v2, 0x1

    .line 177
    iput-boolean v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 178
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 179
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 180
    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    .line 181
    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public setAdjustmentFlags(I)V
    .registers 2

    .line 504
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    return-void
.end method

.method public setAutoBrightnessMode(I)V
    .registers 2

    .line 530
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    return-void
.end method

.method public setAutomaticBrightnessEnabled(Z)V
    .registers 2

    .line 520
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    return-void
.end method

.method public setBrightness(F)V
    .registers 2

    .line 371
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return-void
.end method

.method public setDisplayBrightnessStrategyName(Ljava/lang/String;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayPolicy(I)V
    .registers 2

    .line 335
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    return-void
.end method

.method public setDisplayState(I)V
    .registers 2

    .line 327
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    return-void
.end method

.method public setDisplayStateReason(I)V
    .registers 2

    .line 331
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    .line 496
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    return-void
.end method

.method public setHbmMax(F)V
    .registers 2

    .line 442
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    return-void
.end method

.method public setHbmMode(I)V
    .registers 2

    .line 434
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    return-void
.end method

.method public setHdrBrightness(F)V
    .registers 2

    .line 379
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    return-void
.end method

.method public setHdrNits(F)V
    .registers 2

    .line 406
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    return-void
.end method

.method public setInitialBrightness(F)V
    .registers 2

    .line 363
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    return-void
.end method

.method public setLastReadLux(F)V
    .registers 2

    .line 347
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    return-void
.end method

.method public setLux(F)V
    .registers 2

    .line 343
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    return-void
.end method

.method public setNits(F)V
    .registers 2

    .line 398
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    return-void
.end method

.method public setPercent(F)V
    .registers 2

    .line 391
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    return-void
.end method

.method public setPhysicalDisplayId(Ljava/lang/String;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    return-void
.end method

.method public setPhysicalDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setPowerFactor(F)V
    .registers 2

    .line 470
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    return-void
.end method

.method public setPreThresholdBrightness(F)V
    .registers 2

    .line 426
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    return-void
.end method

.method public setPreThresholdLux(F)V
    .registers 2

    .line 355
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    return-void
.end method

.method public setRampSpeed(F)V
    .registers 2

    .line 538
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public setRbcStrength(I)V
    .registers 2

    .line 450
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    return-void
.end method

.method public setReason(Lcom/android/server/display/brightness/BrightnessReason;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-void
.end method

.method public setRecommendedBrightness(F)V
    .registers 2

    .line 418
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    return-void
.end method

.method public setSlowChange(Z)V
    .registers 2

    .line 534
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 299
    iput-wide p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    return-void
.end method

.method public setUnclampedBrightness(F)V
    .registers 2

    .line 387
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    return-void
.end method

.method public setWasShortTermModelActive(Z)Z
    .registers 2

    .line 481
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 9

    .line 242
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    .line 243
    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    if-eqz p1, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_30
    move-object p1, v2

    :goto_31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: brt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 246
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_47

    const-string p1, "(user_set)"

    goto :goto_48

    :cond_47
    move-object p1, v2

    :goto_48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "%)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v3, ")"

    const-string v4, "(hdr="

    if-eqz v0, :cond_62

    move-object v5, v2

    goto :goto_76

    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_76
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nits="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_87

    move-object v0, v2

    goto :goto_9b

    .line 248
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHdrNits:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lux="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 250
    invoke-virtual {v0, v3}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", strat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 252
    invoke-static {v0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", stateReason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 253
    invoke-static {v0}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", policy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 254
    invoke-static {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flags="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", initBrt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rcmdBrt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", preBrt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", preLux="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_13b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", lastReadLux="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLastReadLux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_13b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wasShortTermModelActive="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", autoBrightness="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 265
    invoke-static {v0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), unclampedBrt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", hbmMax="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", hbmMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 269
    invoke-static {v0}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", thrmMax="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rbcStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", powerFactor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", physDisp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), logicalId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slowChange="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rampSpeed="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wasShortTermModelActive()Z
    .registers 1

    .line 488
    iget-boolean p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    return p0
.end method
