.class public Lcom/android/server/policy/WindowWakeUpPolicy;
.super Ljava/lang/Object;
.source "WindowWakeUpPolicy.java"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public static bridge synthetic -$$Nest$fputmInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 60
    iput-object p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 63
    new-instance p1, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicy-IA;)V

    const-class p0, Lcom/android/server/policy/WindowWakeUpPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final wakeUp(IJILjava/lang/String;)V
    .registers 12

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    move v5, p1

    if-nez v5, :cond_b

    .line 207
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    return-void

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "android.policy:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v1, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    return-void
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .registers 7

    .line 194
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public wakeUpFromBluetooth()Z
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    const-string v3, "BLUETOOTH_DEVICE_CONNECTED"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromCameraCover(J)Z
    .registers 5

    const/4 v0, 0x5

    .line 144
    const-string v1, "CAMERA_COVER"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromKey(IJIZ)Z
    .registers 14

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 90
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result p5

    if-eqz p5, :cond_c

    return v1

    :cond_c
    const/16 p5, 0x1a

    if-ne p4, p5, :cond_12

    move v6, v1

    goto :goto_14

    :cond_12
    const/4 v0, 0x6

    move v6, v0

    :goto_14
    if-ne p4, p5, :cond_1d

    .line 98
    const-string p4, "POWER"

    :goto_18
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v7, p4

    goto :goto_20

    :cond_1d
    const-string p4, "KEY"

    goto :goto_18

    .line 94
    :goto_20
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    return v1
.end method

.method public wakeUpFromLid()Z
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9

    const-string v3, "LID"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromMotion(IJIZZ)Z
    .registers 14

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v6, 0x1

    move-wide v1, p2

    if-eqz v0, :cond_10

    move v3, p4

    move v4, p5

    move v5, p6

    .line 124
    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromMotion(JIZZ)Z

    move-result p2

    if-eqz p2, :cond_10

    return v6

    :cond_10
    const/4 v4, 0x7

    .line 129
    const-string v5, "MOTION"

    move-object v0, p0

    move-wide v2, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    return v6
.end method

.method public wakeUpFromPowerKeyCameraGesture()Z
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const-string v3, "CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromWakeGesture()Z
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "GESTURE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
