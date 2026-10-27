.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LauncherAppsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 2921
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2922
    invoke-static {p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmCallbackHandler(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getPrivateProfile()Landroid/os/UserHandle;
    .registers 5

    .line 2985
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2986
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 2987
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2988
    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    const/16 p0, -0x2710

    .line 2991
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    .line 2927
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2928
    const-string p1, "hide_privatespace_entry_point"

    .line 2929
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2928
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 2932
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->getPrivateProfile()Landroid/os/UserHandle;

    move-result-object p1

    .line 2933
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v0, -0x2710

    if-ne p2, v0, :cond_1d

    goto/16 :goto_a8

    .line 2936
    :cond_1d
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v0, 0x0

    :goto_28
    if-ge v0, p2, :cond_9f

    .line 2939
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 2940
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    .line 2941
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2942
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const-string/jumbo v4, "onSecureSettingsChange"

    invoke-static {v3, v2, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v3
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_71

    const-string v4, "LauncherAppsService"

    if-nez v3, :cond_73

    .line 2944
    :try_start_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSecureSettingsChange: Skipping - profile not enabled or not accessible for package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_71

    goto :goto_92

    :catchall_71
    move-exception p1

    goto :goto_95

    .line 2950
    :cond_73
    :try_start_73
    const-string/jumbo v2, "onUserConfigChanged: triggering onUserConfigChanged"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2953
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2952
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;

    move-result-object v2

    .line 2951
    invoke-interface {v1, v2}, Landroid/content/pm/IOnAppsChangedListener;->onUserConfigChanged(Landroid/content/pm/LauncherUserInfo;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_8a} :catch_8b
    .catchall {:try_start_73 .. :try_end_8a} :catchall_71

    goto :goto_92

    :catch_8b
    move-exception v1

    .line 2955
    :try_start_8c
    const-string/jumbo v2, "onUserConfigChanged: Callback failed "

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_71

    :goto_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 2960
    :goto_95
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2961
    throw p1

    .line 2960
    :cond_9f
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public register()V
    .registers 5

    .line 2966
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->getPrivateProfile()Landroid/os/UserHandle;

    move-result-object v0

    .line 2968
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_17

    .line 2970
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    goto :goto_25

    .line 2972
    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    .line 2973
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2972
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 2975
    :goto_25
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hide_privatespace_entry_point"

    .line 2976
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    .line 2975
    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
