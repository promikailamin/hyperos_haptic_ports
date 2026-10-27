.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContentCaptureManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 652
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 832
    :cond_11
    const/4 v0, 0x1

    .line 833
    .local v0, "showHistory":Z
    if-eqz p3, :cond_60

    .line 834
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_60

    aget-object v4, p3, v3

    .line 835
    .local v4, "arg":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_98

    :cond_23
    goto :goto_37

    :sswitch_24
    const-string v6, "--help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v5, 0x1

    goto :goto_37

    :sswitch_2e
    const-string v6, "--no-history"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v5, v2

    :goto_37
    packed-switch v5, :pswitch_data_a2

    .line 843
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid dump arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 840
    :pswitch_55
    const-string v1, "Usage: dumpsys content_capture [--no-history]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    return-void

    .line 837
    :pswitch_5b
    const/4 v0, 0x0

    .line 838
    nop

    .line 834
    .end local v4    # "arg":Ljava/lang/String;
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 848
    :cond_60
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 849
    :try_start_67
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 850
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_94

    .line 851
    const-string v1, "Requests history: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-nez v1, :cond_80

    .line 853
    const-string v1, "disabled by device config"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 854
    :cond_80
    if-eqz v0, :cond_90

    .line 855
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 856
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_93

    .line 859
    :cond_90
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 861
    :goto_93
    return-void

    .line 850
    :catchall_94
    move-exception v2

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v2

    nop

    :sswitch_data_98
    .sparse-switch
        0x417d0228 -> :sswitch_2e
        0x4f7504e1 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method

.method public finishSession(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 682
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 683
    :try_start_12
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 684
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    .line 685
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 790
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 791
    return-void

    .line 794
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 796
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 797
    :try_start_19
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 798
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_25

    const/4 v3, 0x0

    goto :goto_2d

    .line 799
    :cond_25
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_2d
    move-object v2, v3

    .line 800
    .local v2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_54

    .line 802
    const/4 v1, 0x0

    :try_start_30
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    .line 805
    goto :goto_53

    .line 803
    :catch_38
    move-exception v1

    .line 804
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceComponentName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_53
    return-void

    .line 800
    .end local v2    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 690
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 692
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 693
    :try_start_b
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 694
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 695
    .local v2, "connectedServiceComponentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3e

    .line 697
    const/4 v1, 0x0

    :try_start_1a
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    .line 700
    goto :goto_3d

    .line 698
    :catch_22
    move-exception v1

    .line 699
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send service component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 695
    .end local v2    # "connectedServiceComponentName":Landroid/content/ComponentName;
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 769
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 770
    return-void

    .line 773
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 775
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 776
    :try_start_19
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 777
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_25

    monitor-exit v1

    return-void

    .line 778
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 779
    .local v2, "componentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_50

    .line 781
    const/4 v1, 0x0

    :try_start_2c
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 784
    goto :goto_4f

    .line 782
    :catch_34
    move-exception v1

    .line 783
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void

    .line 779
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 751
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 752
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 754
    monitor-exit v0

    return-void

    .line 757
    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 758
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmDisabledByDeviceConfig(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misDisabledBySettingsLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v2

    if-nez v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move v1, v2

    .line 759
    .local v1, "enabled":Z
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_55

    .line 761
    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x2

    :goto_34
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    .line 764
    goto :goto_54

    .line 762
    :catch_39
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send isContentCaptureFeatureEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_54
    return-void

    .line 759
    .end local v1    # "enabled":Z
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method

.method synthetic lambda$getContentCaptureConditions$2$com-android-server-contentcapture-ContentCaptureManagerService$ContentCaptureManagerServiceStub(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getServiceSettingsActivity$1$com-android-server-contentcapture-ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    return-void
.end method

.method synthetic lambda$isContentCaptureFeatureEnabled$0$com-android-server-contentcapture-ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v1, "isContentCaptureFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$massertCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 869
    return-void
.end method

.method public registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/view/contentcapture/IContentCaptureOptionsCallback;

    .line 811
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmCallbacks(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 816
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 817
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object v1

    .line 819
    .local v1, "options":Landroid/content/ContentCaptureOptions;
    if-eqz v1, :cond_3b

    .line 821
    :try_start_1c
    invoke-interface {p2, v1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 824
    goto :goto_3b

    .line 822
    :catch_20
    move-exception v2

    .line 823
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send setContentCaptureOptions(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 705
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 709
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 710
    :try_start_17
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 711
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 712
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 713
    return-void

    .line 712
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public resetTemporaryService(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 873
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->resetTemporaryService(I)V

    .line 874
    return-void
.end method

.method public setDefaultServiceEnabled(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 885
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDefaultServiceEnabled(IZ)Z

    .line 886
    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .line 879
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 881
    return-void
.end method

.method public shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .registers 9
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 718
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 724
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 725
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 727
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    .line 728
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4d

    .line 742
    :cond_41
    new-instance v3, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    .line 745
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_6d

    .line 746
    return-void

    .line 730
    .restart local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "serviceName":Ljava/lang/String;
    const/16 v4, 0xe

    invoke-static {v4, v3}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;)V

    .line 734
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_60} :catch_61
    .catchall {:try_start_4d .. :try_end_60} :catchall_6d

    .line 738
    .end local v3    # "serviceName":Ljava/lang/String;
    goto :goto_6b

    .line 736
    :catch_61
    move-exception v3

    .line 737
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_62
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to send error message to client"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6b
    monitor-exit v1

    return-void

    .line 745
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .registers 22
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I
    .param p6, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 658
    move-object v1, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 663
    .local v2, "userId":I
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mgetAmInternal(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    .line 664
    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    move-result-object v12

    .line 666
    .local v12, "activityPresentationInfo":Landroid/content/pm/ActivityPresentationInfo;
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 667
    :try_start_25
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 668
    .local v3, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v4, "startSession()"

    invoke-static {v0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_61

    if-nez v0, :cond_4a

    .line 669
    const/4 v0, 0x4

    const/4 v4, 0x0

    move-object/from16 v14, p6

    :try_start_45
    invoke-static {v14, v0, v4}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 670
    monitor-exit v13

    return-void

    .line 668
    :cond_4a
    move-object/from16 v14, p6

    .line 672
    nop

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 672
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v12

    move/from16 v7, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    .line 674
    .end local v3    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v13

    .line 675
    return-void

    .line 674
    :catchall_61
    move-exception v0

    move-object/from16 v14, p6

    :goto_64
    monitor-exit v13
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_66

    throw v0

    :catchall_66
    move-exception v0

    goto :goto_64
.end method
