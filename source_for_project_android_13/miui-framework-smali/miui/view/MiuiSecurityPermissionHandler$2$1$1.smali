.class Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$2$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    .line 185
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 188
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    move v0, v2

    .line 190
    .local v0, "provisioned":Z
    if-eqz v0, :cond_73

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1c
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$account:Landroid/accounts/Account;

    .line 193
    .local v1, "accountInfo":Landroid/accounts/Account;
    if-nez v1, :cond_2f

    .line 194
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mloadAccountId(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v2

    move-object v1, v2

    .line 196
    :cond_2f
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    if-nez v1, :cond_3f

    const/4 v4, 0x0

    goto :goto_41

    :cond_3f
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_41
    invoke-static {v3, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mpostVerificationWaterMarker(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;I)V

    .line 197
    const/4 v2, -0x2

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-eq v2, v3, :cond_61

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-nez v2, :cond_6e

    .line 198
    :cond_61
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;->this$2:Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    .line 200
    .end local v1    # "accountInfo":Landroid/accounts/Account;
    :cond_6e
    monitor-exit p0

    goto :goto_73

    :catchall_70
    move-exception v1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1c .. :try_end_72} :catchall_70

    throw v1

    .line 202
    :cond_73
    :goto_73
    return-void
.end method
