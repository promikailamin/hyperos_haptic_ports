.class public Lcom/android/server/biometrics/AuthenticationStatsCollector;
.super Ljava/lang/Object;
.source "AuthenticationStatsCollector.java"


# static fields
.field static final FRR_MINIMAL_DURATION:Ljava/time/Duration;

.field static final MAXIMUM_ENROLLMENT_NOTIFICATIONS:I = 0x3


# instance fields
.field public mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

.field public mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mEnabled:Z

.field public final mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mModality:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mThreshold:F

.field public final mUserAuthenticationStatsMap:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/time/Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModality(Lcom/android/server/biometrics/AuthenticationStatsCollector;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserAuthenticationStatsMap(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAuthenticationStatsMapIfNeeded(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotification;Ljava/time/Clock;)V
    .registers 10

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v1, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130001

    const/4 v4, 0x1

    .line 112
    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 114
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 115
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    .line 116
    iput-object p4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 119
    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 120
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 122
    new-instance p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 125
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrThreshold(F)V

    .line 127
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    const-string p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string/jumbo p2, "last_enroll_time_changed"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 133
    invoke-virtual {p1, v1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public authenticate(IZ)V
    .registers 6

    .line 148
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    if-nez v0, :cond_5

    goto :goto_2f

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->isSingleModalityDevice()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2f

    .line 161
    :cond_c
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2f

    .line 172
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 175
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-lt v1, v2, :cond_30

    :goto_2f
    return-void

    .line 179
    :cond_30
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/AuthenticationStats;->authenticate(Z)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->sendNotificationIfNeeded(I)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->persistDataIfNeeded(I)V

    return-void
.end method

.method public getAuthenticationStatsForUser(I)Lcom/android/server/biometrics/AuthenticationStats;
    .registers 3

    .line 333
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/AuthenticationStats;

    return-object p0
.end method

.method public final hasEnrolledFace(I)Z
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final hasEnrolledFingerprint(I)Z
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final initializeUserAuthenticationStatsMap()V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getAllFrrStats(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 140
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_26
    return-void
.end method

.method public final isFrrMinimalDurationPassed(J)Z
    .registers 5

    .line 253
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 255
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p2

    const-string v0, "AuthenticationStatsCollector"

    if-eqz p2, :cond_2b

    .line 258
    invoke-static {p1, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    .line 260
    sget-object p1, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-lez p0, :cond_24

    const/4 p0, 0x1

    return p0

    .line 263
    :cond_24
    const-string/jumbo p0, "isFrrMinimalDurationPassed, duration too short"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 266
    :cond_2b
    const-string/jumbo p0, "isFrrMinimalDurationPassed, date not match"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const/4 p0, 0x0

    return p0
.end method

.method public final isSingleModalityDevice()Z
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.biometrics.face"

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->removeFrrStats(I)V

    return-void
.end method

.method public final persistDataIfNeeded(I)V
    .registers 13

    .line 272
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 273
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v0

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_35

    .line 274
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v2

    .line 275
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v3

    .line 276
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v4

    .line 277
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v5

    .line 278
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v6

    .line 279
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v8

    .line 280
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result v10

    .line 274
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrStats(IIIIJJI)V

    :cond_35
    return-void
.end method

.method public sendFaceReEnrollNotification()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public sendFingerprintReEnrollNotification()V
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public final sendNotificationIfNeeded(I)V
    .registers 7

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 202
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v1

    const/16 v2, 0x96

    if-ge v1, v2, :cond_16

    goto/16 :goto_90

    .line 208
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v1

    .line 209
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v3

    .line 208
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 210
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v3

    sget v4, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-ge v3, v4, :cond_91

    .line 212
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getFrr()F

    move-result v3

    iget v4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_91

    .line 213
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->isFrrMinimalDurationPassed(J)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 226
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    .line 228
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 230
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendCustomizeFpFrrNotification(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 232
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 233
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    return-void

    .line 238
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFace(I)Z

    move-result v1

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result p1

    if-eqz v1, :cond_79

    if-nez p1, :cond_79

    .line 242
    iget-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 243
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 244
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    return-void

    :cond_79
    if-nez v1, :cond_90

    if-eqz p1, :cond_90

    .line 246
    iget-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 247
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 248
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    :cond_90
    :goto_90
    return-void

    .line 222
    :cond_91
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    return-void
.end method

.method public setAuthenticationStatsForUser(ILcom/android/server/biometrics/AuthenticationStats;)V
    .registers 3

    .line 338
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateAuthenticationStatsMapIfNeeded(I)V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/AuthenticationStats;

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-direct {v2, p1, p0}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-void
.end method
