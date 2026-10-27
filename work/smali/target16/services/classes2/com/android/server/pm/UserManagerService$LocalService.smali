.class public Lcom/android/server/pm/UserManagerService$LocalService;
.super Lcom/android/server/pm/UserManagerInternal;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 8563
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
    .registers 3

    .line 8598
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 8599
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8600
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
    .registers 3

    .line 8584
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 8585
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8586
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    .registers 2

    .line 8977
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->addListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V

    return-void
.end method

.method public assignUserToDisplayOnStart(IIII)I
    .registers 12

    .line 8917
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 8918
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    move v6, v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 8920
    :goto_11
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserVisibilityMediator;->assignUserToDisplayOnStart(IIIIZ)I

    move-result p0

    return p0
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 14

    .line 8658
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public exists(I)Z
    .registers 2

    .line 8798
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public getApplicationRestrictionsForUser(I)Ljava/util/Map;
    .registers 6

    .line 9038
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmAppRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 9041
    :try_start_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9043
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 9042
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$smfindRestrictionsFilesLAr(Ljava/nio/file/Path;)Ljava/util/Map;

    move-result-object p1

    .line 9043
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 9042
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9044
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/util/AtomicFile;

    .line 9045
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 9044
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_48} :catch_4b
    .catchall {:try_start_7 .. :try_end_48} :catchall_49

    goto :goto_20

    :catchall_49
    move-exception p1

    goto :goto_5a

    :catch_4b
    move-exception p1

    goto :goto_4f

    .line 9047
    :cond_4d
    :try_start_4d
    monitor-exit p0

    return-object v0

    .line 9049
    :goto_4f
    const-string v0, "UserManagerService"

    const-string v1, "Error retrieving bundles "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9050
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    monitor-exit p0

    return-object p1

    .line 9052
    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_49

    throw p1
.end method

.method public getCommunalProfileId()I
    .registers 1

    .line 9027
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetCommunalProfileIdUnchecked(Lcom/android/server/pm/UserManagerService;)I

    move-result p0

    return p0
.end method

.method public getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;
    .registers 8

    .line 8729
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8730
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 8731
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_5c

    if-eqz v1, :cond_5a

    .line 8733
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserTypeDetails(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 8736
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8737
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x0

    .line 8739
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetProfileParentIdUnchecked(Lcom/android/server/pm/UserManagerService;I)I

    move-result p1

    .line 8740
    const-string/jumbo v4, "private_space_entrypoint_hidden"

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 8741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "hide_privatespace_entry_point"

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3f

    goto :goto_40

    :cond_3f
    move p1, v3

    .line 8740
    :goto_40
    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_43
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_22 .. :try_end_43} :catch_44

    goto :goto_4a

    .line 8744
    :catch_44
    const-string/jumbo p0, "private_space_entrypoint_hidden"

    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8747
    :cond_4a
    :goto_4a
    new-instance p0, Landroid/content/pm/LauncherUserInfo$Builder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p1

    iget v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, p1, v0, v2}, Landroid/content/pm/LauncherUserInfo$Builder;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 8748
    invoke-virtual {p0}, Landroid/content/pm/LauncherUserInfo$Builder;->build()Landroid/content/pm/LauncherUserInfo;

    move-result-object p0

    return-object p0

    :cond_5a
    const/4 p0, 0x0

    return-object p0

    :catchall_5c
    move-exception p0

    .line 8731
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public getMainDisplayAssignedToUser(I)I
    .registers 2

    .line 8962
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    move-result p0

    return p0
.end method

.method public getMainUserId()I
    .registers 1

    .line 9010
    invoke-static {}, Landroid/os/UserManager;->logStaticDeprecation()V

    .line 9011
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetMainUserIdUnchecked(Lcom/android/server/pm/UserManagerService;)I

    move-result p0

    return p0
.end method

