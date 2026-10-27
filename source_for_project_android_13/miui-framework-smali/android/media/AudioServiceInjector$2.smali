.class Landroid/media/AudioServiceInjector$2;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 1414
    const-string v0, "AudioService"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1415
    .local v1, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1416
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1417
    const-string v3, "startAudioVisual exit due to Interactive"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void

    .line 1420
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1421
    .local v3, "it":Landroid/content/Intent;
    const-string v4, "com.xiaomi.miaudiovisual"

    const-string v5, "com.xiaomi.miaudiovisual.MainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1424
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_3a} :catch_3b

    .line 1427
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "it":Landroid/content/Intent;
    goto :goto_41

    .line 1425
    :catch_3b
    move-exception v1

    .line 1426
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "run: com.xiaomi.miaudiovisual.MainActivity not find"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1428
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_41
    return-void
.end method
