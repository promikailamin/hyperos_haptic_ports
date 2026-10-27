.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 767
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 768
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 769
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 773
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "StorageManagerService"

    packed-switch v0, :pswitch_data_1b0

    goto/16 :goto_1af

    .line 906
    :pswitch_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1d

    .line 909
    goto/16 :goto_1af

    .line 907
    :catch_1d
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1af

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    .local v0, "listener":Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    if-eqz v1, :cond_33

    .line 897
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    invoke-static {v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$mnotifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    goto/16 :goto_1af

    .line 900
    :cond_33
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$monCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;I)V

    .line 902
    goto/16 :goto_1af

    .line 889
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 890
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/storage/VolumeInfo;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeStateChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 891
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 892
    goto/16 :goto_1af

    .line 885
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V

    .line 886
    goto/16 :goto_1af

    .line 779
    :pswitch_5b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleBootCompleted(Lcom/android/server/StorageManagerService;)V

    .line 780
    goto/16 :goto_1af

    .line 880
    :pswitch_62
    const-string v0, "Aborting idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 882
    goto/16 :goto_1af

    .line 875
    :pswitch_72
    const-string v0, "Running idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 877
    goto/16 :goto_1af

    .line 871
    :pswitch_82
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mresetIfBootedAndConnected(Lcom/android/server/StorageManagerService;)V

    .line 872
    goto/16 :goto_1af

    .line 866
    :pswitch_89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 867
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->-$$Nest$mforgetPartition(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    goto/16 :goto_1af

    .line 836
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :pswitch_98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 837
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-$$Nest$munmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 838
    goto/16 :goto_1af

    .line 860
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 863
    goto/16 :goto_1af

    .line 841
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 842
    .local v0, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "envState":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 844
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_1af

    .line 848
    new-instance v3, Landroid/content/Intent;

    .line 849
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 850
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 851
    const/high16 v4, 0x5000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 853
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 854
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1af

    .line 826
    .end local v0    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v1    # "envState":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :pswitch_11c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 827
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-$$Nest$misMountDisallowed(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring mount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " due to policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    goto :goto_1af

    .line 832
    :cond_149
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 833
    goto :goto_1af

    .line 787
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_14f
    const-string v0, "Running fstrim idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :try_start_154
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmLastMaintenance(Lcom/android/server/StorageManagerService;J)V

    .line 792
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLastMaintenanceFile(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLastMaintenance(Lcom/android/server/StorageManagerService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_16c} :catch_16d

    .line 795
    goto :goto_173

    .line 793
    :catch_16d
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to record last fstrim!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_173
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 802
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 803
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_1af

    .line 804
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1af

    .line 809
    .end local v0    # "callback":Ljava/lang/Runnable;
    :pswitch_183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/IStorageShutdownObserver;

    .line 810
    .local v0, "obs":Landroid/os/storage/IStorageShutdownObserver;
    const/4 v3, 0x0

    .line 812
    .local v3, "success":Z
    :try_start_188
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVold;->shutdown()V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_191} :catch_193

    .line 813
    const/4 v3, 0x1

    .line 816
    goto :goto_197

    .line 814
    :catch_193
    move-exception v4

    .line 815
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_197
    if-eqz v0, :cond_1af

    .line 819
    if-eqz v3, :cond_19c

    goto :goto_19d

    :cond_19c
    const/4 v1, -0x1

    :goto_19d
    :try_start_19d
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_1a1

    .line 821
    :goto_1a0
    goto :goto_1af

    .line 820
    :catch_1a1
    move-exception v1

    goto :goto_1a0

    .line 783
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v3    # "success":Z
    :pswitch_1a3
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleDaemonConnected(Lcom/android/server/StorageManagerService;)V

    .line 784
    goto :goto_1af

    .line 775
    :pswitch_1a9
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleSystemReady(Lcom/android/server/StorageManagerService;)V

    .line 776
    nop

    .line 913
    :cond_1af
    :goto_1af
    return-void

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_1a9
        :pswitch_1a3
        :pswitch_183
        :pswitch_14f
        :pswitch_11c
        :pswitch_b6
        :pswitch_a3
        :pswitch_98
        :pswitch_89
        :pswitch_82
        :pswitch_72
        :pswitch_62
        :pswitch_5b
        :pswitch_52
        :pswitch_3c
        :pswitch_23
        :pswitch_a
    .end packed-switch
.end method