.method public getProfileIds(IZ)[I
    .registers 4

    const/4 v0, 0x0

    .line 8706
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileIds(IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public getProfileIds(IZZ)[I
    .registers 12

    .line 8712
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8713
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetProfileIdsLU(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;ZZZ)Landroid/util/IntArray;

    move-result-object p0

    .line 8714
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_18
    move-exception v0

    move-object p0, v0

    .line 8715
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_18

    throw p0
.end method

.method public getProfileIdsExcludingHidden(IZ)[I
    .registers 6

    .line 8720
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8721
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetProfileIdsLU(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p0

    .line 8722
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 8723
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getProfileParentId(I)I
    .registers 2

    .line 8846
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetProfileParentIdUnchecked(Lcom/android/server/pm/UserManagerService;I)I

    move-result p0

    return p0
.end method

.method public getSupervisingProfileId()I
    .registers 1

    .line 9032
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetSupervisingProfileId(Lcom/android/server/pm/UserManagerService;)I

    move-result p0

    return p0
.end method

.method public getUserAssignedToDisplay(I)I
    .registers 2

    .line 8972
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0
.end method

.method public getUserIds()[I
    .registers 1

    .line 8695
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 8868
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8869
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 8870
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    if-nez p0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 8871
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    return-object p0

    :catchall_1b
    move-exception p0

    .line 8870
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 6

    .line 8876
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8877
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 8878
    new-array v2, v1, [Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_2b

    .line 8880
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 8882
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 8883
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public getUserProperties(I)Landroid/content/pm/UserProperties;
    .registers 4

    .line 8905
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserPropertiesInternal(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-nez p0, :cond_1e

    .line 8907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A null UserProperties was returned for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-object p0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .registers 3

    .line 8579
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getUserTypesForStatsd([I)[I
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8995
    :cond_4
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_30

    .line 8997
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_20

    .line 9000
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    const-string v3, ""

    invoke-static {v3}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    goto :goto_2d

    .line 9002
    :cond_20
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_30
    return-object v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3

    .line 8700
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    .line 8858
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8861
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 8862
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method

.method public isMainUserPermanentAdmin()Z
    .registers 1

    .line 9016
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p0

    return p0
.end method

.method public isProfileAccessible(IILjava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    return v0

    .line 8807
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8808
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7d

    .line 8809
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_7d

    .line 8820
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 8821
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_58

    .line 8832
    :cond_2a
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_3a

    iget p1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq p0, p1, :cond_35

    goto :goto_3a

    .line 8840
    :cond_35
    monitor-exit v1

    return v0

    :catchall_37
    move-exception p0

    goto/16 :goto_c4

    :cond_3a
    :goto_3a
    if-nez p4, :cond_3e

    .line 8838
    monitor-exit v1

    return v3

    .line 8835
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for unrelated profile "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    :goto_58
    if-eqz p4, :cond_7b

    .line 8825
    const-string p0, "UserManagerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for disabled profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8828
    :cond_7b
    monitor-exit v1

    return v3

    :cond_7d
    :goto_7d
    if-nez p4, :cond_a2

    .line 8815
    const-string p0, "UserManagerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for another profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8817
    monitor-exit v1

    return v3

    .line 8811
    :cond_a2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for another profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8840
    :goto_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_b .. :try_end_c5} :catchall_37

    throw p0
.end method

.method public isUserInitialized(I)Z
    .registers 2

    .line 8792
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 8793
    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isUserRunning(I)Z
    .registers 4

    .line 8670
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 8671
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    .line 8672
    monitor-exit v0

    if-eq p0, v1, :cond_1d

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isUserUnlocked(I)Z
    .registers 4

    .line 8780
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 8781
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    .line 8782
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0

    .line 8785
    :cond_21
    :goto_21
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :catchall_26
    move-exception p0

    .line 8782
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 4

    .line 8761
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 8762
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    .line 8763
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_2a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    goto :goto_25

    :cond_1a
    const/4 p1, 0x2

    if-eq p0, p1, :cond_23

    const/4 p1, 0x3

    if-ne p0, p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0

    .line 8766
    :cond_25
    :goto_25
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :catchall_2a
    move-exception p0

    .line 8763
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public isUserVisible(I)Z
    .registers 2

    .line 8941
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public isUserVisible(II)Z
    .registers 3

    .line 8946
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    return p0
.end method

.method public isVisibleBackgroundFullUser(I)Z
    .registers 6

    .line 8951
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8954
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 8955
    :goto_14
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$misProfileUnchecked(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v3

    .line 8956
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserVisible(I)Z

    move-result p0

    if-eqz p0, :cond_25

    if-nez v0, :cond_25

    if-nez v3, :cond_25

    return v2

    :cond_25
    return v1
.end method

.method public onEphemeralUserStop(I)V
    .registers 4

    .line 8638
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8639
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 8640
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 8643
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v1, 0x40

    invoke-static {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$maddUserInfoFlags(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;I)V

    .line 8644
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    .line 8646
    iput-boolean p0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 8649
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public onSystemUserVisibilityChanged(Z)V
    .registers 2

    .line 8987
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->onSystemUserVisibilityChanged(Z)V

    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 2

    .line 8664
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mremoveUserWithProfilesUnchecked(Lcom/android/server/pm/UserManagerService;I)Z

    move-result p0

    return p0
.end method

.method public removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
    .registers 3

    .line 8605
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 8606
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8607
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeUserState(I)V
    .registers 3

    .line 8688
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 8689
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 8690
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setDefaultCrossProfileIntentFilters(II)V
    .registers 5

    .line 8889
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 8890
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;

    move-result-object v1

    .line 8891
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method public setDeviceOwnerUserId(I)V
    .registers 5

    .line 9067
    const-string v0, "UserManagerService"

    const-string v1, "Setting device owner user as %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9068
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9069
    :try_start_16
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fputmDeviceOwnerUserId(Lcom/android/server/pm/UserManagerService;I)V

    .line 9070
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 5

    .line 8568
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .registers 3

    .line 8631
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8632
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V

    .line 8633
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 9

    .line 8612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8614
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2e

    .line 8615
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 8616
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_1a

    goto :goto_32

    .line 8620
    :cond_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v5, v4, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 8621
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, v3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 8622
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_30

    .line 8623
    :try_start_25
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    .line 8625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_50

    :catchall_30
    move-exception p0

    goto :goto_4e

    .line 8617
    :cond_32
    :goto_32
    :try_start_32
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserIcon: unknown user #"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8618
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_30

    .line 8625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 8622
    :goto_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_30

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_2e

    .line 8625
    :goto_50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8626
    throw p0
.end method

.method public setUserRestriction(ILjava/lang/String;Z)V
    .registers 4

    .line 8574
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionInner(ILjava/lang/String;Z)V

    return-void
.end method

.method public setUserState(II)V
    .registers 4

    .line 8681
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 8682
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 8683
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public shouldIgnorePrepareStorageErrors(I)Z
    .registers 3

    .line 8897
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8898
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_1f

    .line 8899
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_22

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    monitor-exit v0

    return p0

    .line 8900
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1d

    throw p0
.end method

.method public unassignUserFromDisplayOnStop(I)V
    .registers 2

    .line 8936
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->unassignUserFromDisplayOnStop(I)V

    return-void
.end method
