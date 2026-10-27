.class public Lcom/android/server/accessibility/FlashNotificationsController$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "FlashNotificationsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public static synthetic $r8$lambda$6sh4VmH_JFlFTySwImzfGSFne-A(Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 2

    .line 211
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 212
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 210
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;-><init>()V

    .line 211
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 216
    :goto_11
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;)Z

    move-result v0

    if-eq v0, p1, :cond_2b

    if-eqz p1, :cond_21

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstartFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V

    goto :goto_26

    .line 221
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstopFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 223
    :goto_26
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    :cond_2b
    return-void
.end method
