.class Lcom/miui/mishare/app/connect/MiShareConnectivity$2;
.super Ljava/lang/Object;
.source "MiShareConnectivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/connect/MiShareConnectivity;->sendData(Lcom/miui/mishare/MiShareTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

.field final synthetic blacklist val$intent:Landroid/content/Intent;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/connect/MiShareConnectivity;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/mishare/app/connect/MiShareConnectivity;

    .line 402
    iput-object p1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iput-object p2, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmContext(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmContext(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2b

    .line 408
    :cond_19
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmContext(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 409
    return-void

    .line 406
    :cond_2b
    :goto_2b
    return-void
.end method
