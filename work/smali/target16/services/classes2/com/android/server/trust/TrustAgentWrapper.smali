.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAlarmIntent:Landroid/content/Intent;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mBound:Z

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mDisplayTrustGrantedMessage:Z

.field public final mHandler:Landroid/os/Handler;

.field public mManagingTrust:Z

.field public mMaximumTimeToLock:J

.field public mMessage:Ljava/lang/CharSequence;

.field public final mName:Landroid/content/ComponentName;

.field public mPendingSuccessfulUnlock:Z

.field public mScheduledRestartUptimeMillis:J

.field public mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field public mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field public mTrustDisabledByDpm:Z

.field public final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field public mTrustable:Z

.field public final mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

.field public mTrusted:Z

.field public final mUserId:I

.field public mWaitingForTrustableDowngrade:Z

.field public mWithinSecurityLockdownWindow:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWithinSecurityLockdownWindow(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWithinSecurityLockdownWindow(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTrustTimeout(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleRestart(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallback(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSecurityWindowTimer(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->setSecurityWindowTimer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 13

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 121
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 320
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    .line 432
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$5;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$5;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 476
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 477
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 478
    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 479
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 480
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 482
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "componentName"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/4 v6, 0x1

    .line 483
    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v7, v4

    .line 486
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v7, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {v4, v5, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 491
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    const v5, 0x4000001

    .line 496
    invoke-virtual {p1, p3, v2, v5, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz p3, :cond_9e

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 499
    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 501
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 503
    :cond_9e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t bind to TrustAgent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustAgentWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_b

    return-void

    .line 739
    :cond_b
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent unbound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2b
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    .line 741
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 742
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 743
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 745
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 746
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 747
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public downgradeToTrustable()V
    .registers 3

    .line 694
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 696
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    const/4 v1, 0x1

    .line 697
    iput-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 698
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_13
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 723
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getScheduledRestartUptimeMillis()J
    .registers 3

    .line 764
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .registers 1

    .line 755
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return p0
.end method

.method public isConnected()Z
    .registers 1

    .line 751
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isManagingTrust()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isTrustable()Z
    .registers 2

    .line 677
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isTrustableOrWaitingForDowngrade()Z
    .registers 2

    .line 681
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->isTrustable()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isTrusted()Z
    .registers 2

    .line 673
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 577
    :try_start_3
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    goto :goto_e

    :cond_d
    return-void

    .line 579
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 2

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    goto :goto_b

    :cond_a
    return-void

    .line 590
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .registers 3

    .line 508
    const-string p0, "TrustAgentWrapper"

    const-string v0, "Exception "

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onEscrowTokenActivated(JI)V
    .registers 6

    .line 599
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEscrowTokenActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TrustAgentWrapper"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_23
    iget-object p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p3, :cond_30

    const/4 v0, 0x1

    .line 602
    :try_start_28
    invoke-interface {p3, p1, p2, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_30
    return-void
.end method

.method public final onTrustTimeout()V
    .registers 2

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    goto :goto_b

    :cond_a
    return-void

    .line 515
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 3

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 525
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    return-void

    :catch_8
    move-exception p1

    goto :goto_d

    .line 527
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_8

    return-void

    .line 530
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUnlockLockout(I)V
    .registers 3

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 564
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_b

    :cond_a
    return-void

    .line 567
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserMayRequestUnlock()V
    .registers 2

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 551
    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onUserMayRequestUnlock()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    goto :goto_b

    :cond_a
    return-void

    .line 554
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onUserRequestedUnlock(Z)V
    .registers 3

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 540
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUserRequestedUnlock(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_b

    :cond_a
    return-void

    .line 543
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final scheduleRestart()V
    .registers 7

    .line 768
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 770
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 3

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 612
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_b

    :cond_a
    return-void

    .line 615
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final setSecurityWindowTimer()V
    .registers 12

    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long v6, v0, v2

    .line 705
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v9, Lcom/android/server/trust/TrustAgentWrapper$6;

    invoke-direct {v9, p0}, Lcom/android/server/trust/TrustAgentWrapper$6;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 715
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v10

    const/4 v5, 0x2

    .line 705
    const-string v8, "TrustAgentWrapper"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setUntrustable()V
    .registers 2

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    return-void
.end method

.method public shouldDisplayTrustGrantedMessage()Z
    .registers 1

    .line 731
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    return p0
.end method

.method public updateDevicePolicyFeatures()Z
    .registers 11

    .line 626
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    const-string v1, "TrustAgentWrapper"

    if-eqz v0, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDevicePolicyFeatures("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 628
    :try_start_24
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v4, :cond_ca

    .line 629
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    .line 630
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 632
    iget v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_9d

    .line 634
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v4, v6, v5, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v5
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_45} :catch_9a

    if-eqz v0, :cond_60

    .line 637
    :try_start_47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detected trust agents disabled. Config = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :catch_5c
    move-exception v0

    move v1, v2

    goto/16 :goto_cc

    :cond_60
    :goto_60
    if-eqz v5, :cond_98

    .line 638
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_98

    if-eqz v0, :cond_8c

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TrustAgent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " disabled until it acknowledges "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_8c
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 644
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, v5, v0}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_98} :catch_5c

    :cond_98
    move v0, v2

    goto :goto_a5

    :catch_9a
    move-exception v0

    move v1, v3

    goto :goto_cc

    .line 647
    :cond_9d
    :try_start_9d
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1, v6}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a4} :catch_9a

    move v0, v3

    .line 649
    :goto_a5
    :try_start_a5
    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v4, v6, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 650
    iget-wide v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v1, v4, v7

    if-eqz v1, :cond_d0

    .line 653
    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 654
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_d0

    .line 655
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 656
    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 657
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_c4} :catch_c5

    goto :goto_d0

    :catch_c5
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_cc

    :cond_ca
    move v0, v3

    goto :goto_d0

    .line 662
    :goto_cc
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    move v0, v1

    .line 664
    :cond_d0
    :goto_d0
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v1, v0, :cond_de

    .line 665
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 666
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return v2

    :cond_de
    return v3
.end method
