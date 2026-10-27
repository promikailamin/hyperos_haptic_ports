.class Lcom/android/server/display/DisplayManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 435
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 438
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 439
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 440
    .local v0, "dmi":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 441
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 443
    .local v1, "dockState":I
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    if-eq v1, v2, :cond_29

    const/4 v5, 0x3

    if-eq v1, v5, :cond_29

    const/4 v5, 0x4

    if-ne v1, v5, :cond_27

    goto :goto_29

    :cond_27
    move v5, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v5, v2

    :goto_2a
    invoke-static {v4, v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 447
    .end local v1    # "dockState":I
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 448
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    goto :goto_50

    .line 449
    :cond_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 450
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 452
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v4

    if-eqz v4, :cond_61

    goto :goto_62

    :cond_61
    move v2, v3

    :goto_62
    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    .line 454
    return-void
.end method
