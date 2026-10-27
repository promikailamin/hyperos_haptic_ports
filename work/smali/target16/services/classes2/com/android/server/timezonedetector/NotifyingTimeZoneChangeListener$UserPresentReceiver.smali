.class Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyingTimeZoneChangeListener.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

.field public final trackedChangeEventId:I


# direct methods
.method public static synthetic $r8$lambda$QwFGVHup2deUlPBj259MAaF4mtM(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;->lambda$onReceive$0()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0()V
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    iget p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;->trackedChangeEventId:I

    invoke-static {v0, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->-$$Nest$mchangeAcceptedTimeHeuristicCallback(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 534
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 535
    iget-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-static {p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->-$$Nest$fgetmHandler(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V

    sget-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->-$$Nest$mresetUserPresentReceiver(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$UserPresentReceiver;)V

    :cond_22
    return-void
.end method
