.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;
.super Ljava/lang/Object;
.source "LockoutFrameworkImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LockoutTracker"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

.field private final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field private final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockoutResetCallback"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 87
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 89
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

    .line 92
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 160
    const/high16 v2, 0xc000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 154
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 157
    return-void
.end method


# virtual methods
.method addFailedAttemptForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->scheduleLockoutResetForUser(I)V

    .line 134
    :cond_1a
    return-void
.end method

.method public getLockoutModeForUser(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 139
    .local v0, "failedAttempts":I
    const/16 v2, 0x14

    if-lt v0, v2, :cond_d

    .line 140
    const/4 v1, 0x2

    return v1

    .line 141
    :cond_d
    if-lez v0, :cond_1d

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 142
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_1d

    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1d

    .line 144
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_1d
    return v1
.end method

.method resetFailedAttemptsForUser(ZI)V
    .registers 8
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_28

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset biometric lockout for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clearAttemptCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockoutTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_28
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 105
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    :cond_30
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->cancelLockoutResetForUser(I)V

    .line 111
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    invoke-interface {v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;->onLockoutReset(I)V

    .line 114
    if-eqz p1, :cond_5e

    .line 115
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->setCurrentLockoutMode(I)V

    .line 116
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsSupportFpTap()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 121
    const/4 v4, 0x2

    goto :goto_5b

    .line 122
    :cond_5a
    move v4, v0

    .line 116
    :goto_5b
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->NotifyLockOutState(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BaseClientMonitor;II)V

    .line 125
    :cond_5e
    return-void
.end method
