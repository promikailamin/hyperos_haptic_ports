.class public final Lcom/android/server/power/ScreenTimeoutConstants;
.super Ljava/lang/Object;
.source "ScreenTimeoutConstants.java"


# instance fields
.field public mAttentiveTimeoutConfig:I

.field public mAttentiveTimeoutSetting:J

.field public mMaximumScreenDimDurationConfig:J

.field public mMaximumScreenDimRatioConfig:F

.field public mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field public mMinimumScreenOffTimeoutConfig:J

.field public mScreenOffTimeoutSetting:J

.field public mSleepTimeoutSetting:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 61
    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    return-void
.end method


# virtual methods
.method public dumpsys(Ljava/io/PrintWriter;)V
    .registers 5

    .line 206
    const-string v0, "ScreenTimeoutConstants: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAttentiveTimeoutConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAttentiveTimeoutSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutSetting:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (enforced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffTimeoutSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mScreenOffTimeoutSetting:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSleepTimeoutSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mSleepTimeoutSetting:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAttentiveTimeoutConfig()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutConfig:I

    return p0
.end method

.method public getAttentiveTimeoutLocked()J
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 108
    :cond_b
    iget-wide v2, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttentiveTimeoutSettingLocked()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutSetting:J

    return-wide v0
.end method

.method public getMaximumScreenDimDurationConfig()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimDurationConfig:J

    return-wide v0
.end method

.method public getMaximumScreenDimRatioConfig()F
    .registers 1

    .line 151
    iget p0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimRatioConfig:F

    return p0
.end method

.method public getMaximumScreenOffTimeoutFromDeviceAdminLocked()J
    .registers 3

    .line 169
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    return-wide v0
.end method

.method public getMinimumScreenOffTimeoutConfigLocked()J
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMinimumScreenOffTimeoutConfig:J

    return-wide v0
.end method

.method public getScreenOffTimeoutSettingLocked()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mScreenOffTimeoutSetting:J

    return-wide v0
.end method

.method public getSleepTimeoutLocked(J)J
    .registers 8

    .line 116
    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutSettingLocked()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_d
    cmp-long v2, p1, v2

    if-ltz v2, :cond_15

    .line 121
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 123
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->getMinimumScreenOffTimeoutConfigLocked()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSleepTimeoutSettingLocked()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mSleepTimeoutSetting:J

    return-wide v0
.end method

.method public isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 5

    .line 177
    iget-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_13

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public readConfigLocked(Landroid/content/Context;)V
    .registers 4

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutConfig:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMinimumScreenOffTimeoutConfig:J

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimDurationConfig:J

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1130003

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenDimRatioConfig:F

    return-void
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdminLocked(J)V
    .registers 3

    .line 160
    iput-wide p1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    return-void
.end method

.method public updateSettingsLocked(Landroid/content/Context;)V
    .registers 6

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mScreenOffTimeoutSetting:J

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sleep_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mSleepTimeoutSetting:J

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "attentive_timeout"

    iget v1, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutConfig:I

    invoke-static {p1, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/power/ScreenTimeoutConstants;->mAttentiveTimeoutSetting:J

    return-void
.end method
