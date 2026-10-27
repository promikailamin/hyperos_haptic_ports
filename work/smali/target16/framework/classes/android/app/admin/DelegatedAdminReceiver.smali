.class public Landroid/app/admin/DelegatedAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DelegatedAdminReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DelegatedAdminReceiver"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "onChoosePrivateKeyAlias should be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .registers 6

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "onNetworkLogsAvailable should be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 158
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 159
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    .line 160
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/DelegatedAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/admin/DelegatedAdminReceiver;->setResultData(Ljava/lang/String;)V

    .line 163
    goto :goto_74

    :cond_2f
    move-object v2, p0

    move-object v1, p1

    move-object v4, p2

    const-string p1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 164
    const-string p1, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    const-wide/16 v5, -0x1

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 165
    const-string v0, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 166
    move-object v0, v2

    move-object v2, v4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DelegatedAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 167
    goto :goto_74

    :cond_50
    const-string p1, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 168
    invoke-virtual {p0, v1, v4}, Landroid/app/admin/DelegatedAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_74

    .line 170
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled broadcast: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DelegatedAdminReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_74
    return-void
.end method

.method public whitelist onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "onSecurityLogsAvailable should be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
