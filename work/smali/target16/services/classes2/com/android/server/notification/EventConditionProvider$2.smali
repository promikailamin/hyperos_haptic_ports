.class public Lcom/android/server/notification/EventConditionProvider$2;
.super Ljava/lang/Object;
.source "EventConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/CalendarTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .line 346
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ConditionProviders.ECP"

    const-string v1, "mTrackerCallback.onChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$fgetmWorker(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$fgetmEvaluateSubscriptionsW(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$fgetmWorker(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {p0}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$fgetmEvaluateSubscriptionsW(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
