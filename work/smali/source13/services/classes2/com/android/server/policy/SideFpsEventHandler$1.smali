.class Lcom/android/server/policy/SideFpsEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SideFpsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/SideFpsEventHandler;

    .line 87
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Landroid/app/Dialog;)V

    .line 94
    :cond_17
    return-void
.end method
