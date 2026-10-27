.class public Lcom/android/server/display/DisplayManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 569
    const-string p1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 570
    const-string p1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 572
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    if-eq p1, v0, :cond_21

    const/4 v3, 0x3

    if-eq p1, v3, :cond_21

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1f

    goto :goto_21

    :cond_1f
    move p1, v1

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v0

    :goto_22
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 576
    :cond_25
    const-string p1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 577
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    goto :goto_48

    .line 578
    :cond_37
    const-string p1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 579
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 581
    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z

    move-result p2

    if-eqz p2, :cond_59

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z

    move-result p0

    if-eqz p0, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    :goto_5a
    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    return-void
.end method
