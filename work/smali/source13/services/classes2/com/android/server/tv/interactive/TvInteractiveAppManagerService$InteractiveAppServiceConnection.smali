.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractiveAppServiceConnection"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 4
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 1872
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 1874
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    .line 1875
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1882
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1883
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    .line 1884
    .local v1, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    if-nez v1, :cond_1c

    .line 1886
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1887
    monitor-exit v0

    return-void

    .line 1889
    :cond_1c
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 1890
    .local v2, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {p2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/ITvInteractiveAppService;)V

    .line 1893
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v3

    if-nez v3, :cond_57

    .line 1894
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;)V
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_166

    .line 1896
    :try_start_43
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_4f
    .catchall {:try_start_43 .. :try_end_4e} :catchall_166

    .line 1899
    goto :goto_57

    .line 1897
    :catch_4f
    move-exception v3

    .line 1898
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_50
    const-string v4, "TvInteractiveAppManagerService"

    const-string v5, "error in registerCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 1903
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    .line 1904
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1905
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;>;"
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1906
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1907
    .local v4, "appLinkInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_166

    .line 1909
    .local v5, "identity":J
    :try_start_79
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 1910
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v7, v8}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_9a

    .line 1912
    :cond_8f
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v7, v8}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 1914
    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_9d} :catch_a3
    .catchall {:try_start_79 .. :try_end_9d} :catchall_a1

    .line 1919
    :goto_9d
    :try_start_9d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_166

    .line 1920
    goto :goto_c3

    .line 1919
    :catchall_a1
    move-exception v7

    goto :goto_c4

    .line 1915
    :catch_a3
    move-exception v7

    .line 1916
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_a4
    const-string v8, "TvInteractiveAppManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in notifyAppLinkInfo("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") when onServiceConnected"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_a1

    goto :goto_9d

    .line 1921
    .end local v4    # "appLinkInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;"
    .end local v5    # "identity":J
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_c3
    goto :goto_69

    .line 1919
    .restart local v4    # "appLinkInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;"
    .restart local v5    # "identity":J
    :goto_c4
    :try_start_c4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    nop

    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    throw v7

    .line 1924
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;>;"
    .end local v4    # "appLinkInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/tv/interactive/AppLinkInfo;Ljava/lang/Boolean;>;"
    .end local v5    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    :cond_c9
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_121

    .line 1925
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1926
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :goto_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_121

    .line 1927
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1928
    .local v4, "command":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_eb
    .catchall {:try_start_c4 .. :try_end_eb} :catchall_166

    .line 1930
    .restart local v5    # "identity":J
    :try_start_eb
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 1931
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f5} :catch_fb
    .catchall {:try_start_eb .. :try_end_f5} :catchall_f9

    .line 1936
    :goto_f5
    :try_start_f5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_166

    .line 1937
    goto :goto_11b

    .line 1936
    :catchall_f9
    move-exception v7

    goto :goto_11c

    .line 1932
    :catch_fb
    move-exception v7

    .line 1933
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_fc
    const-string v8, "TvInteractiveAppManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in sendAppLinkCommand("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") when onServiceConnected"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11a
    .catchall {:try_start_fc .. :try_end_11a} :catchall_f9

    goto :goto_f5

    .line 1938
    .end local v4    # "command":Landroid/os/Bundle;
    .end local v5    # "identity":J
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_11b
    goto :goto_db

    .line 1936
    .restart local v4    # "command":Landroid/os/Bundle;
    .restart local v5    # "identity":J
    :goto_11c
    :try_start_11c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    nop

    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    throw v7

    .line 1941
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    .end local v4    # "command":Landroid/os/Bundle;
    .end local v5    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    :cond_121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    .local v3, "tokensToBeRemoved":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 1945
    .local v5, "sessionToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v7

    iget v8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_14b

    .line 1947
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1949
    .end local v5    # "sessionToken":Landroid/os/IBinder;
    :cond_14b
    goto :goto_12e

    .line 1951
    :cond_14c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_150
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_164

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 1952
    .restart local v5    # "sessionToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v6, v5, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 1953
    .end local v5    # "sessionToken":Landroid/os/IBinder;
    goto :goto_150

    .line 1954
    .end local v1    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v3    # "tokensToBeRemoved":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_164
    monitor-exit v0

    .line 1955
    return-void

    .line 1954
    :catchall_166
    move-exception v1

    monitor-exit v0
    :try_end_168
    .catchall {:try_start_11c .. :try_end_168} :catchall_166

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 1962
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1966
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1967
    :try_start_f
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    .line 1968
    .local v1, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 1969
    .local v2, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-eqz v2, :cond_3b

    .line 1970
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    .line 1971
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    .line 1972
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/ITvInteractiveAppService;)V

    .line 1973
    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;)V

    .line 1975
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 1977
    .end local v1    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :cond_3b
    monitor-exit v0

    .line 1978
    return-void

    .line 1977
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_3d

    throw v1

    .line 1963
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (actual)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
