.class public Lcom/android/server/policy/AlertSliderObserver;
.super Landroid/os/UEventObserver;
.source "AlertSliderObserver.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mState:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/policy/AlertSliderObserver;)Landroid/media/AudioManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/AlertSliderObserver;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/policy/AlertSliderObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/policy/AlertSliderObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misOrderInverted(Lcom/android/server/policy/AlertSliderObserver;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->isOrderInverted()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-class v0, Lcom/android/server/policy/AlertSliderObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AlertSliderObserver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 103
    new-instance v0, Lcom/android/server/policy/AlertSliderObserver$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/policy/AlertSliderObserver$1;-><init>(Lcom/android/server/policy/AlertSliderObserver;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    .line 50
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 52
    const-string v0, "AlertSliderObserver"

    invoke-virtual {p1, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .registers 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->update()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    .line 92
    :catch_2f
    sget-object v0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const-string v1, "This device does not have an Alert Slider"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V

    return-void
.end method

.method public final isOrderInverted()Z
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    .line 126
    const-string v1, "alert_slider_order"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v2
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .line 65
    sget-object v0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_21
    :try_start_21
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    iget v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    if-eq v0, v1, :cond_34

    .line 72
    iput v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    .line 73
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->update()V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_34} :catch_35

    :cond_34
    return-void

    .line 76
    :catch_35
    sget-object p0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse switch state from event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startObserving(I)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 59
    invoke-super {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public update()V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
