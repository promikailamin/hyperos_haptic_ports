.class public Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "ScreenUndimDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ScreenUndimDetector$InternalClock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_KEEP_SCREEN_ON_ENABLED:Z = false

.field static final DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

.field static final DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

.field static final DEFAULT_UNDIMS_REQUIRED:I = 0x2

.field static final KEY_KEEP_SCREEN_ON_ENABLED:Ljava/lang/String; = "keep_screen_on_enabled"

.field static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"

.field static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"

.field static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"

.field private static final OUTCOME_POWER_BUTTON:I = 0x1

.field private static final OUTCOME_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenUndimDetector"

.field private static final UNDIM_DETECTOR_WAKE_LOCK:Ljava/lang/String; = "UndimDetectorWakeLock"


# instance fields
.field private mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

.field mCurrentScreenPolicy:I

.field private mInteractionAfterUndimTime:J

.field private mKeepScreenOnEnabled:Z

.field private mKeepScreenOnForMillis:J

.field private mMaxDurationBetweenUndimsMillis:J

.field mUndimCounter:I

.field mUndimCounterStartedMillis:J

.field private mUndimOccurredTime:J

.field private mUndimsRequired:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 96
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 100
    new-instance v0, Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-direct {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    .line 101
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ScreenUndimDetector$InternalClock;)V
    .registers 4
    .param p1, "clock"    # Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 96
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 104
    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    .line 105
    return-void
.end method

.method private checkAndLogUndim(I)V
    .registers 12
    .param p1, "outcome"    # I

    .line 292
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 293
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    .line 294
    .local v0, "now":J
    const/16 v4, 0x16d

    iget-wide v5, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    sub-long v6, v0, v5

    .line 298
    iget-wide v8, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    cmp-long v5, v8, v2

    if-eqz v5, :cond_1d

    sub-long v8, v0, v8

    goto :goto_1e

    :cond_1d
    move-wide v8, v2

    .line 294
    :goto_1e
    move v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 300
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 301
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 303
    .end local v0    # "now":J
    :cond_26
    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceConfigChange; key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenUndimDetector"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7a

    :cond_31
    goto :goto_5b

    :sswitch_32
    const-string/jumbo v4, "max_duration_between_undims_millis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v2, 0x3

    goto :goto_5b

    :sswitch_3d
    const-string v4, "keep_screen_on_for_millis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v2, 0x1

    goto :goto_5b

    :sswitch_47
    const-string v4, "keep_screen_on_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v2, 0x0

    goto :goto_5b

    :sswitch_51
    const-string/jumbo v4, "undims_required"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v2, 0x2

    :goto_5b
    packed-switch v2, :pswitch_data_8c

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_4

    .line 249
    .restart local v1    # "key":Ljava/lang/String;
    :pswitch_75
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    .line 250
    return-void

    .line 255
    .end local v1    # "key":Ljava/lang/String;
    :cond_79
    return-void

    :sswitch_data_7a
    .sparse-switch
        -0x7e0c2586 -> :sswitch_51
        -0x6f8997a6 -> :sswitch_47
        0x14fb26c3 -> :sswitch_3d
        0x65e239ba -> :sswitch_32
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method private readKeepScreenOnForMillis()J
    .registers 5

    .line 216
    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    const-string v2, "attention_manager_service"

    const-string v3, "keep_screen_on_for_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private readKeepScreenOnNotificationEnabled()Z
    .registers 4

    .line 210
    const-string v0, "attention_manager_service"

    const-string v1, "keep_screen_on_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readMaxDurationBetweenUndimsMillis()J
    .registers 5

    .line 236
    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    const-string v2, "attention_manager_service"

    const-string/jumbo v3, "max_duration_between_undims_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private readUndimsRequired()I
    .registers 5

    .line 222
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "undims_required"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "undimsRequired":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v1, 0x5

    if-le v0, v1, :cond_11

    goto :goto_12

    .line 232
    :cond_11
    return v0

    .line 227
    :cond_12
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided undimsRequired="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not allowed [1, 5]; using the default="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenUndimDetector"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v2
.end method


# virtual methods
.method synthetic lambda$systemReady$0$com-android-server-power-ScreenUndimDetector(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 118
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/ScreenUndimDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method readValuesFromDeviceConfig()V
    .registers 4

    .line 259
    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnNotificationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    .line 260
    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnForMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    .line 261
    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readUndimsRequired()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    .line 262
    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readMaxDurationBetweenUndimsMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmKeepScreenOnNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUndimsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenUndimDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public recordScreenPolicy(II)V
    .registers 12
    .param p1, "displayGroupId"    # I
    .param p2, "newPolicy"    # I

    .line 131
    if-nez p1, :cond_69

    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    if-ne p2, v0, :cond_7

    goto :goto_69

    .line 142
    :cond_7
    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    .line 143
    .local v0, "currentPolicy":I
    iput p2, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    .line 145
    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    if-nez v1, :cond_10

    .line 146
    return-void

    .line 149
    :cond_10
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6a

    goto :goto_68

    .line 187
    :pswitch_16
    if-eqz p2, :cond_1a

    if-ne p2, v2, :cond_1d

    .line 188
    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    .line 190
    :cond_1d
    if-eq p2, v1, :cond_68

    .line 191
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    goto :goto_68

    .line 151
    :pswitch_23
    const/4 v3, 0x3

    if-ne p2, v3, :cond_5d

    .line 152
    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v3

    .line 153
    .local v3, "now":J
    iget-wide v5, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    sub-long v5, v3, v5

    .line 154
    .local v5, "timeElapsedSinceFirstUndim":J
    iget-wide v7, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_39

    .line 155
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 157
    :cond_39
    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    if-nez v1, :cond_3f

    .line 158
    iput-wide v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    .line 161
    :cond_3f
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 169
    iget v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    if-lt v1, v2, :cond_5c

    .line 170
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 174
    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5c

    .line 175
    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 176
    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v7, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v1, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 179
    .end local v3    # "now":J
    .end local v5    # "timeElapsedSinceFirstUndim":J
    :cond_5c
    goto :goto_68

    .line 180
    :cond_5d
    if-eqz p2, :cond_61

    if-ne p2, v2, :cond_64

    .line 181
    :cond_61
    invoke-direct {p0, v1}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    .line 183
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 185
    nop

    .line 195
    :cond_68
    :goto_68
    return-void

    .line 132
    .end local v0    # "currentPolicy":I
    :cond_69
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_23
        :pswitch_16
    .end packed-switch
.end method

.method reset()V
    .registers 3

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    .line 204
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 205
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 207
    :cond_16
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    .line 116
    nop

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenUndimDetector;)V

    .line 116
    const-string v2, "attention_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 120
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 121
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "UndimDetectorWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    return-void
.end method

.method public userActivity(I)V
    .registers 6
    .param p1, "displayGroupId"    # I

    .line 276
    if-eqz p1, :cond_3

    .line 277
    return-void

    .line 279
    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 280
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 282
    :cond_1b
    return-void
.end method
