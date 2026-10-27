.class public Lcom/android/server/audio/SoundDoseHelper;
.super Ljava/lang/Object;
.source "SoundDoseHelper.java"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedAudioDeviceCategories:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCsdAsAFeatureLock:Ljava/lang/Object;

.field public final mCsdStateLock:Ljava/lang/Object;

.field public mCurrentCsd:F

.field public final mDoseRecords:Ljava/util/List;

.field public final mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGlobalTimeOffsetInSecs:J

.field public mIsCsdAsAFeatureAvailable:Z

.field public mIsCsdAsAFeatureEnabled:Z

.field public mLastMomentaryExposureTimeMs:J

.field public mLastMusicActiveTimeMs:J

.field public final mLogger:Lcom/android/server/utils/EventLogger;

.field public mMcc:I

.field public mMusicActiveIntent:Landroid/app/PendingIntent;

.field public mMusicActiveMs:I

.field public mNextCsdWarning:F

.field public mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

.field public mSafeMediaVolumeDbfs:F

.field public final mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeIndex:I

.field public mSafeMediaVolumeState:I

.field public final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

.field public final mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;


# direct methods
.method public static synthetic $r8$lambda$-eyX7mXE3YxFQvwPH19lwSCuwYk(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z
    .registers 6

    .line 1201
    iget v0, p1, Landroid/media/SoundDoseRecord;->value:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->value:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    iget-wide v0, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    iget-wide v2, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    iget v0, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    iget p1, p1, Landroid/media/SoundDoseRecord;->duration:I

    iget p0, p0, Landroid/media/SoundDoseRecord;->duration:I

    if-ne p1, p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$-sBXj5AnMnsGb4USPhlqVokq-ZE(JLjava/lang/String;)Landroid/media/SoundDoseRecord;
    .registers 3

    .line 1279
    invoke-static {p2, p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rggneTbRzo8AfgNHvHRz9NFr10o(Lcom/android/server/audio/SoundDoseHelper;Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->lambda$onPersistSoundDoseRecords$1(Landroid/media/SoundDoseRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCsdStateLock(Lcom/android/server/audio/SoundDoseHelper;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableCsd(Lcom/android/server/audio/SoundDoseHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/utils/EventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->getTimeoutMsForWarning(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;)V
    .registers 11

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string v2, "CSD updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 167
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 193
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const-wide/16 v1, 0x0

    .line 199
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 208
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    .line 214
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 227
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-wide/16 v2, -0x1

    .line 230
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 234
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 241
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 246
    new-instance v2, Lcom/android/server/audio/SoundDoseHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundDoseHelper$1;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    .line 318
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 319
    iput-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 320
    iput-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 321
    iput-object p5, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    .line 323
    iput-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeVolumes()V

    .line 327
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "audio_safe_volume_state"

    invoke-virtual {p4, p1, p3, v0}, Lcom/android/server/audio/SettingsAdapter;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 333
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e013a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 336
    invoke-static {v2}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 340
    const-string p1, "alarm"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static convertToBootTime(JJ)J
    .registers 4

    .line 0
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static convertToGlobalTime(JJ)J
    .registers 4

    .line 0
    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6f

    .line 1286
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6f

    .line 1289
    :cond_a
    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1290
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "AS.SoundDoseHelper"

    if-eq v2, v3, :cond_2c

    .line 1291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expecting 4 fields for a SoundDoseRecord, parsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1295
    :cond_2c
    new-instance v2, Landroid/media/SoundDoseRecord;

    invoke-direct {v2}, Landroid/media/SoundDoseRecord;-><init>()V

    const/4 v3, 0x0

    .line 1297
    :try_start_32
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToBootTime(JJ)J

    move-result-wide p1

    iput-wide p1, v2, Landroid/media/SoundDoseRecord;->timestamp:J

    const/4 p1, 0x1

    .line 1299
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->duration:I

    const/4 p1, 0x2

    .line 1300
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->value:F

    const/4 p1, 0x3

    .line 1301
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->averageMel:F
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_59} :catch_5a

    return-object v2

    :catch_5a
    move-exception p1

    .line 1303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse persisted SoundDoseRecord: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    :goto_6f
    return-object v0
.end method

.method public static persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;
    .registers 4

    if-eqz p0, :cond_30

    .line 1275
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    .line 1278
    :cond_9
    const-string v0, "\\|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 1280
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1281
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    .line 1280
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;
    .registers 6

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToGlobalTime(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->duration:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->value:F

    .line 1261
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%.3f"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    .line 1262
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1185
    :cond_d
    const-string p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object p0

    .line 1184
    :cond_10
    const-string p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object p0

    .line 1183
    :cond_13
    const-string p0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object p0

    .line 1182
    :cond_16
    const-string p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object p0
.end method


# virtual methods
.method public final cancelMusicActiveCheck()V
    .registers 3

    .line 1122
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 1123
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1124
    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    :cond_c
    return-void
.end method

.method public checkSafeMediaVolume(III)Z
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result p0

    .line 662
    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final checkSafeMediaVolume_l(III)Z
    .registers 6

    .line 668
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    .line 669
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ne p1, v1, :cond_1b

    .line 670
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 671
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p0

    if-le p2, p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public configureSafeMedia(ZLjava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_5

    const/16 v0, 0x3ea

    goto :goto_7

    :cond_5
    const/16 v0, 0x3e9

    .line 755
    :goto_7
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string p1, "audio.safemedia.bypass"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    move p1, v1

    goto :goto_1f

    :cond_1d
    const/16 p1, 0x7530

    :goto_1f
    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_24

    :cond_22
    const-wide/16 v2, 0x0

    .line 763
    :goto_24
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 764
    invoke-virtual {p0, v0, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 763
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 12

    .line 688
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_26

    const/4 v0, 0x0

    .line 691
    :try_start_8
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2b

    .line 693
    :try_start_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    if-eqz v0, :cond_29

    .line 697
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v3, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    iget v4, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mIndex:I

    iget v5, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mFlags:I

    iget v6, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mDevice:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;ZZ)V

    const/4 p1, 0x0

    .line 703
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    goto :goto_29

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_31

    .line 705
    :cond_29
    :goto_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    .line 693
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw p0

    .line 705
    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_26

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 844
    const-string v0, "  mEnableCsd="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 845
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 846
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_19
    const-string v1, "  mCurrentCsd="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 848
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw p0

    .line 850
    :cond_28
    :goto_28
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    .line 853
    :goto_41
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 854
    const-string v1, "  mSafeMediaVolumeIndex["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 855
    const-string v1, "]="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 857
    :cond_68
    const-string v0, "  mSafeMediaVolumeDbfs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 858
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 859
    const-string v0, "  mMcc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 860
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 862
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 863
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 8

    .line 637
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 640
    :goto_9
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 641
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 642
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 643
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v5

    if-le v4, v5, :cond_2e

    const/4 v4, 0x1

    .line 645
    invoke-virtual {v0, v5, v3, p1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 647
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 648
    invoke-virtual {v4, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 647
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_31
    return-void
.end method

.method public enforceSafeMediaVolumeIfActive(Ljava/lang/String;)V
    .registers 5

    .line 629
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_10

    .line 633
    :cond_e
    :goto_e
    monitor-exit v0

    return-void

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_c

    throw p0
.end method

.method public forceComputeCsdOnAllDevices(Z)V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 503
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 508
    :cond_f
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 509
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_21

    .line 510
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_21
    :try_start_21
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceComputeCsdOnAllDevices(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 517
    const-string p1, "Exception while forcing CSD computation on all devices"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public forceUseFrameworkMel(Z)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 482
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 487
    :cond_f
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 488
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_21

    .line 489
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 494
    :cond_21
    :try_start_21
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceUseFrameworkMel(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 496
    const-string p1, "Exception while forcing the internal MEL computation"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getCsd()F
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_11

    .line 410
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 415
    :cond_11
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 416
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_23

    .line 417
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 422
    :cond_23
    :try_start_23
    invoke-interface {p0}, Landroid/media/ISoundDose;->getCsd()F

    move-result p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_28

    return p0

    :catch_28
    move-exception p0

    .line 424
    const-string v2, "Exception while getting the CSD value"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getOutputRs2UpperBound()F
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 366
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 367
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1c

    .line 368
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 373
    :cond_1c
    :try_start_1c
    invoke-interface {p0}, Landroid/media/ISoundDose;->getOutputRs2UpperBound()F

    move-result p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 375
    const-string v2, "Exception while getting the RS2 exposure value"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final getSafeDeviceMediaVolumeIndex(I)I
    .registers 9

    .line 1134
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x8

    if-eq p1, v0, :cond_16

    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    goto :goto_16

    :cond_10
    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_19

    const/4 p0, -0x1

    return p0

    .line 1140
    :cond_16
    :goto_16
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    return p0

    .line 1149
    :cond_19
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 1150
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 1152
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    :goto_35
    sub-int v3, v2, v0

    .line 1155
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5d

    add-int v3, v2, v0

    .line 1156
    div-int/lit8 v3, v3, 0x2

    .line 1157
    invoke-static {v1, v3, p1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 1159
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_5d

    .line 1162
    :cond_4d
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_55

    move v0, v3

    goto :goto_5d

    :cond_55
    cmpg-float v4, v4, v5

    if-gez v4, :cond_5b

    move v0, v3

    goto :goto_35

    :cond_5b
    move v2, v3

    goto :goto_35

    :cond_5d
    :goto_5d
    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getSafeMediaVolumeIndex(I)I
    .registers 4

    .line 778
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public final getTimeoutMsForWarning(I)I
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x2

    const/16 v0, 0x1388

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x4

    const/4 v0, -0x1

    if-eq p1, p0, :cond_2a

    .line 1099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CSD warning "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AS.SoundDoseHelper"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    return v0

    :cond_2b
    const/16 p0, 0x1b58

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_64

    .line 838
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected msg to handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SoundDoseHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 835
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->onLowerVolumeToRs1()V

    return-void

    .line 826
    :pswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 827
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_2b

    move v1, v2

    .line 828
    :cond_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 831
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 832
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result p1

    .line 831
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/server/audio/SoundDoseHelper;->updateDoseAttenuation(IIIZ)V

    return-void

    .line 823
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSoundDoseRecords()V

    return-void

    .line 817
    :pswitch_3f
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 818
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 814
    :pswitch_51
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSafeVolumeState(I)V

    return-void

    :pswitch_57
    const/16 v3, 0x3ea

    if-ne v0, v3, :cond_5c

    move v1, v2

    .line 810
    :cond_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/SoundDoseHelper;->onConfigureSafeMedia(ZLjava/lang/String;)V

    return-void

    :pswitch_data_64
    .packed-switch 0x3e9
        :pswitch_57
        :pswitch_57
        :pswitch_51
        :pswitch_3f
        :pswitch_3b
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method public initCachedAudioDeviceCategories(Ljava/util/Collection;)V
    .registers 5

    .line 596
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AdiDeviceState;

    .line 597
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    new-instance v1, Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-direct {v1}, Landroid/media/ISoundDose$AudioDeviceCategory;-><init>()V

    .line 600
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->address:Ljava/lang/String;

    .line 601
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v2

    iput v2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->internalAudioType:I

    .line 603
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iput-boolean v0, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->csdCompatible:Z

    .line 604
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_39
    return-void
.end method

.method public final initCsd()V
    .registers 8

    .line 934
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-nez v0, :cond_12

    .line 936
    const-string p0, "AS.SoundDoseHelper"

    const-string v0, "ISoundDose instance is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 941
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ISoundDose;->setCsdEnabled(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    .line 943
    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Cannot disable CSD"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    :goto_24
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2d

    return-void

    .line 950
    :cond_2d
    const-string v1, "AS.SoundDoseHelper"

    const-string v2, "Initializing sound dose"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 953
    :try_start_35
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 954
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-interface {v0, v2}, Landroid/media/ISoundDose;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 956
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4f} :catch_50

    goto :goto_58

    :catch_50
    move-exception v0

    .line 959
    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Exception while initializing the cached audio device categories"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 964
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_safe_csd_as_a_feature_enabled"

    const/4 v5, -0x2

    .line 963
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v2, 0x1

    goto :goto_6f

    :cond_6e
    move v2, v1

    :goto_6f
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 967
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_c7

    .line 969
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 970
    :try_start_75
    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_89

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_89

    :catchall_87
    move-exception p0

    goto :goto_c5

    .line 974
    :cond_89
    :goto_89
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 976
    const-string v3, "audio_safe_csd_current_value"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_c0

    .line 979
    const-string v0, "audio_safe_csd_next_warning"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 981
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 982
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_safe_csd_dose_records"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 981
    invoke-static {v0, v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 986
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 987
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 990
    :cond_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_75 .. :try_end_c1} :catchall_87

    .line 992
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->reset(Z)V

    return-void

    .line 990
    :goto_c5
    :try_start_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_87

    throw p0

    :catchall_c7
    move-exception p0

    .line 967
    :try_start_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p0
.end method

.method public initSafeMediaVolumeIndex()V
    .registers 5

    const/4 v0, 0x0

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 770
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 771
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 772
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method public initSafeVolumes()V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 347
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const v1, 0x20000002

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 355
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public invalidatePendingVolumeCommand()V
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 802
    :try_start_4
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 803
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public isCsdAsAFeatureAvailable()Z
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 543
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isCsdAsAFeatureEnabled()Z
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 549
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isCsdEnabled()Z
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 526
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 527
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1c

    .line 528
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 533
    :cond_1c
    :try_start_1c
    invoke-interface {p0}, Landroid/media/ISoundDose;->isSoundDoseHalSupported()Z

    move-result p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 535
    const-string v2, "Exception while querying the csd enabled status"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final synthetic lambda$onPersistSoundDoseRecords$1(Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .registers 4

    .line 1251
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    invoke-static {p1, v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCheckMusicActive(Ljava/lang/String;Z)V
    .registers 11

    .line 723
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_83

    .line 725
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 726
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_7e

    if-eqz p2, :cond_7e

    .line 727
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 728
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/AudioService;->getVolumeForDevice(II)Landroid/util/Pair;

    move-result-object p2

    .line 730
    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    move p2, v3

    goto :goto_37

    :cond_2f
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 731
    :goto_37
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_83

    .line 733
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 734
    iget-wide v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_52

    .line 735
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    sub-long v4, v1, v6

    long-to-int v4, v4

    add-int/2addr p2, v4

    iput p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    goto :goto_52

    :catchall_50
    move-exception p0

    goto :goto_85

    .line 737
    :cond_52
    :goto_52
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 738
    const-string p2, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckMusicActive() mMusicActiveMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le p2, v1, :cond_7a

    const/4 p2, 0x1

    .line 740
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 741
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 743
    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    goto :goto_83

    .line 746
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 747
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 750
    :cond_83
    :goto_83
    monitor-exit v0

    return-void

    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_50

    throw p0
.end method

.method public final onConfigureSafeMedia(ZLjava/lang/String;)V
    .registers 6

    .line 996
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1000
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    if-ne v2, v1, :cond_1a

    if-nez v2, :cond_33

    if-eqz p1, :cond_33

    .line 1001
    :cond_1a
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e013a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 1005
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 1007
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 1009
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final onLowerVolumeToRs1()V
    .registers 12

    .line 1332
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1333
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1334
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1332
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "AS.SoundDoseHelper"

    if-eqz v1, :cond_22

    .line 1336
    const-string p0, "Cannot lower the volume to RS1, no devices registered for USAGE_MEDIA"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const/4 v1, 0x0

    .line 1339
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/media/AudioDeviceAttributes;

    .line 1340
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1341
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v1

    div-int/lit8 v5, v1, 0xa

    .line 1342
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v3, Landroid/media/VolumeInfo$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 1343
    invoke-virtual {v3}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v3

    const-string/jumbo v4, "sounddosehelper"

    .line 1342
    invoke-virtual {v1, v3, v7, v4}, Lcom/android/server/audio/AudioService;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v1

    .line 1346
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v3

    if-ge v5, v3, :cond_66

    .line 1347
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getLowerVolumeToRs1Event()Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1348
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 1349
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 1348
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttributionInt(IIILandroid/media/AudioDeviceAttributes;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1352
    :cond_66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current volume "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for device type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is already smaller or equal to the safe index volume "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPersistSafeVolumeState(I)V
    .registers 4

    .line 1175
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "audio_safe_volume_state"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onPersistSoundDoseRecords()V
    .registers 7

    .line 1237
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_68

    .line 1242
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_current_value"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 1244
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1242
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1245
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_next_warning"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 1247
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1245
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1248
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_dose_records"

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 1250
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string/jumbo v4, "|"

    .line 1253
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 1252
    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1248
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1254
    monitor-exit v0

    return-void

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_15

    throw p0
.end method

.method public final parseGlobalSettingFloat(Ljava/lang/String;F)F
    .registers 6

    .line 1311
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1313
    const-string v0, "AS.SoundDoseHelper"

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_32

    .line 1320
    :cond_17
    :try_start_17
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing float from settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2

    .line 1314
    :cond_32
    :goto_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No value stored in settings "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public raiseVolumeDisplaySafeMediaVolume(IIII)Z
    .registers 5

    .line 788
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume(III)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 792
    :cond_8
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {p0, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public reset(Z)V
    .registers 6

    .line 867
    const-string v0, "AS.SoundDoseHelper"

    const-string v1, "Reset the sound dose helper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_14

    .line 870
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    invoke-static {v0}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 873
    :cond_14
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 875
    :try_start_17
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-eqz v0, :cond_5d

    .line 876
    invoke-interface {v0}, Landroid/media/ISoundDose;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 877
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5d

    .line 878
    const-string v1, "AS.SoundDoseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting the saved sound dose value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/SoundDoseRecord;

    .line 882
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-interface {v0, p0, v1}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_5a} :catch_5d
    .catchall {:try_start_17 .. :try_end_5a} :catchall_5b

    goto :goto_5d

    :catchall_5b
    move-exception p0

    goto :goto_5f

    .line 888
    :catch_5d
    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit p1

    return-void

    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5b

    throw p0
.end method

.method public resetCsdTimeouts()V
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 469
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 474
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 475
    :try_start_14
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 476
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public restoreMusicActiveMs()V
    .registers 7

    .line 619
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 621
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v2, 0x44aa200

    .line 620
    invoke-static {v1, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 625
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public safeDevicesContains(I)Z
    .registers 3

    .line 797
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public safeMediaVolumeIndex(I)I
    .registers 2

    .line 610
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_10

    .line 612
    sget-object p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    mul-int/lit8 p0, p0, 0xa

    :cond_10
    return p0
.end method

.method public final sanitizeDoseRecords_l()V
    .registers 4

    .line 1221
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28f

    if-le v0, v1, :cond_4c

    .line 1222
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records from the total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 1224
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    const-string v2, "AS.SoundDoseHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1227
    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-lez v0, :cond_4c

    .line 1228
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1229
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    :cond_4c
    return-void
.end method

.method public final saveMusicActiveMs()V
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleMusicActiveCheck()V
    .registers 7

    .line 710
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 712
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc000000

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 716
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    .line 716
    invoke-virtual {v1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 719
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public setAudioDeviceCategory(Ljava/lang/String;IZ)V
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 577
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 578
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1b

    .line 579
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 584
    :cond_1b
    :try_start_1b
    new-instance v1, Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-direct {v1}, Landroid/media/ISoundDose$AudioDeviceCategory;-><init>()V

    .line 586
    iput-object p1, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->address:Ljava/lang/String;

    .line 587
    iput p2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->internalAudioType:I

    .line 588
    iput-boolean p3, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->csdCompatible:Z

    .line 589
    invoke-interface {p0, v1}, Landroid/media/ISoundDose;->setAudioDeviceCategory(Landroid/media/ISoundDose$AudioDeviceCategory;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 591
    const-string p1, "Exception while setting the audio device category"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setCsd(F)V
    .registers 8

    .line 430
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 432
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 438
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_12
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 440
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 442
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 444
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_43

    .line 445
    new-instance v1, Landroid/media/SoundDoseRecord;

    invoke-direct {v1}, Landroid/media/SoundDoseRecord;-><init>()V

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 447
    iput p1, v1, Landroid/media/SoundDoseRecord;->value:F

    .line 448
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_6e

    .line 450
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/SoundDoseRecord;

    .line 451
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_41

    .line 453
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    if-nez p0, :cond_61

    .line 455
    const-string p0, "AS.SoundDoseHelper"

    const-string p1, "Sound dose interface not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_61
    :try_start_61
    invoke-interface {p0, p1, v1}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception p0

    .line 462
    const-string p1, "AS.SoundDoseHelper"

    const-string v0, "Exception while setting the CSD value"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 451
    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_41

    throw p0
.end method

.method public setCsdAsAFeatureEnabled(Z)V
    .registers 10

    .line 554
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    if-eq v1, p1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_38

    :cond_f
    const/4 v1, 0x0

    .line 556
    :goto_10
    iput-boolean p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_d

    .line 559
    :try_start_16
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "audio_safe_csd_as_a_feature_enabled"

    .line 561
    iget-boolean v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    const/4 v7, -0x2

    .line 559
    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_33

    .line 563
    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_d

    if-eqz v1, :cond_32

    .line 568
    const-string/jumbo p1, "setCsdAsAFeatureEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    :cond_32
    return-void

    :catchall_33
    move-exception p0

    .line 563
    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    throw p0

    .line 565
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_d

    throw p0
.end method

.method public setOutputRs2UpperBound(F)V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 385
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 386
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1b

    .line 387
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 392
    :cond_1b
    :try_start_1b
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->setOutputRs2UpperBound(F)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 394
    const-string p1, "Exception while setting the RS2 exposure value"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 1105
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_13

    if-ne v0, v3, :cond_13

    .line 1108
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1109
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    return-void

    :cond_13
    if-nez p1, :cond_25

    if-ne v0, v2, :cond_25

    .line 1111
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1112
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const-wide/16 p1, 0x0

    .line 1113
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    :cond_25
    return-void
.end method

.method public final updateCsdEnabled(Ljava/lang/String;)V
    .registers 8

    .line 1056
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111024a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_2b

    if-nez v1, :cond_33

    .line 1064
    :cond_2b
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_33
    move v4, v3

    goto :goto_36

    :cond_35
    move v4, v2

    .line 1066
    :goto_36
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v0, :cond_6a

    if-eqz v1, :cond_6a

    .line 1068
    :try_start_3d
    iput-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 1069
    iget-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_a2

    :cond_4e
    :goto_4e
    move v2, v3

    .line 1070
    :cond_4f
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": CSD as a feature is not enforced and enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_6c

    .line 1073
    :cond_6a
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 1075
    :goto_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_3d .. :try_end_6d} :catchall_4c

    .line 1077
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1078
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": enabled CSD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 1081
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_96
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 1084
    monitor-exit v0

    return-void

    :catchall_9e
    move-exception p0

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_9e

    throw p0

    :cond_a1
    return-void

    .line 1075
    :goto_a2
    :try_start_a2
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_4c

    throw p0
.end method

.method public final updateCsdForTestApi()Z
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 401
    const-string v0, "SystemPropertiesChangeCallback"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 404
    :cond_14
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final updateDoseAttenuation(IIIZ)V
    .registers 7

    .line 893
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_62

    .line 897
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    .line 898
    const-string v1, "AS.SoundDoseHelper"

    if-nez v0, :cond_1b

    .line 899
    const-string p0, "Can not apply attenuation. ISoundDose itf is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    if-nez p4, :cond_36

    .line 905
    :try_start_1d
    iget-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    const/4 p4, 0x0

    if-ltz p3, :cond_32

    .line 906
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p4, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getAbsVolumeAttenuationEvent(FI)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_32

    :catch_30
    move-exception p0

    goto :goto_63

    .line 910
    :cond_32
    :goto_32
    invoke-interface {v0, p4, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V

    return-void

    .line 915
    :cond_36
    sget-object p4, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_62

    .line 916
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p3

    if-eqz p3, :cond_62

    add-int/lit8 p3, p1, 0x5

    .line 917
    div-int/lit8 p3, p3, 0xa

    invoke-static {p4, p3, p2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p3

    neg-float p3, p3

    .line 920
    iget-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p4

    if-ltz p4, :cond_5f

    .line 921
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 922
    invoke-static {p3, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getAbsVolumeAttenuationEvent(FI)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p4

    .line 921
    invoke-virtual {p0, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 925
    :cond_5f
    invoke-interface {v0, p3, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_62} :catch_30

    :cond_62
    :goto_62
    return-void

    .line 928
    :goto_63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not apply the attenuation for MEL calculation with volume index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updateSafeMediaVolume_l(Ljava/lang/String;)V
    .registers 8

    .line 1015
    const-string v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1016
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    .line 1017
    :goto_16
    const-string v3, "audio.safemedia.force"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1021
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2d

    if-eqz v3, :cond_47

    :cond_2d
    if-nez v0, :cond_47

    .line 1035
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_45

    .line 1036
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    if-nez v0, :cond_3f

    .line 1037
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1038
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_45

    .line 1041
    :cond_3f
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const-wide/16 v4, 0x0

    .line 1042
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    :cond_45
    :goto_45
    move v2, v3

    goto :goto_49

    .line 1047
    :cond_47
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1050
    :goto_49
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 p1, 0x3eb

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1050
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V
    .registers 13

    .line 1193
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_58

    aget-object v5, p1, v4

    .line 1194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  new record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.SoundDoseHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget v6, v5, Landroid/media/SoundDoseRecord;->duration:I

    int-to-long v8, v6

    add-long/2addr v1, v8

    .line 1197
    iget v6, v5, Landroid/media/SoundDoseRecord;->value:F

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-gez v9, :cond_4c

    .line 1200
    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    new-instance v8, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;-><init>(Landroid/media/SoundDoseRecord;)V

    invoke-interface {v6, v8}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 1204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find cached record to remove: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_4c
    cmpl-float v6, v6, v8

    if-lez v6, :cond_55

    .line 1207
    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1211
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 1213
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v0, 0x3ed

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1216
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p2, v1, v2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getDoseUpdateEvent(FJ)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public willDisplayWarningAfterCheckVolume(IIII)Z
    .registers 7

    .line 676
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 678
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {v1, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 679
    new-instance v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    const/4 p0, 0x1

    .line 681
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    goto :goto_1d

    .line 683
    :cond_1a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_18

    throw p0
.end method
