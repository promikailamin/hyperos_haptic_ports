.class Lmiui/accounts/ExtraAccountManager$4;
.super Landroid/content/BroadcastReceiver;
.source "ExtraAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/ExtraAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/accounts/ExtraAccountManager;


# direct methods
.method constructor blacklist <init>(Lmiui/accounts/ExtraAccountManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/accounts/ExtraAccountManager;

    .line 240
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Lmiui/accounts/ExtraAccountManager$4;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 243
    .local v0, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmExecutorService(Lmiui/accounts/ExtraAccountManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lmiui/accounts/ExtraAccountManager$4$1;

    invoke-direct {v2, p0, p2, v0}, Lmiui/accounts/ExtraAccountManager$4$1;-><init>(Lmiui/accounts/ExtraAccountManager$4;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method
