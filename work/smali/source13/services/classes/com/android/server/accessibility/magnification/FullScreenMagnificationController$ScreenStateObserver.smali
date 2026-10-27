.class Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1523
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1524
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 1525
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1526
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1544
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    .line 1545
    return-void
.end method

.method public registerIfNecessary()V
    .registers 4

    .line 1529
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-nez v0, :cond_13

    .line 1530
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1533
    :cond_13
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 1536
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-eqz v0, :cond_c

    .line 1537
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1540
    :cond_c
    return-void
.end method
