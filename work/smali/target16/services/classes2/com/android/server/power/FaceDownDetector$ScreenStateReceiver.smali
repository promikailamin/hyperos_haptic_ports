.class public final Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDownDetector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/FaceDownDetector;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/FaceDownDetector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 478
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 479
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 480
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    return-void

    .line 481
    :cond_18
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 482
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 483
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    :cond_2f
    return-void
.end method
