.class Lmiui/accounts/ExtraAccountManager$4$1;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/accounts/ExtraAccountManager$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lmiui/accounts/ExtraAccountManager$4;

.field final synthetic blacklist val$intent:Landroid/content/Intent;

.field final synthetic blacklist val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor blacklist <init>(Lmiui/accounts/ExtraAccountManager$4;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4
    .param p1, "this$1"    # Lmiui/accounts/ExtraAccountManager$4;

    .line 243
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iput-object p2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 16

    .line 246
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_62

    .line 294
    :cond_17
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v1, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmAccountManager(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 295
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v2, v2, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmMiuiAccountsUpdatedListeners(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 297
    :try_start_2c
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v3, v3, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmMiuiAccountsUpdatedListeners(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 298
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v5, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v5, v5, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    invoke-static {v5, v6, v7, v1}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$mpostToHandler(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    .line 300
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    goto :goto_3c

    .line 301
    :cond_5c
    monitor-exit v2

    goto/16 :goto_164

    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_2c .. :try_end_61} :catchall_5f

    throw v3

    .line 251
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :cond_62
    :goto_62
    const/4 v1, 0x0

    .line 253
    .local v1, "intentSender":Ljava/lang/String;
    :try_start_63
    const-string v2, "android.content.Intent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 254
    .local v2, "activityClass":Ljava/lang/Class;
    const-string v3, "getSender"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 255
    .local v3, "senderMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 256
    .local v4, "sender":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9b

    .line 257
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    .line 258
    const-string v5, "ExtraAccountManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get intent sender="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 260
    :cond_9b
    const-string v5, "ExtraAccountManager"

    const-string v6, "get intent sender failed, type mismatch"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_63 .. :try_end_a2} :catch_be
    .catch Ljava/lang/NoSuchMethodException; {:try_start_63 .. :try_end_a2} :catch_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_63 .. :try_end_a2} :catch_ac
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_a2} :catch_a3

    goto :goto_c6

    .line 268
    .end local v2    # "activityClass":Ljava/lang/Class;
    .end local v3    # "senderMethod":Ljava/lang/reflect/Method;
    .end local v4    # "sender":Ljava/lang/Object;
    :catch_a3
    move-exception v2

    .line 269
    .local v2, "ignore":Ljava/lang/ClassNotFoundException;
    const-string v3, "ExtraAccountManager"

    const-string v4, "get intent sender failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c7

    .line 266
    .end local v2    # "ignore":Ljava/lang/ClassNotFoundException;
    :catch_ac
    move-exception v2

    .line 267
    .local v2, "ignore":Ljava/lang/IllegalAccessException;
    const-string v3, "ExtraAccountManager"

    const-string v4, "get intent sender failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ignore":Ljava/lang/IllegalAccessException;
    goto :goto_c6

    .line 264
    :catch_b5
    move-exception v2

    .line 265
    .local v2, "ignore":Ljava/lang/NoSuchMethodException;
    const-string v3, "ExtraAccountManager"

    const-string v4, "get intent sender failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ignore":Ljava/lang/NoSuchMethodException;
    goto :goto_c6

    .line 262
    :catch_be
    move-exception v2

    .line 263
    .local v2, "ignore":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "ExtraAccountManager"

    const-string v4, "get intent sender failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v2    # "ignore":Ljava/lang/reflect/InvocationTargetException;
    :goto_c6
    nop

    .line 272
    :goto_c7
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const-string v3, "extra_account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 273
    .local v2, "account":Landroid/accounts/Account;
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const-string v4, "extra_bundle"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/os/Bundle;

    .line 274
    .local v10, "extra":Landroid/os/Bundle;
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const-string v4, "extra_update_type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 275
    .local v11, "type":I
    if-eqz v2, :cond_15c

    if-lez v11, :cond_15c

    .line 277
    const-string v3, "com.xiaomi"

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v3, "com.xiaomi.account"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 278
    const-string v3, "ExtraAccountManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xiaomi account with wrong sender "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_163

    .line 280
    :cond_114
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v3, v3, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmMiuiAccountsUpdatedListeners(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    .line 282
    :try_start_11d
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v3, v3, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$fgetmMiuiAccountsUpdatedListeners(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_157

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v14, v3

    .line 283
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v3, v3, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    const-string v6, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    .line 286
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 283
    move-object v6, v2

    move v7, v11

    move-object v8, v10

    invoke-static/range {v3 .. v9}, Lmiui/accounts/ExtraAccountManager;->-$$Nest$mpostToHandler(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    .line 287
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    goto :goto_12d

    .line 288
    :cond_157
    monitor-exit v12

    goto :goto_163

    :catchall_159
    move-exception v3

    monitor-exit v12
    :try_end_15b
    .catchall {:try_start_11d .. :try_end_15b} :catchall_159

    throw v3

    .line 291
    :cond_15c
    const-string v3, "ExtraAccountManager"

    const-string v4, "account changed, but no account or type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v1    # "intentSender":Ljava/lang/String;
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v10    # "extra":Landroid/os/Bundle;
    .end local v11    # "type":I
    :goto_163
    nop

    .line 303
    :goto_164
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 304
    return-void
.end method
