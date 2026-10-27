.class Lcom/android/server/VpnManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/VpnManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VpnManagerService;

    .line 707
    iput-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 710
    iget-object v0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v0}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 711
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 713
    .local v1, "userId":I
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 714
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 716
    .local v4, "packageData":Landroid/net/Uri;
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    .line 718
    .local v5, "packageName":Ljava/lang/String;
    :goto_24
    const-string v6, "com.android.server.action.LOCKDOWN_RESET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 719
    iget-object v6, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v6}, Lcom/android/server/VpnManagerService;->-$$Nest$monVpnLockdownReset(Lcom/android/server/VpnManagerService;)V

    .line 723
    :cond_31
    if-ne v1, v2, :cond_34

    return-void

    .line 725
    :cond_34
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 726
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v1}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserStarted(Lcom/android/server/VpnManagerService;I)V

    goto/16 :goto_b9

    .line 727
    :cond_43
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 728
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v1}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserStopped(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b9

    .line 729
    :cond_51
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 730
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v1}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b9

    .line 731
    :cond_5f
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 732
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v1}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b9

    .line 733
    :cond_6d
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 734
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v1}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b9

    .line 735
    :cond_7b
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 736
    iget-object v2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v2, v5, v3}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V

    goto :goto_b9

    .line 737
    :cond_89
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 738
    const/4 v2, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 740
    .local v2, "isReplacing":Z
    iget-object v6, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v6, v5, v3, v2}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    .line 741
    .end local v2    # "isReplacing":Z
    goto :goto_b9

    .line 742
    :cond_9e
    invoke-static {}, Lcom/android/server/VpnManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received unexpected intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_b9
    return-void
.end method
