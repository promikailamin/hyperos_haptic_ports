.class Lmiui/view/MiuiSecurityPermissionHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiSecurityPermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiSecurityPermissionHandler;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 117
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 122
    return-void

    .line 125
    :cond_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 127
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 128
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4e

    .line 130
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v2, v3, :cond_4e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 131
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mupdateWaterMarkerAccount(Lmiui/view/MiuiSecurityPermissionHandler;)V

    .line 132
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Connected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4e
    monitor-enter p0

    .line 138
    :try_start_4f
    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7f

    .line 139
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmNeedAddAccount(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 140
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V

    .line 142
    :cond_69
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionListenAccount(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 143
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 145
    :cond_7a
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmBootComplete(Lmiui/view/MiuiSecurityPermissionHandler;Z)V

    .line 147
    :cond_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_4f .. :try_end_80} :catchall_f6

    .line 149
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 150
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mloadAccountId(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v1

    .line 151
    .local v1, "account":Landroid/accounts/Account;
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-ne v3, v2, :cond_98

    if-nez v1, :cond_bc

    :cond_98
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_bc

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ab

    goto :goto_bc

    .line 158
    :cond_ab
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "miui_account_login_check"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f5

    .line 154
    :cond_bc
    :goto_bc
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUI_ACCOUNT_LOGIN_CHECK: mRetPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v5}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "miui_account_login_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_f5
    :goto_f5
    return-void

    .line 147
    :catchall_f6
    move-exception v1

    :try_start_f7
    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v1
.end method
