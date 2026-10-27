.class Lmiui/view/MiuiSecurityPermissionHandler$2;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic blacklist val$account:Landroid/accounts/Account;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 173
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 176
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$account:Landroid/accounts/Account;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_b
    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mpostVerificationWaterMarker(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;I)V

    .line 177
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    if-nez v0, :cond_7a

    .line 178
    :cond_23
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    move v0, v4

    .line 180
    .local v0, "provisioned":Z
    :goto_39
    if-nez v0, :cond_5f

    .line 181
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    invoke-direct {v3, p0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$2$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$2;Landroid/os/Handler;)V

    invoke-static {v1, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmContentObserver(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/database/ContentObserver;)V

    .line 206
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    .line 207
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContentObserver(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;

    move-result-object v3

    .line 206
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_7a

    .line 210
    :cond_5f
    monitor-enter p0

    .line 211
    :try_start_60
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v1, v2, :cond_70

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    if-nez v1, :cond_79

    .line 212
    :cond_70
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    .line 214
    :cond_79
    monitor-exit p0

    .line 217
    .end local v0    # "provisioned":Z
    :cond_7a
    :goto_7a
    return-void

    .line 214
    .restart local v0    # "provisioned":Z
    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_7b

    throw v1
.end method
