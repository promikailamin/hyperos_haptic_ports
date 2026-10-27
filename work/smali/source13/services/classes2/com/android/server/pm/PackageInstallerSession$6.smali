.class Lcom/android/server/pm/PackageInstallerSession$6;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$addedFiles:Ljava/util/List;

.field final synthetic val$manualStartAndDestroy:Z

.field final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field final synthetic val$removedFiles:Ljava/util/List;

.field final synthetic val$systemDataLoader:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 3961
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(II)V
    .registers 8
    .param p1, "dataLoaderId"    # I
    .param p2, "status"    # I

    .line 3964
    sparse-switch p2, :sswitch_data_120

    .line 3971
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_111

    .line 3968
    :sswitch_15
    return-void

    .line 3982
    :cond_16
    const/16 v0, -0x14

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_12e

    :pswitch_1c
    goto/16 :goto_10f

    .line 4038
    :pswitch_1e
    :try_start_1e
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "DataLoader reported unrecoverable failure."

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession$6;
    .end local p1    # "dataLoaderId":I
    .end local p2    # "status":I
    throw v2

    .line 4033
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession$6;
    .restart local p1    # "dataLoaderId":I
    .restart local p2    # "status":I
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v4, "DataLoader unavailable"

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 4035
    goto/16 :goto_10f

    .line 4023
    :pswitch_3d
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4024
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "Failed to prepare image."

    invoke-static {v2, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 4026
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v0, :cond_10f

    .line 4027
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_10f

    .line 4010
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4011
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 4012
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4013
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    .line 4012
    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 4013
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_7e

    .line 4015
    :cond_79
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4017
    :goto_7e
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v0, :cond_10f

    .line 4018
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_10f

    .line 4002
    :pswitch_8d
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 4005
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/InstallationFileParcel;

    .line 4004
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/InstallationFileParcel;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 4006
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 4002
    invoke-interface {v0, p1, v2, v3}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    .line 4007
    goto :goto_10f

    .line 3994
    :pswitch_b3
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v0, :cond_10f

    .line 3997
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    goto :goto_10f

    .line 3984
    :pswitch_c1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v0, :cond_10f

    .line 3985
    new-instance v0, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {v0}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 3986
    .local v0, "control":Landroid/content/pm/FileSystemControlParcel;
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v2, v0, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 3987
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v3}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v3

    invoke-interface {v2, p1, v3, v0, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_e4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e .. :try_end_e4} :catch_fe
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_e4} :catch_e5

    .line 3989
    .end local v0    # "control":Landroid/content/pm/FileSystemControlParcel;
    goto :goto_10f

    .line 4044
    :catch_e5
    move-exception v0

    .line 4047
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4048
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 4047
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    goto :goto_110

    .line 4041
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_fe
    move-exception v0

    .line 4042
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4043
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 4049
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_10f
    :goto_10f
    nop

    .line 4050
    :goto_110
    return-void

    .line 3972
    :cond_111
    :goto_111
    packed-switch p2, :pswitch_data_142

    .line 3979
    return-void

    .line 3974
    :pswitch_115
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    if-eqz v0, :cond_11e

    .line 3975
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3977
    :cond_11e
    return-void

    nop

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_15
        0x1 -> :sswitch_15
        0x5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x2
        :pswitch_c1
        :pswitch_b3
        :pswitch_8d
        :pswitch_1c
        :pswitch_58
        :pswitch_3d
        :pswitch_26
        :pswitch_1e
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x9
        :pswitch_115
    .end packed-switch
.end method
