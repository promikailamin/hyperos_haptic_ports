.class public final Lcom/android/server/firewall/IntentFirewall$FirewallHandler;
.super Landroid/os/Handler;
.source "IntentFirewall.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V
    .registers 4

    .line 709
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 710
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 715
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->-$$Nest$mreadRulesDir(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    return-void
.end method
