.class public Landroid/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HapticPlayer"

.field private static final blacklist USAGE_DYNAMICEFFECT:I = -0x2

.field private static blacklist mExcutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private blacklist mAvailable:Z

.field private blacklist mEffect:Landroid/os/DynamicEffect;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mService:Landroid/os/IVibratorManagerService;

.field private blacklist mStarted:Z

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;
    .registers 1

    iget-object p0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/os/HapticPlayer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;
    .registers 1

    iget-object p0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;
    .registers 1

    iget-object p0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/os/HapticPlayer;->mStarted:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->mStarted:Z

    .line 35
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    .line 36
    const-string v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    .line 37
    invoke-static {}, Landroid/os/HapticPlayer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/DynamicEffect;)V
    .registers 2
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 41
    invoke-direct {p0}, Landroid/os/HapticPlayer;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/HapticPlayer;->setDataSource(Landroid/os/DynamicEffect;)V

    .line 43
    return-void
.end method

.method public static whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "sys.haptic.dynamiceffect.richtap.version"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isAvailable()Z
    .registers 2

    .line 55
    const-string v0, "sys.haptic.dynamiceffect.richtap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_10
    const-string v0, "HapticPlayer"

    const-string v1, "device not support core haptic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist setDataSource(Landroid/os/DynamicEffect;)V
    .registers 4
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 46
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mStarted:Z

    if-eqz v0, :cond_11

    .line 47
    invoke-virtual {p0}, Landroid/os/HapticPlayer;->stop()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->mStarted:Z

    .line 49
    const-string v0, "HapticPlayer"

    const-string v1, "setDataSource stop playing DynamicEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_11
    iput-object p1, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    .line 52
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 69
    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 71
    :cond_c
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v0, :cond_16

    .line 72
    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 74
    :cond_16
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_20

    .line 75
    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 79
    :cond_20
    sget-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/HapticPlayer$1;

    invoke-direct {v1, p0}, Landroid/os/HapticPlayer$1;-><init>(Landroid/os/HapticPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public whitelist start(I)V
    .registers 7
    .param p1, "times"    # I

    .line 93
    iget-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 94
    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 96
    :cond_c
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v0, :cond_16

    .line 97
    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 99
    :cond_16
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_20

    .line 100
    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 103
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Landroid/os/HapticPlayer;->stop()V

    .line 105
    const/4 v0, -0x1

    if-eq p1, v0, :cond_56

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_5d

    .line 106
    :cond_56
    const-string v0, "set to maximum loop count: 127"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 p1, 0x7f

    .line 109
    :cond_5d
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Landroid/os/DynamicEffect;->mLoop:I

    .line 110
    sget-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/HapticPlayer$2;

    invoke-direct {v1, p0}, Landroid/os/HapticPlayer$2;-><init>(Landroid/os/HapticPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public whitelist start(III)V
    .registers 9
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I

    .line 124
    const/16 v0, 0xff

    if-lt p3, v0, :cond_6

    .line 125
    const/16 p3, 0xff

    .line 126
    :cond_6
    if-gtz p3, :cond_9

    .line 127
    const/4 p3, 0x0

    .line 129
    :cond_9
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-eqz v0, :cond_36

    .line 130
    iput p2, v0, Landroid/os/DynamicEffect;->mInterval:I

    .line 131
    const-string v0, "ro.vendor.audio.vibration.instensity.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 132
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    int-to-double v1, p3

    const-wide v3, 0x400c666666666666L    # 3.55

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/os/DynamicEffect;->globalIntensity:I

    goto :goto_36

    .line 134
    :cond_2a
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    int-to-double v1, p3

    const-wide v3, 0x4004666666666666L    # 2.55

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/os/DynamicEffect;->globalIntensity:I

    .line 137
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Landroid/os/HapticPlayer;->start(I)V

    .line 138
    return-void
.end method

.method public whitelist start(IIII)V
    .registers 7
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",amplitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/HapticPlayer;->start(III)V

    .line 143
    return-void
.end method

.method public whitelist start(Landroid/os/DynamicEffect;)V
    .registers 4
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 202
    iget-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 203
    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 205
    :cond_c
    if-nez p1, :cond_14

    .line 206
    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 208
    :cond_14
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_1e

    .line 209
    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_1e
    invoke-virtual {p0}, Landroid/os/HapticPlayer;->stop()V

    .line 213
    sget-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/HapticPlayer$4;

    invoke-direct {v1, p0}, Landroid/os/HapticPlayer$4;-><init>(Landroid/os/HapticPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 146
    iget-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 147
    const-string v0, "Failed to stop haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 149
    :cond_c
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_16

    .line 150
    const-string v0, "Failed to stop haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 153
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/HapticPlayer$3;

    invoke-direct {v1, p0}, Landroid/os/HapticPlayer$3;-><init>(Landroid/os/HapticPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
