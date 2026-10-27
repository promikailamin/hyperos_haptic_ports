.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .registers 2

    .line 138
    const-class p0, Landroid/app/AlarmManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getDefaultStrongAuthFlags(Landroid/content/Context;)I
    .registers 2

    .line 146
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getElapsedRealtimeMs()J
    .registers 3

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextAlarmTimeMs(J)J
    .registers 5

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method
