.class Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerLocalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 6341
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .registers 19
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "appId"    # I
    .param p6, "previousAppId"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6346
    .local p3, "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6347
    :try_start_6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/Installer;->buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_31

    move-object v3, v0

    .line 6350
    .local v3, "args":Landroid/os/ReconcileSdkDataArgs;
    move/from16 v4, p6

    :try_start_1a
    iput v4, v3, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_36

    .line 6352
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Installer;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_23} :catch_26
    .catchall {:try_start_1c .. :try_end_23} :catchall_36

    .line 6355
    nop

    .line 6356
    .end local v3    # "args":Landroid/os/ReconcileSdkDataArgs;
    :try_start_24
    monitor-exit v2

    .line 6357
    return-void

    .line 6353
    .restart local v3    # "args":Landroid/os/ReconcileSdkDataArgs;
    :catch_26
    move-exception v0

    .line 6354
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "userId":I
    .end local p5    # "appId":I
    .end local p6    # "previousAppId":I
    .end local p7    # "seInfo":Ljava/lang/String;
    .end local p8    # "flags":I
    throw v5

    .line 6356
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v3    # "args":Landroid/os/ReconcileSdkDataArgs;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "userId":I
    .restart local p5    # "appId":I
    .restart local p6    # "previousAppId":I
    .restart local p7    # "seInfo":Ljava/lang/String;
    .restart local p8    # "flags":I
    :catchall_31
    move-exception v0

    move/from16 v4, p6

    :goto_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_36

    throw v0

    :catchall_36
    move-exception v0

    goto :goto_34
.end method
