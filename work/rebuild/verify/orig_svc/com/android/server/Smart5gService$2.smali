.class public Lcom/android/server/Smart5gService$2;
.super Landroid/content/BroadcastReceiver;
.source "Smart5gService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/Smart5gService;


# direct methods
.method public constructor <init>(Lcom/android/server/Smart5gService;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_75

    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_43

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled intent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Smart5gService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_43
    iget-object p1, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p1}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmPowerManager(Lcom/android/server/Smart5gService;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p2}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmIsPowerSaveMode(Lcom/android/server/Smart5gService;)Z

    move-result p2

    if-eq p1, p2, :cond_a4

    .line 104
    iget-object p2, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p2, p1}, Lcom/android/server/Smart5gService;->-$$Nest$fputmIsPowerSaveMode(Lcom/android/server/Smart5gService;Z)V

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "power save mode changed, new: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p0}, Lcom/android/server/Smart5gService;->-$$Nest$mupdate(Lcom/android/server/Smart5gService;)V

    return-void

    .line 110
    :cond_75
    iget-object p1, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p1}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmSubManager(Lcom/android/server/Smart5gService;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p2}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmDefaultDataSubId(Lcom/android/server/Smart5gService;)I

    move-result p2

    if-eq p1, p2, :cond_a4

    .line 112
    iget-object p2, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p2, p1}, Lcom/android/server/Smart5gService;->-$$Nest$fputmDefaultDataSubId(Lcom/android/server/Smart5gService;I)V

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dds changed, new: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/Smart5gService$2;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p0}, Lcom/android/server/Smart5gService;->-$$Nest$mupdate(Lcom/android/server/Smart5gService;)V

    :cond_a4
    return-void
.end method
