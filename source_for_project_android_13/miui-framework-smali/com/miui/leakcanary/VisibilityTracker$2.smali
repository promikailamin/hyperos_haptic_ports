.class Lcom/miui/leakcanary/VisibilityTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/leakcanary/VisibilityTracker;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/leakcanary/VisibilityTracker;


# direct methods
.method constructor blacklist <init>(Lcom/miui/leakcanary/VisibilityTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/leakcanary/VisibilityTracker;

    .line 49
    iput-object p1, p0, Lcom/miui/leakcanary/VisibilityTracker$2;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$2;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fputscreenOn(Lcom/miui/leakcanary/VisibilityTracker;Z)V

    .line 53
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$2;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$mupdateVisible(Lcom/miui/leakcanary/VisibilityTracker;)V

    .line 54
    return-void
.end method
