.class final Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;
.super Landroid/apphibernation/IAppHibernationService$Stub;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppHibernationServiceStub"
.end annotation


# instance fields
.field final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/apphibernation/AppHibernationService;

    .line 841
    invoke-direct {p0}, Landroid/apphibernation/IAppHibernationService$Stub;-><init>()V

    .line 842
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 843
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0, p2}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$mdump(Lcom/android/server/apphibernation/AppHibernationService;Ljava/io/PrintWriter;)V

    .line 889
    return-void
.end method

.method public getHibernatingPackagesForUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .line 873
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 874
    .local v0, "pkgsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernationStatsForUser(Ljava/util/Set;I)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 847
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 881
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationShellCommand;

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {v0, v1}, Lcom/android/server/apphibernation/AppHibernationShellCommand;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 883
    return-void
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isHibernating"    # Z

    .line 852
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 853
    return-void
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHibernating"    # Z

    .line 857
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 858
    return-void
.end method
