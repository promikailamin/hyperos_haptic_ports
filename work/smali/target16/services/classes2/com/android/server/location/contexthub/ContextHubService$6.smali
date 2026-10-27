.class public Lcom/android/server/location/contexthub/ContextHubService$6;
.super Landroid/content/BroadcastReceiver;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 670
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 671
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$msendBtSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V

    :cond_12
    return-void
.end method
