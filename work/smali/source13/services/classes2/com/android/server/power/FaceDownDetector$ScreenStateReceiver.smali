.class final Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDownDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FaceDownDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FaceDownDetector;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 468
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 469
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {v0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    goto :goto_2f

    .line 470
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 471
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 472
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {v0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    .line 474
    :cond_2f
    :goto_2f
    return-void
.end method
