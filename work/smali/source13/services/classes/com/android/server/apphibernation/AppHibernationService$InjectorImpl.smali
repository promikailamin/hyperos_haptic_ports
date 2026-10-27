.class final Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;
.super Ljava/lang/Object;
.source "AppHibernationService.java"

# interfaces
.implements Lcom/android/server/apphibernation/AppHibernationService$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InjectorImpl"
.end annotation


# static fields
.field private static final HIBERNATION_DIR_NAME:Ljava/lang/String; = "hibernation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 986
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 987
    new-instance v0, Lcom/android/server/apphibernation/UserLevelHibernationProto;

    invoke-direct {v0}, Lcom/android/server/apphibernation/UserLevelHibernationProto;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    .line 988
    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 1007
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1022
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalLevelDiskStore()Lcom/android/server/apphibernation/HibernationStateDiskStore;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation

    .line 1032
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "hibernation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    new-instance v2, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;

    invoke-direct {v2}, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;-><init>()V

    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1
.end method

.method public getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 997
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1002
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getStorageStatsManager()Landroid/app/usage/StorageStatsManager;
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    return-object v0
.end method

.method public getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .registers 2

    .line 1027
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method public getUserLevelDiskStore(I)Lcom/android/server/apphibernation/HibernationStateDiskStore;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;"
        }
    .end annotation

    .line 1039
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "hibernation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1040
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 1012
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public isOatArtifactDeletionEnabled()Z
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
