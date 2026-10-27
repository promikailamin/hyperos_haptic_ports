.class Landroid/app/ReceiverRestrictedContext;
.super Landroid/content/ContextWrapper;
.source "ContextImpl.java"


# direct methods
.method constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 6

    .line 199
    new-instance p1, Landroid/content/ReceiverCallNotAllowedException;

    const-string p2, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {p1, p2}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 5

    .line 192
    new-instance p1, Landroid/content/ReceiverCallNotAllowedException;

    const-string p2, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {p1, p2}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 4

    .line 185
    new-instance p1, Landroid/content/ReceiverCallNotAllowedException;

    const-string p2, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {p1, p2}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ReceiverRestrictedContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 5

    .line 153
    if-nez p1, :cond_8

    .line 156
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 158
    :cond_8
    new-instance p1, Landroid/content/ReceiverCallNotAllowedException;

    const-string p2, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {p1, p2}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 12

    .line 173
    if-nez p1, :cond_d

    .line 176
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Landroid/content/ContextWrapper;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 178
    :cond_d
    new-instance p1, Landroid/content/ReceiverCallNotAllowedException;

    const-string p2, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {p1, p2}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11

    .line 166
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ReceiverRestrictedContext;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
