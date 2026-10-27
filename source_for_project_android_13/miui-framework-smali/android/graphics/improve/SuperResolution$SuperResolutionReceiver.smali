.class public Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperResolutionReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/improve/SuperResolution;)V
    .registers 2
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;

    .line 183
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    const-string v0, "miui.intent.action.super_resolution_turnon"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez p2, :cond_a

    .line 189
    return-void

    .line 191
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 193
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v0, p1}, Landroid/graphics/improve/SuperResolution;->-$$Nest$misAllowInitAsync(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 194
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v0, p1}, Landroid/graphics/improve/SuperResolution;->-$$Nest$minitAsync(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    goto :goto_28

    .line 196
    :cond_22
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/improve/SuperResolution;->-$$Nest$fputmInitComplete(Landroid/graphics/improve/SuperResolution;Z)V

    .line 199
    :cond_28
    :goto_28
    return-void
.end method
