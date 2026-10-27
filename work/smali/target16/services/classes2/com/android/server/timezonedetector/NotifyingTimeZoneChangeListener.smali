.class public Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
.super Ljava/lang/Object;
.source "NotifyingTimeZoneChangeListener.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneChangeListener;


# static fields
.field static final AUTO_REVERT_THRESHOLD:J


# instance fields
.field public mAcceptedLocationChanges:I

.field public mAcceptedManualChanges:I

.field public mAcceptedTelephonyChanges:I

.field public mAcceptedUnknownChanges:I

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final mConfigurationLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mEnvironment:Lcom/android/server/timezonedetector/Environment;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRegistered:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field public mRejectedLocationChanges:I

.field public mRejectedTelephonyChanges:I

.field public mRejectedUnknownChanges:I

.field public final mRes:Landroid/content/res/Resources;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field mUserPresentReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;


# direct methods
.method public static synthetic $r8$lambda$D3wpTFcQC4X_Knbcp-jZub0PJko(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->lambda$scheduleChangeAcceptedHeuristicCallback$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOoFxBwY36rVGc24HJInvungJio(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mchangeAcceptedTimeHeuristicCallback(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->changeAcceptedTimeHeuristicCallback(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotificationSwipedAway(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->notificationSwipedAway(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetUserPresentReceiver(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->resetUserPresentReceiver(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xf

    .line 111
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;Landroid/app/KeyguardManager;)V
    .registers 9

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    .line 135
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 139
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    .line 211
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    .line 212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object p3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 214
    new-instance p1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    invoke-interface {p3, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 216
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 217
    iput-object p4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 218
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/timezonedetector/Environment;

    iput-object p5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 219
    iput-object p6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;)Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
    .registers 11

    .line 188
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    const-class v1, Landroid/app/NotificationManager;

    .line 193
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/NotificationManager;

    const-class v1, Landroid/app/KeyguardManager;

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/KeyguardManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;Landroid/app/KeyguardManager;)V

    .line 198
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-object v0
.end method

.method public static formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .registers 4

    .line 635
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 636
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldRejectChangeEvent(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)Z
    .registers 6

    .line 482
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 483
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 484
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getElapsedRealtimeMillis()J

    move-result-wide v2

    .line 485
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getElapsedRealtimeMillis()J

    move-result-wide p0

    sub-long/2addr v2, p0

    sget-wide p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    cmp-long p0, v2, p0

    if-gez p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final areNotificationsEnabled()Z
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getNotificationsEnabledBehavior()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final changeAcceptedTimeHeuristicCallback(I)V
    .registers 4

    .line 544
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isManualChangeTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 545
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x3

    .line 546
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsAccepted(III)V

    :cond_10
    return-void
.end method

.method public final clearNotificationForUser(I)V
    .registers 4

    .line 551
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e9

    .line 552
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 551
    const-string v1, "TimeZoneDetector"

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 641
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationsEnabledBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 645
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getNotificationsEnabledBehavior()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationTrackingSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 648
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isNotificationTrackingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualChangeTrackingSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 651
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isManualChangeTrackingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_136

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedLocationChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedManualChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedTelephonyChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedUnknownChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedLocationChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedTelephonyChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedUnknownChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextChangeEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const-string v0, "mTimeZoneChangeRecord:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 665
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v1

    .line 666
    :try_start_129
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 667
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_129 .. :try_end_12f} :catchall_133

    .line 668
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_133
    move-exception p0

    .line 667
    :try_start_134
    monitor-exit v1
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw p0

    :catchall_136
    move-exception p0

    .line 652
    :try_start_137
    monitor-exit v0
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw p0
.end method

.method public final fixPotentialHistoryCorruption(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V
    .registers 18

    move-object/from16 v0, p0

    .line 446
    iget-object v1, v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz v1, :cond_5f

    .line 451
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v2

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewZoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 453
    iget-object v3, v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 454
    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    iget-object v5, v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 456
    invoke-interface {v5}, Lcom/android/server/timezonedetector/Environment;->elapsedRealtimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 457
    invoke-interface {v7}, Lcom/android/server/timezonedetector/Environment;->currentTimeMillis()J

    move-result-wide v7

    .line 460
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewZoneId()Ljava/lang/String;

    move-result-object v11

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldZoneId()Ljava/lang/String;

    move-result-object v12

    .line 462
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewConfidence()I

    move-result v13

    const/4 v14, 0x0

    const-string v15, "Synthetic"

    const/4 v9, 0x0

    const/16 v10, -0x2710

    invoke-direct/range {v4 .. v15}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;-><init>(JJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 465
    new-instance v2, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    invoke-direct {v2, v3, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;-><init>(ILcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 467
    invoke-virtual {v2, v3, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 469
    iget-object v0, v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v0

    if-nez v0, :cond_5f

    .line 474
    invoke-virtual {v1, v3, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    :cond_5f
    return-void
.end method

.method public getLastTimeZoneChangeRecord()Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 746
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 747
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getNotificationBody(Landroid/icu/util/TimeZone;J)Ljava/lang/CharSequence;
    .registers 6

    .line 624
    const-string/jumbo v0, "zzzz"

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 625
    const-string v1, "ZZZZ"

    invoke-static {v1}, Landroid/icu/text/SimpleDateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .line 627
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object p1

    .line 630
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    const p2, 0x1040a9c

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleConfigurationUpdate()V
    .registers 12

    .line 224
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 226
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 228
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 229
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-nez v2, :cond_47

    .line 230
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    const-string v2, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 238
    iput-boolean v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    goto :goto_47

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_67

    .line 240
    :cond_3a
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-eqz v2, :cond_47

    .line 241
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iput-boolean v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    :cond_47
    :goto_47
    if-eqz v0, :cond_65

    .line 247
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v5

    if-eq v2, v5, :cond_56

    move v3, v4

    .line 249
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    if-eqz v3, :cond_65

    .line 251
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->clearNotificationForUser(I)V

    .line 254
    :cond_65
    monitor-exit v1

    return-void

    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_37

    throw p0
.end method

.method public final isManualChangeTrackingSupported()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isManualChangeTrackingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 279
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isNotificationTrackingSupported()Z
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isNotificationTrackingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 273
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isUserIdCurrentUser(I)Z
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result p0

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final synthetic lambda$scheduleChangeAcceptedHeuristicCallback$0(I)V
    .registers 2

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->changeAcceptedTimeHeuristicCallback(I)V

    return-void
.end method

.method public final markChangeAsAccepted(III)V
    .registers 6

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isUserIdCurrentUser(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 295
    :cond_7
    iget-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter p2

    .line 296
    :try_start_a
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz v0, :cond_51

    .line 298
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v1

    if-eq v1, p1, :cond_1e

    .line 300
    monitor-exit p2

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_53

    .line 302
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result p1

    if-eqz p1, :cond_26

    .line 304
    monitor-exit p2

    return-void

    .line 306
    :cond_26
    invoke-virtual {v0, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setAccepted(I)V

    .line 308
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x3

    if-eq p1, v0, :cond_40

    .line 319
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    goto :goto_51

    .line 316
    :cond_40
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    goto :goto_51

    .line 313
    :cond_46
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    goto :goto_51

    .line 310
    :cond_4c
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    .line 323
    :cond_51
    :goto_51
    monitor-exit p2

    return-void

    :goto_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_1c

    throw p0
.end method

.method public final markChangeAsRejected(III)V
    .registers 5

    .line 342
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isUserIdCurrentUser(I)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_44

    .line 346
    :cond_7
    iget-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz p2, :cond_44

    .line 348
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v0

    if-eq v0, p1, :cond_18

    goto :goto_44

    .line 352
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_44

    .line 356
    :cond_1f
    invoke-virtual {p2, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setRejected(I)V

    .line 358
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_37

    .line 366
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    return-void

    .line 363
    :cond_37
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    return-void

    .line 360
    :cond_3e
    iget p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    :cond_44
    :goto_44
    return-void
.end method

.method public final notificationSwipedAway(II)V
    .registers 4

    .line 259
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 260
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsAccepted(III)V

    :cond_a
    return-void
.end method

.method public final notifyOfTimeZoneChange(ILcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V
    .registers 13

    .line 557
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 563
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 564
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 565
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getUnixEpochTimeMillis()J

    move-result-wide v3

    .line 567
    invoke-virtual {v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 568
    invoke-virtual {v1, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 574
    const-string p0, "TimeZoneChangeTracker"

    const-string p1, "The time zone ID has changed but the offset remains the same."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 578
    :cond_31
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    const v1, 0x1040a9d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->getNotificationBody(Landroid/icu/util/TimeZone;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 581
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x14200000

    .line 583
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 588
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    .line 590
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "change_id"

    .line 591
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 593
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    const-string v4, "TIME"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10801aa

    .line 595
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 596
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 597
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 598
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 600
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 609
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    const/4 v5, 0x0

    const/high16 v7, 0x14000000

    .line 603
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0xc000000

    .line 611
    invoke-static {v1, v2, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 610
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 616
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 617
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 619
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e9

    .line 620
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 619
    const-string v1, "TimeZoneDetector"

    invoke-virtual {p0, v1, v0, p2, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public process(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V
    .registers 8

    .line 376
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 377
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->fixPotentialHistoryCorruption(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 380
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 381
    new-instance v3, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    invoke-direct {v3, v2, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;-><init>(ILcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isManualChangeTrackingSupported()Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz v1, :cond_40

    .line 387
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v2

    if-nez v2, :cond_40

    .line 388
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v2

    .line 390
    invoke-static {p1, v2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->shouldRejectChangeEvent(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 392
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v2

    .line 393
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getUserId()I

    move-result v4

    const/4 v5, 0x3

    .line 391
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsRejected(III)V

    goto :goto_40

    :catchall_3e
    move-exception p0

    goto :goto_8b

    .line 400
    :cond_40
    :goto_40
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->scheduleChangeAcceptedHeuristicCallback(I)V

    :cond_47
    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 404
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v4

    if-nez v4, :cond_54

    const/4 v4, 0x4

    .line 405
    invoke-virtual {v1, v4, v2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 408
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v1

    if-ne v1, v2, :cond_5d

    .line 409
    invoke-virtual {v3, v2, v2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 412
    :cond_5d
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_3e

    .line 415
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 417
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    .line 419
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_87

    .line 421
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    if-ne v0, v2, :cond_7d

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->clearNotificationForUser(I)V

    return-void

    .line 424
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldConfidence()I

    move-result p1

    if-eqz p1, :cond_8a

    .line 428
    invoke-virtual {p0, v1, v3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->notifyOfTimeZoneChange(ILcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V

    return-void

    :catchall_87
    move-exception p0

    .line 419
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    :cond_8a
    return-void

    .line 413
    :goto_8b
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_3e

    throw p0
.end method

.method public final resetUserPresentReceiver(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V
    .registers 5

    .line 507
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mUserPresentReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    if-eqz v1, :cond_f

    .line 510
    :try_start_7
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_23

    .line 515
    :catch_f
    :cond_f
    :goto_f
    :try_start_f
    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mUserPresentReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;

    if-eqz p1, :cond_21

    .line 517
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mUserPresentReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_d

    throw p0
.end method

.method public final scheduleChangeAcceptedHeuristicCallback(I)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;I)V

    sget-wide p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
