.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 515
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 518
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdatePointerSpeedFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 519
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateShowTouchesFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 521
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerServiceStub;->updateFromUserSwitch()V

    .line 523
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateAccessibilityLargePointerFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "user switched"

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateDeepPressStatusFromSettings(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->updateTouchWakeupModeFromSettings()V

    .line 526
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->updateSubScreenTouchWakeupModeFromSettings()V

    .line 527
    return-void
.end method
