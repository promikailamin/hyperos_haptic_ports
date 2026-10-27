.class Lmiui/view/MiuiSecurityPermissionHandler$4$1;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

.field final synthetic blacklist val$account:Landroid/accounts/Account;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler$4;Landroid/accounts/Account;)V
    .registers 3
    .param p1, "this$1"    # Lmiui/view/MiuiSecurityPermissionHandler$4;

    .line 301
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 304
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$4;->val$action:Landroid/widget/Button;

    .line 305
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v3, :cond_17

    const-string v3, "null"

    goto :goto_19

    :cond_17
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 304
    :goto_19
    invoke-static {v0, v1, v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mpostVerificationRequest(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    goto :goto_34

    .line 320
    :cond_33
    return-void

    .line 307
    :cond_34
    :goto_34
    monitor-enter p0

    .line 308
    :try_start_35
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_69

    .line 309
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmBootComplete(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    .line 310
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 311
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V

    goto :goto_69

    .line 313
    :cond_5b
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmPermissionListenAccount(Lmiui/view/MiuiSecurityPermissionHandler;Z)V

    .line 314
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmNeedAddAccount(Lmiui/view/MiuiSecurityPermissionHandler;Z)V

    .line 317
    :cond_69
    :goto_69
    monitor-exit p0

    .line 318
    return-void

    .line 317
    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_35 .. :try_end_6d} :catchall_6b

    throw v0
.end method
