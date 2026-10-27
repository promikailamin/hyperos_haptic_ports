.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .line 574
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V
    .registers 8
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "realUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 1144
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_1a

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1150
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object v2

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    .line 1151
    return-void

    .line 1145
    .end local v1    # "callingUid":I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve overlay information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method private executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 8
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 1006
    if-eqz p1, :cond_59

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1011
    .local v0, "callingPid":I
    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#executeAllRequests  from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1015
    const/4 v2, 0x0

    .line 1016
    .local v2, "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_26
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 1017
    .local v4, "request":Landroid/content/om/OverlayManagerTransaction$Request;
    nop

    .line 1018
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerService$1;->executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;

    move-result-object v5

    .line 1017
    invoke-static {v2, v5}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    move-object v2, v5

    .line 1019
    .end local v4    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    goto :goto_2a

    .line 1024
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_56

    .line 1026
    .local v3, "ident":J
    :try_start_45
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5, v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_50

    .line 1028
    :try_start_4a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    nop

    .line 1030
    .end local v2    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v3    # "ident":J
    monitor-exit v1

    .line 1031
    return-void

    .line 1028
    .restart local v2    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "ident":J
    :catchall_50
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    nop

    .end local v0    # "callingPid":I
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v5

    .line 1030
    .end local v2    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v3    # "ident":J
    .restart local v0    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_56
    move-exception v2

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_56

    throw v2

    .line 1007
    .end local v0    # "callingPid":I
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;
    .registers 10
    .param p1, "request"    # Landroid/content/om/OverlayManagerTransaction$Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 929
    const-string v0, "Transaction contains a null request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const-string v1, "Transaction overlay identifier must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 935
    .local v0, "callingUid":I
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_31

    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-ne v1, v4, :cond_1d

    goto :goto_31

    .line 963
    :cond_1d
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v1

    .line 964
    .local v1, "realUserId":I
    iget-object v4, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    goto :goto_78

    .line 937
    .end local v1    # "realUserId":I
    :cond_31
    :goto_31
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_127

    .line 946
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_109

    .line 951
    const/4 v1, -0x1

    .line 955
    .restart local v1    # "realUserId":I
    iget-object v4, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_77

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v5

    .line 957
    invoke-virtual {v5, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 956
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_77

    .line 958
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " does own packagename "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_77
    :goto_77
    nop

    .line 967
    :goto_78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 969
    .local v4, "ident":J
    :try_start_7c
    iget v6, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    packed-switch v6, :pswitch_data_14a

    .line 994
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_ec

    .line 991
    :pswitch_84
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    iget-object v3, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object v2
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_104

    .line 997
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    return-object v2

    .line 982
    :pswitch_94
    :try_start_94
    iget-object v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-string v3, "fabricated_overlay"

    .line 983
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInternal;

    .line 986
    .local v2, "fabricated":Landroid/os/FabricatedOverlayInternal;
    const-string/jumbo v3, "no fabricated overlay attached to request"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 988
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    move-result-object v3
    :try_end_ae
    .catchall {:try_start_94 .. :try_end_ae} :catchall_104

    .line 997
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 988
    return-object v3

    .line 979
    .end local v2    # "fabricated":Landroid/os/FabricatedOverlayInternal;
    :pswitch_b2
    :try_start_b2
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    iget-object v6, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v2
    :try_end_be
    .catchall {:try_start_b2 .. :try_end_be} :catchall_104

    .line 997
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    return-object v2

    .line 971
    :pswitch_c2
    const/4 v3, 0x0

    .line 972
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_c3
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    iget-object v7, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 973
    invoke-virtual {v6, v7, v2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v2

    .line 972
    invoke-static {v3, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 974
    .end local v3    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    iget-object v6, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 975
    invoke-virtual {v3, v6, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v3

    .line 974
    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    move-object v2, v3

    .line 976
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3
    :try_end_e8
    .catchall {:try_start_c3 .. :try_end_e8} :catchall_104

    .line 997
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    return-object v3

    .line 994
    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_ec
    :try_start_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupported request: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "realUserId":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    throw v2
    :try_end_104
    .catchall {:try_start_ec .. :try_end_104} :catchall_104

    .line 997
    .restart local v0    # "callingUid":I
    .restart local v1    # "realUserId":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    :catchall_104
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    throw v2

    .line 947
    .end local v1    # "realUserId":I
    .end local v4    # "ident":J
    :cond_109
    const v1, 0x534e4554

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "202768292"

    aput-object v7, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, ""

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 948
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Non-root shell cannot fabricate overlays"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unsupported for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_b2
        :pswitch_94
        :pswitch_84
    .end packed-switch
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1127
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setEnabledExclusive$0(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 695
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setEnabledExclusiveInCategory$1(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 734
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setLowestPriority$3(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 846
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setPriority$2(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 774
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method


# virtual methods
.method public commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 10
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#commit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6d

    .line 909
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_22
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6d

    .line 920
    nop

    .line 922
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 923
    nop

    .line 924
    return-void

    .line 910
    :catch_22
    move-exception v2

    .line 911
    .local v2, "e":Ljava/lang/Exception;
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_6d

    .line 913
    .local v3, "ident":J
    :try_start_27
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mrestoreSettings(Lcom/android/server/om/OverlayManagerService;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_67

    .line 915
    :try_start_2c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    const-string v5, "OverlayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v5

    .line 915
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_67
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v5
    :try_end_6d
    .catchall {:try_start_2c .. :try_end_6d} :catchall_6d

    .line 922
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_6d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 923
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1044
    new-instance v0, Lcom/android/server/om/DumpState;

    invoke-direct {v0}, Lcom/android/server/om/DumpState;-><init>()V

    .line 1045
    .local v0, "dumpState":Lcom/android/server/om/DumpState;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 1047
    const/4 v2, 0x0

    .line 1048
    .local v2, "opti":I
    :goto_a
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_b2

    .line 1049
    aget-object v3, p3, v2

    .line 1050
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_23

    .line 1051
    goto/16 :goto_b2

    .line 1053
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 1055
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1056
    const-string v1, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const-string v1, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    const-string v1, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const-string v1, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    const-string v1, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    const-string v1, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    const-string v1, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    return-void

    .line 1064
    :cond_51
    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1065
    array-length v4, p3

    if-lt v2, v4, :cond_62

    .line 1066
    const-string v1, "Error: user missing argument"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1070
    :cond_62
    :try_start_62
    aget-object v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6e

    .line 1071
    add-int/lit8 v2, v2, 0x1

    .line 1075
    goto :goto_b0

    .line 1072
    :catch_6e
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user argument is not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    return-void

    .line 1076
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_88
    const-string v4, "--verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1077
    invoke-virtual {v0, v5}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_b0

    .line 1079
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    .end local v3    # "opt":Ljava/lang/String;
    :goto_b0
    goto/16 :goto_a

    .line 1082
    :cond_b2
    :goto_b2
    array-length v3, p3

    if-ge v2, v3, :cond_137

    .line 1083
    aget-object v3, p3, v2

    .line 1084
    .local v3, "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1085
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_170

    :cond_c0
    goto/16 :goto_12d

    :sswitch_c2
    const-string v4, "basecodepath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x4

    goto :goto_12d

    :sswitch_cc
    const-string/jumbo v5, "packagename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    move v1, v4

    goto :goto_12d

    :sswitch_d7
    const-string v4, "isenabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x6

    goto :goto_12d

    :sswitch_e1
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x5

    goto :goto_12d

    :sswitch_ec
    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/16 v1, 0x9

    goto :goto_12d

    :sswitch_f7
    const-string v4, "ismutable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x7

    goto :goto_12d

    :sswitch_101
    const-string/jumbo v4, "userid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    move v1, v5

    goto :goto_12d

    :sswitch_10c
    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/16 v1, 0x8

    goto :goto_12d

    :sswitch_118
    const-string/jumbo v4, "targetpackagename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x2

    goto :goto_12d

    :sswitch_123
    const-string/jumbo v4, "targetoverlayablename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v1, 0x3

    :goto_12d
    packed-switch v1, :pswitch_data_19a

    .line 1099
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    goto :goto_137

    .line 1096
    :pswitch_134
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 1103
    .end local v3    # "arg":Ljava/lang/String;
    :cond_137
    :goto_137
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_147

    array-length v1, p3

    if-ge v2, v1, :cond_147

    .line 1104
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    .line 1105
    add-int/lit8 v2, v2, 0x1

    .line 1108
    :cond_147
    const-string v1, "dump"

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1110
    :try_start_153
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16b

    .line 1112
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1114
    :cond_16b
    monitor-exit v1

    .line 1115
    return-void

    .line 1114
    :catchall_16d
    move-exception v3

    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_153 .. :try_end_16f} :catchall_16d

    throw v3

    :sswitch_data_170
    .sparse-switch
        -0x685a1e7c -> :sswitch_123
        -0x4a674a60 -> :sswitch_118
        -0x4577865c -> :sswitch_10c
        -0x31d4cdda -> :sswitch_101
        -0x3188d944 -> :sswitch_f7
        0x302bcfe -> :sswitch_ec
        0x68ac491 -> :sswitch_e1
        0x1a483ad7 -> :sswitch_d7
        0x36391bd1 -> :sswitch_cc
        0x64f6f963 -> :sswitch_c2
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 7
    .param p1, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 578
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 579
    const-string v2, "getAllOverlays"

    invoke-direct {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 581
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_38

    .line 582
    :try_start_26
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v4

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_35

    .line 585
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 582
    return-object v4

    .line 583
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "userIdArg":I
    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 585
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "userIdArg":I
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 586
    throw v2
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 863
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 864
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_3a

    .line 869
    .local v2, "ident":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 870
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_31

    .line 873
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3a

    .line 876
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 870
    return-object v5

    .line 871
    :catchall_31
    move-exception v5

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :try_start_33
    throw v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 873
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 874
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    throw v4
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 876
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 877
    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 611
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 8
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userIdArg"    # I

    .line 617
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_46

    .line 622
    :cond_9
    const-wide/32 v0, 0x4000000

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 623
    const-string v2, "getOverlayInfo"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 625
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_41

    .line 626
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3e

    .line 629
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    return-object v4

    .line 627
    :catchall_3e
    move-exception v4

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userIdArg":I
    :try_start_40
    throw v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 629
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userIdArg":I
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    throw v2

    .line 618
    :cond_46
    :goto_46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 592
    if-nez p1, :cond_7

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 597
    :cond_7
    const-wide/32 v0, 0x4000000

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 598
    const-string v2, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 600
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3f

    .line 601
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 604
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    return-object v4

    .line 602
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3e
    throw v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 604
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "targetPackageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 605
    throw v2
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 882
    if-nez p1, :cond_3

    .line 883
    return-void

    .line 886
    :cond_3
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 887
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string v1, "invalidateCachesForOverlay"

    invoke-direct {p0, p2, v1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v1

    .line 888
    .local v1, "realUserId":I
    const-string v2, "invalidateCachesForOverlay"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 891
    .local v2, "ident":J
    :try_start_17
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_51

    .line 893
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_27
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1e .. :try_end_27} :catch_2a
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    .line 896
    goto :goto_49

    .line 897
    :catchall_28
    move-exception v5

    goto :goto_4f

    .line 894
    :catch_2a
    move-exception v5

    .line 895
    .local v5, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_2b
    const-string v6, "OverlayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalidate caches for overlay \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v5    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_28

    .line 899
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    nop

    .line 901
    return-void

    .line 897
    :goto_4f
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_28

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v1    # "realUserId":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_50
    throw v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 899
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v1    # "realUserId":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_51
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    throw v4
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1038
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1040
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 636
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 637
    return v0

    .line 642
    :cond_4
    const-wide/32 v1, 0x4000000

    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 643
    .local v3, "callingPid":I
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#setEnabled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMS#setEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 647
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 648
    .local v4, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setEnabled"

    invoke-direct {p0, p3, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 649
    .local v5, "realUserId":I
    const-string/jumbo v6, "setEnabled"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_9d

    .line 653
    .local v6, "ident":J
    :try_start_6d
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_97

    .line 655
    :try_start_74
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v10

    .line 656
    invoke-virtual {v10, v4, p2, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v10

    .line 655
    invoke-static {v9, v10}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_81
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_74 .. :try_end_81} :catch_8c
    .catchall {:try_start_74 .. :try_end_81} :catchall_8a

    .line 657
    const/4 v0, 0x1

    :try_start_82
    monitor-exit v8
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8a

    .line 663
    :try_start_83
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_9d

    .line 666
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    return v0

    .line 661
    :catchall_8a
    move-exception v0

    goto :goto_95

    .line 658
    :catch_8c
    move-exception v9

    .line 659
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8a

    .line 663
    :try_start_8e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_9d

    .line 666
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 659
    return v0

    .line 661
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_95
    :try_start_95
    monitor-exit v8
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_8a

    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 663
    .restart local v3    # "callingPid":I
    .restart local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_97
    move-exception v0

    :try_start_98
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_9d

    .line 666
    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_9d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 667
    throw v0
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 673
    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    if-nez p2, :cond_7

    goto/16 :goto_ac

    .line 679
    :cond_7
    const-wide/32 v1, 0x4000000

    :try_start_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 680
    .local v3, "callingPid":I
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#setEnabledExclusive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMS#setEnabledExclusive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 684
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 685
    .local v4, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setEnabledExclusive"

    invoke-direct {p0, p3, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 686
    .local v5, "realUserId":I
    const-string/jumbo v6, "setEnabledExclusive"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_70
    .catchall {:try_start_a .. :try_end_70} :catchall_a7

    .line 690
    .local v6, "ident":J
    :try_start_70
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_a1

    .line 692
    :try_start_77
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v4, v0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v11, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v11, v10}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 694
    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_8b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_77 .. :try_end_8b} :catch_96
    .catchall {:try_start_77 .. :try_end_8b} :catchall_94

    .line 696
    const/4 v0, 0x1

    :try_start_8c
    monitor-exit v8
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_94

    .line 702
    :try_start_8d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_a7

    .line 705
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    return v0

    .line 700
    :catchall_94
    move-exception v0

    goto :goto_9f

    .line 697
    :catch_96
    move-exception v9

    .line 698
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_97
    monitor-exit v8
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_94

    .line 702
    :try_start_98
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_a7

    .line 705
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 698
    return v0

    .line 700
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_9f
    :try_start_9f
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_94

    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_a0
    throw v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    .line 702
    .restart local v3    # "callingPid":I
    .restart local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_a1
    move-exception v0

    :try_start_a2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_a7

    .line 705
    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_a7
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 706
    throw v0

    .line 674
    :cond_ac
    :goto_ac
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 712
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 713
    return v0

    .line 718
    :cond_4
    const-wide/32 v1, 0x4000000

    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 719
    .local v3, "callingPid":I
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 723
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 724
    .local v4, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p2, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 726
    .local v5, "realUserId":I
    const-string/jumbo v6, "setEnabledExclusiveInCategory"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_90

    .line 730
    .local v6, "ident":J
    :try_start_59
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_8a

    .line 732
    :try_start_60
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v4, v10, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v12, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v12, v11}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 734
    invoke-virtual {v9, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_75
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_60 .. :try_end_75} :catch_7f
    .catchall {:try_start_60 .. :try_end_75} :catchall_7d

    .line 735
    :try_start_75
    monitor-exit v8
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7d

    .line 741
    :try_start_76
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_90

    .line 744
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    return v10

    .line 739
    :catchall_7d
    move-exception v0

    goto :goto_88

    .line 736
    :catch_7f
    move-exception v9

    .line 737
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7d

    .line 741
    :try_start_81
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_90

    .line 744
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 737
    return v0

    .line 739
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_88
    :try_start_88
    monitor-exit v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_7d

    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_89
    throw v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 741
    .restart local v3    # "callingPid":I
    .restart local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    .line 744
    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_90
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    throw v0
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 790
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 791
    return v0

    .line 796
    :cond_4
    const-wide/32 v1, 0x4000000

    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 797
    .local v3, "callingPid":I
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#setHighestPriority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMS#setHighestPriority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 801
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 802
    .local v4, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setHighestPriority"

    invoke-direct {p0, p2, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 803
    .local v5, "realUserId":I
    const-string/jumbo v6, "setHighestPriority"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 805
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_89

    .line 807
    .local v6, "ident":J
    :try_start_59
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_83

    .line 809
    :try_start_60
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v10

    .line 810
    invoke-virtual {v10, v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v10

    .line 809
    invoke-static {v9, v10}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_6d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_60 .. :try_end_6d} :catch_78
    .catchall {:try_start_60 .. :try_end_6d} :catchall_76

    .line 811
    const/4 v0, 0x1

    :try_start_6e
    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_76

    .line 817
    :try_start_6f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_89

    .line 820
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 811
    return v0

    .line 815
    :catchall_76
    move-exception v0

    goto :goto_81

    .line 812
    :catch_78
    move-exception v9

    .line 813
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_79
    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    .line 817
    :try_start_7a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_89

    .line 820
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 813
    return v0

    .line 815
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_81
    :try_start_81
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_76

    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    .line 817
    .restart local v3    # "callingPid":I
    .restart local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_83
    move-exception v0

    :try_start_84
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 818
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_89

    .line 820
    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_89
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 821
    throw v0
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 826
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 827
    return v0

    .line 832
    :cond_4
    const-wide/32 v1, 0x4000000

    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 833
    .local v3, "callingPid":I
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#setLowestPriority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMS#setLowestPriority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 837
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 838
    .local v4, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setLowestPriority"

    invoke-direct {p0, p2, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 839
    .local v5, "realUserId":I
    const-string/jumbo v6, "setLowestPriority"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_90

    .line 843
    .local v6, "ident":J
    :try_start_59
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_8a

    .line 845
    :try_start_60
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v11, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v11, v10}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 846
    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_74
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_60 .. :try_end_74} :catch_7f
    .catchall {:try_start_60 .. :try_end_74} :catchall_7d

    .line 847
    const/4 v0, 0x1

    :try_start_75
    monitor-exit v8
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7d

    .line 853
    :try_start_76
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_90

    .line 856
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    return v0

    .line 851
    :catchall_7d
    move-exception v0

    goto :goto_88

    .line 848
    :catch_7f
    move-exception v9

    .line 849
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7d

    .line 853
    :try_start_81
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_90

    .line 856
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    return v0

    .line 851
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_88
    :try_start_88
    monitor-exit v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_7d

    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_89
    throw v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 853
    .restart local v3    # "callingPid":I
    .restart local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    .line 856
    .end local v3    # "callingPid":I
    .end local v4    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_90
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    throw v0
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userIdArg"    # I

    .line 751
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_c3

    if-nez v3, :cond_e

    move/from16 v10, p3

    goto/16 :goto_c5

    .line 757
    :cond_e
    const-wide/32 v5, 0x4000000

    :try_start_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v7, v0

    .line 758
    .local v7, "callingPid":I
    const-string v0, "OverlayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMS#setPriority "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OMS#setPriority "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 764
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 765
    .local v8, "overlay":Landroid/content/om/OverlayIdentifier;
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 766
    .local v9, "parentOverlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v0, "setPriority"
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_bc

    move/from16 v10, p3

    :try_start_73
    invoke-direct {v1, v10, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v0

    move v11, v0

    .line 767
    .local v11, "realUserId":I
    const-string/jumbo v0, "setPriority"

    invoke-direct {v1, v8, v0, v11}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_ba

    .line 771
    .local v12, "ident":J
    :try_start_82
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_b4

    .line 773
    :try_start_89
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v11}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object v0

    iget-object v15, v1, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v4, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v15}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 774
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_9d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_89 .. :try_end_9d} :catch_a8
    .catchall {:try_start_89 .. :try_end_9d} :catchall_a6

    .line 775
    const/4 v0, 0x1

    :try_start_9e
    monitor-exit v14
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a6

    .line 781
    :try_start_9f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ba

    .line 784
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    return v0

    .line 779
    :catchall_a6
    move-exception v0

    goto :goto_b2

    .line 776
    :catch_a8
    move-exception v0

    .line 777
    .local v0, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_a9
    monitor-exit v14
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a6

    .line 781
    :try_start_aa
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ba

    .line 784
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 777
    const/4 v4, 0x0

    return v4

    .line 779
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_b2
    :try_start_b2
    monitor-exit v14
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_a6

    .end local v7    # "callingPid":I
    .end local v8    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v9    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local v11    # "realUserId":I
    .end local v12    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    :try_start_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    .line 781
    .restart local v7    # "callingPid":I
    .restart local v8    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v9    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .restart local v11    # "realUserId":I
    .restart local v12    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_b4
    move-exception v0

    :try_start_b5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_ba

    .line 784
    .end local v7    # "callingPid":I
    .end local v8    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v9    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local v11    # "realUserId":I
    .end local v12    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_ba
    move-exception v0

    goto :goto_bf

    :catchall_bc
    move-exception v0

    move/from16 v10, p3

    :goto_bf
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 785
    throw v0

    .line 751
    :cond_c3
    move/from16 v10, p3

    .line 752
    :goto_c5
    const/4 v4, 0x0

    return v4
.end method
