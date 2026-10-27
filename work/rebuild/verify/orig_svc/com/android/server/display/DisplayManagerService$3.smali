.class public Lcom/android/server/display/DisplayManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$3;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 589
    const-string p1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 590
    const-string/jumbo p1, "setting_name"

    .line 591
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 590
    const-string/jumbo p2, "screen_resolution_mode"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 592
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$3;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrestoreResolutionFromBackup(Lcom/android/server/display/DisplayManagerService;)V

    :cond_21
    return-void
.end method
