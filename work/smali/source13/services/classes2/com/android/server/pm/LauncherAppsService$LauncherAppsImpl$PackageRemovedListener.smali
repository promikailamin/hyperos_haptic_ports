.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageRemovedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 1553
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1601
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1602
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1603
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1557
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1559
    .local v0, "userId":I
    const-string v2, "LauncherAppsService"

    if-ne v0, v1, :cond_23

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1563
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1565
    .local v1, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1566
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1567
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 1568
    const-string v4, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 1570
    .local v4, "appIdAllowList":[I
    if-eqz v3, :cond_ab

    const/4 v5, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 1572
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1573
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v6

    .line 1575
    .local v6, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_55
    if-ge v7, v6, :cond_a2

    .line 1576
    :try_start_57
    iget-object v8, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v8

    .line 1577
    invoke-virtual {v8, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/content/pm/IOnAppsChangedListener;

    .line 1578
    .local v8, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v9

    .line 1579
    invoke-virtual {v9, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1580
    .local v9, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v10, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v11, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v12, "onPackageRemoved"

    invoke-static {v10, v11, v5, v12}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7d

    .line 1581
    goto :goto_94

    .line 1583
    :cond_7d
    iget v10, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v4, v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$smisCallingAppIdAllowed([II)Z

    move-result v10
    :try_end_87
    .catchall {:try_start_57 .. :try_end_87} :catchall_97

    if-nez v10, :cond_8a

    .line 1585
    goto :goto_94

    .line 1588
    :cond_8a
    :try_start_8a
    invoke-interface {v8, v5, v3}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_97

    .line 1591
    goto :goto_94

    .line 1589
    :catch_8e
    move-exception v10

    .line 1590
    .local v10, "re":Landroid/os/RemoteException;
    :try_start_8f
    const-string v11, "Callback failed "

    invoke-static {v2, v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_97

    .line 1575
    .end local v8    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v9    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1594
    .end local v7    # "i":I
    :catchall_97
    move-exception v2

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1595
    throw v2

    .line 1594
    :cond_a2
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1598
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appIdAllowList":[I
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "n":I
    :cond_ab
    return-void
.end method
