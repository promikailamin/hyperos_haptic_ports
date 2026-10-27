.class public Lcom/android/server/pm/PackageInstallerSession$8;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "PackageInstallerSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$addedFiles:Ljava/util/List;

.field public final synthetic val$manualStartAndDestroy:Z

.field public final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field public final synthetic val$removedFiles:Ljava/util/List;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .registers 7

    .line 5824
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(II)V
    .registers 7

    if-eqz p2, :cond_122

    const/4 v0, 0x1

    if-eq p2, v0, :cond_122

    const/4 v1, 0x5

    if-eq p2, v1, :cond_122

    .line 5834
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_114

    :cond_1a
    const/16 v1, -0x14

    packed-switch p2, :pswitch_data_124

    :pswitch_1f
    goto/16 :goto_122

    .line 5901
    :pswitch_21
    :try_start_21
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "DataLoader reported unrecoverable failure."

    invoke-direct {p1, v1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_29
    move-exception p1

    goto/16 :goto_eb

    :catch_2c
    move-exception p1

    goto/16 :goto_103

    .line 5896
    :pswitch_2f
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "DataLoader unavailable"

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 5886
    :pswitch_45
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 5887
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v2, "Failed to prepare image."

    invoke-static {p2, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 5889
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_122

    .line 5890
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    return-void

    .line 5873
    :pswitch_5f
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 5874
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result p2

    if-eqz p2, :cond_80

    .line 5875
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5876
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    .line 5875
    invoke-interface {p2, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    .line 5876
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_85

    .line 5878
    :cond_80
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 5880
    :goto_85
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_122

    .line 5881
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    return-void

    .line 5865
    :pswitch_93
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    .line 5868
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/InstallationFileParcel;

    .line 5867
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/InstallationFileParcel;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$removedFiles:Ljava/util/List;

    .line 5869
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 5865
    invoke-interface {p2, p1, v1, v2}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    return-void

    .line 5857
    :pswitch_b9
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_122

    .line 5860
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    return-void

    .line 5847
    :pswitch_c7
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_122

    .line 5848
    new-instance p2, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {p2}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 5849
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v1, p2, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 5850
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_ea
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_21 .. :try_end_ea} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_ea} :catch_29

    return-void

    .line 5910
    :goto_eb
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 5911
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 5910
    invoke-static {p2, v0, p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    goto :goto_122

    .line 5905
    :goto_103
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 5906
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_122

    :cond_114
    :goto_114
    const/16 p1, 0x9

    if-eq p2, p1, :cond_119

    goto :goto_122

    .line 5837
    :cond_119
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    if-eqz p1, :cond_122

    .line 5838
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_122
    :goto_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x2
        :pswitch_c7
        :pswitch_b9
        :pswitch_93
        :pswitch_1f
        :pswitch_5f
        :pswitch_45
        :pswitch_2f
        :pswitch_21
    .end packed-switch
.end method
