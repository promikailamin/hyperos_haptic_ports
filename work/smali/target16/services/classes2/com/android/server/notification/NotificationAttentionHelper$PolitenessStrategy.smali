.class abstract Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# instance fields
.field public mApplyPerPackage:Z

.field public final mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

.field public mIsActive:Z

.field public final mLastUpdatedTimestampByPackage:Ljava/util/Map;

.field public final mTimeoutMuted:I

.field public final mTimeoutPolite:I

.field public final mVolumeMuted:F

.field public final mVolumePolite:F

.field public final mVolumeStates:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$mgetVibrationIntensity(Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationRecord;)F
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public constructor <init>(IIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V
    .registers 7

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1244
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    .line 1250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    .line 1251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    .line 1253
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    .line 1254
    iput p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-float p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 1255
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumePolite:F

    int-to-float p1, p4

    div-float/2addr p1, p2

    .line 1256
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeMuted:F

    .line 1257
    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    return-void
.end method


# virtual methods
.method public getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    .line 1279
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1280
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_1b
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->hasUserSetSound()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 1285
    const-string v0, ""

    .line 1288
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J
    .registers 4

    .line 1343
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetSound()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    if-nez v0, :cond_f

    goto :goto_2a

    .line 1346
    :cond_f
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 1347
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1346
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 1344
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLastNotificationUpdateTimeMs()J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextState(IJ)I
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v0, :cond_28

    if-eq p1, v1, :cond_1f

    .line 1377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNextState unexpected volume state: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NotifAttentionHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1370
    :cond_1f
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-lez p0, :cond_27

    return v0

    :cond_27
    return v1

    .line 1361
    :cond_28
    iget p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutMuted:I

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gez p1, :cond_30

    return v1

    .line 1363
    :cond_30
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-lez p0, :cond_39

    const/4 p0, 0x0

    return p0

    :cond_39
    return v0

    .line 1356
    :cond_3a
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mTimeoutPolite:I

    int-to-long v1, p0

    cmp-long p0, p2, v1

    if-gez p0, :cond_42

    return v0

    :cond_42
    return p1
.end method

.method public getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .registers 3

    .line 1333
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .registers 6

    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    .line 1297
    const-string v1, "NotifAttentionHelper"

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2e

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_29

    .line 1308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundVolume unexpected volume state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1305
    :cond_29
    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeMuted:F

    goto :goto_2e

    .line 1302
    :cond_2c
    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumePolite:F

    .line 1312
    :cond_2e
    :goto_2e
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_56

    .line 1313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundVolume state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vol: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v2
.end method

.method public final getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F
    .registers 2

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public abstract onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 1329
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    return-void
.end method

.method public setApplyCooldownPerPackage(Z)V
    .registers 2

    .line 1268
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mApplyPerPackage:Z

    return-void
.end method

.method public setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 5

    .line 1338
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationChannel;->setLastNotificationUpdateTimeMs(J)V

    .line 1339
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mLastUpdatedTimestampByPackage:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
