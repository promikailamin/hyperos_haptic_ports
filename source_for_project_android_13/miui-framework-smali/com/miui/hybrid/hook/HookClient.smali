.class public Lcom/miui/hybrid/hook/HookClient;
.super Ljava/lang/Object;
.source "HookClient.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HookClient"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hookGetCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "hostApp"    # Ljava/lang/String;
    .param p1, "originCallingPkg"    # Ljava/lang/String;

    .line 39
    move-object v0, p1

    .line 41
    .local v0, "hookCallingPKg":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/miui/hybrid/hook/CallingPkgHook;->getHookCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    move-object v0, v1

    .line 45
    goto :goto_2e

    .line 42
    :catchall_b
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened when hook getCallingPkg for hostApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", originCallingPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HookClient"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2e
    return-object v0
.end method

.method public static blacklist hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;
    .registers 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flags"    # J

    .line 16
    move-object v0, p0

    .line 18
    .local v0, "hookPkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/miui/hybrid/hook/PkgInfoHook;->hook(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    move-object v0, v1

    .line 22
    goto :goto_27

    .line 19
    :catchall_b
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened when hookPackageInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HookClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_27
    return-object v0
.end method

.method public static blacklist redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 28
    move-object v0, p0

    .line 30
    .local v0, "redirectIntent":Landroid/content/Intent;
    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/miui/hybrid/hook/IntentHook;->redirect(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    move-object v0, v1

    .line 34
    goto :goto_27

    .line 31
    :catchall_b
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened when redirect intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HookClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_27
    return-object v0
.end method
