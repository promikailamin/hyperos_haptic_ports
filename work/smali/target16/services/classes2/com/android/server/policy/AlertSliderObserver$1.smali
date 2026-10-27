.class public Lcom/android/server/policy/AlertSliderObserver$1;
.super Landroid/os/Handler;
.source "AlertSliderObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/AlertSliderObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/AlertSliderObserver;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$misOrderInverted(Lcom/android/server/policy/AlertSliderObserver;)Z

    .line 107
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmState(Lcom/android/server/policy/AlertSliderObserver;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    goto :goto_33

    .line 115
    :cond_15
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/AlertSliderObserver;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_33

    .line 112
    :cond_1f
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/AlertSliderObserver;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_33

    .line 109
    :cond_29
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/AlertSliderObserver;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 118
    :goto_33
    iget-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p1}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmWakeLock(Lcom/android/server/policy/AlertSliderObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 119
    iget-object p0, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {p0}, Lcom/android/server/policy/AlertSliderObserver;->-$$Nest$fgetmWakeLock(Lcom/android/server/policy/AlertSliderObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_48
    return-void
.end method
