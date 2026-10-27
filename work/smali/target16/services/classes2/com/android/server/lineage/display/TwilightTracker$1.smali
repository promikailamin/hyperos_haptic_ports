.class public Lcom/android/server/lineage/display/TwilightTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "TwilightTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/TwilightTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/TwilightTracker;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$1;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 407
    const-string p1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string/jumbo p1, "state"

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_20

    .line 410
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker$1;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {p0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationHandler(Lcom/android/server/lineage/display/TwilightTracker;)Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->requestLocationUpdate()V

    return-void

    .line 415
    :cond_20
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker$1;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {p0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationHandler(Lcom/android/server/lineage/display/TwilightTracker;)Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->requestTwilightUpdate()V

    return-void
.end method
