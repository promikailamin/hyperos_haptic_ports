.class public Lmiui/util/SystemAnalytics;
.super Ljava/lang/Object;
.source "SystemAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SystemAnalytics$Action;
    }
.end annotation


# static fields
.field public static final blacklist CONFIGKEY_BOOT_SHUT:Ljava/lang/String; = "systemserver_bootshuttime"

.field private static final blacklist LOGTYPE_EVENT:I = 0x0

.field private static final blacklist SYSTEM_APP_ID:Ljava/lang/String; = "systemserver"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemAnalytics"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Lmiui/util/SystemAnalytics$Action;

    .line 27
    const-string v0, "SystemAnalytics"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.EventService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v2, "key"

    if-eqz p1, :cond_14

    move-object v3, p1

    goto :goto_16

    :cond_14
    const-string v3, ""

    :goto_16
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v2, "content"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v2, "extra"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v2, "appid"

    const-string v3, "systemserver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_50

    .line 38
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_56

    .line 36
    :catch_50
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "track system error!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_56
    return-void
.end method
