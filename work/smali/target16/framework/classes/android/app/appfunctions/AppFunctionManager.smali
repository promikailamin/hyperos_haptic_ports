.class public final Landroid/app/appfunctions/AppFunctionManager;
.super Ljava/lang/Object;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;,
        Landroid/app/appfunctions/AppFunctionManager$AccessHistory;,
        Landroid/app/appfunctions/AppFunctionManager$EnabledState;,
        Landroid/app/appfunctions/AppFunctionManager$AppFunctionAccessFlags;,
        Landroid/app/appfunctions/AppFunctionManager$AppFunctionAccessState;
    }
.end annotation


# static fields
.field public static final blacklist ACCESS_FLAG_MASK_ALL:I = 0x1f

.field public static final blacklist ACCESS_FLAG_MASK_OTHER:I = 0x6

.field public static final blacklist ACCESS_FLAG_MASK_USER:I = 0x18

.field public static final blacklist ACCESS_FLAG_OTHER_DENIED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_FLAG_OTHER_GRANTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_FLAG_PREGRANTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_FLAG_USER_DENIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_FLAG_USER_GRANTED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_REQUEST_STATE_DENIED:I = 0x1

.field public static final blacklist ACCESS_REQUEST_STATE_GRANTED:I = 0x0

.field public static final blacklist ACCESS_REQUEST_STATE_UNREQUESTABLE:I = 0x2

.field public static final blacklist ACTION_MANAGE_AGENT_APP_FUNCTION_ACCESS:Ljava/lang/String; = "android.app.appfunctions.action.MANAGE_AGENT_APP_FUNCTION_ACCESS"

.field public static final blacklist ACTION_MANAGE_APP_FUNCTION_ACCESS:Ljava/lang/String; = "android.app.appfunctions.action.MANAGE_APP_FUNCTION_ACCESS"

.field public static final blacklist ACTION_MANAGE_TARGET_APP_FUNCTION_ACCESS:Ljava/lang/String; = "android.app.appfunctions.action.MANAGE_TARGET_APP_FUNCTION_ACCESS"

.field public static final blacklist ACTION_REQUEST_APP_FUNCTION_ACCESS:Ljava/lang/String; = "android.app.appfunctions.action.REQUEST_APP_FUNCTION_ACCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_FUNCTION_STATE_DEFAULT:I = 0x0

.field public static final whitelist APP_FUNCTION_STATE_DISABLED:I = 0x2

.field public static final whitelist APP_FUNCTION_STATE_ENABLED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/appfunctions/IAppFunctionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IAppFunctionManager;Landroid/content/Context;)V
    .registers 3

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    .line 458
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 459
    return-void
.end method

.method private blacklist isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 640
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 645
    if-nez v0, :cond_23

    .line 646
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to get AppSearchManager."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 647
    return-void

    .line 652
    :cond_23
    new-instance v1, Landroid/app/appfunctions/AppFunctionManager$2;

    invoke-direct {v1, p0, p4}, Landroid/app/appfunctions/AppFunctionManager$2;-><init>(Landroid/app/appfunctions/AppFunctionManager;Landroid/os/OutcomeReceiver;)V

    .line 668
    invoke-static {p1, p2, v0, p3, v1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 674
    return-void
.end method


# virtual methods
.method public blacklist clearAccessHistory()V
    .registers 3

    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->clearAccessHistory(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 906
    nop

    .line 907
    return-void

    .line 904
    :catch_d
    move-exception v0

    .line 905
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist createRequestAccessIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 846
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IAppFunctionManager;->createRequestAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 847
    :catch_7
    move-exception p1

    .line 848
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation

    .line 489
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 496
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;JJ)V

    .line 502
    :try_start_23
    iget-object p1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    new-instance v1, Landroid/app/appfunctions/AppFunctionManager$1;

    invoke-direct {v1, p0, p2, p4}, Landroid/app/appfunctions/AppFunctionManager$1;-><init>(Landroid/app/appfunctions/AppFunctionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 503
    invoke-interface {p1, v0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 527
    if-eqz p1, :cond_33

    .line 528
    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_33} :catch_35

    .line 532
    :cond_33
    nop

    .line 533
    return-void

    .line 530
    :catch_35
    move-exception v0

    move-object p1, v0

    .line 531
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAccessFlags(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 741
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 743
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 739
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/appfunctions/IAppFunctionManager;->getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 744
    :catch_13
    move-exception p1

    .line 745
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAccessHistoryContentUri()Landroid/net/Uri;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 933
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 934
    invoke-static {}, Landroid/app/appfunctions/AppFunctionManager$AccessHistory;->-$$Nest$sfgetTARGET_USER_URI()Landroid/net/Uri;

    move-result-object v1

    .line 935
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 936
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 934
    return-object v0
.end method

.method public blacklist getAccessRequestState(Ljava/lang/String;)I
    .registers 3

    .line 720
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/appfunctions/AppFunctionManager;->getAccessRequestState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist getAccessRequestState(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 695
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 697
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 699
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 695
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/appfunctions/IAppFunctionManager;->getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 700
    :catch_13
    move-exception p1

    .line 701
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAgentAllowlist()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SignedPackage;",
            ">;"
        }
    .end annotation

    .line 880
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {v0}, Landroid/app/appfunctions/IAppFunctionManager;->getAgentAllowlist()Ljava/util/List;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 883
    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_23

    .line 884
    new-instance v4, Landroid/content/pm/SignedPackage;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v4, v5}, Landroid/content/pm/SignedPackage;-><init>(Landroid/content/pm/SignedPackageParcel;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_24

    .line 883
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 886
    :cond_23
    return-object v2

    .line 887
    :catch_24
    move-exception v0

    .line 888
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getDeviceSettingPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 866
    const v1, 0x1070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 867
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method public blacklist getValidAgents()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 810
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->getValidAgents(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 811
    :catch_d
    move-exception v0

    .line 812
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getValidTargets()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 828
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->getValidTargets(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 829
    :catch_d
    move-exception v0

    .line 830
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 564
    return-void
.end method

.method public whitelist isAppFunctionEnabled(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 592
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 593
    return-void
.end method

.method public blacklist revokeSelfAccess(Ljava/lang/String;)V
    .registers 3

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IAppFunctionManager;->revokeSelfAccess(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 796
    nop

    .line 797
    return-void

    .line 794
    :catch_7
    move-exception p1

    .line 795
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAppFunctionEnabled(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 619
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v5, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

    invoke-direct {v5, p3, p4}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 624
    :try_start_e
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object p3, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 625
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 627
    invoke-virtual {p3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 624
    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/appfunctions/IAppFunctionManager;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_21} :catch_23

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catch_23
    move-exception v0

    move-object p1, v0

    .line 631
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateAccessFlags(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 772
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 774
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 776
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 772
    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/appfunctions/IAppFunctionManager;->updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    .line 781
    nop

    .line 782
    return-void

    .line 779
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 780
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
