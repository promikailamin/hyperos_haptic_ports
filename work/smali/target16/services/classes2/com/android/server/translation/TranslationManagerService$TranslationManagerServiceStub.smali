.class public final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "TranslationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 303
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "TranslationManagerService"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_f

    return-void

    .line 305
    :cond_f
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p3}, Lcom/android/server/translation/TranslationManagerService;->access$1800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 306
    :try_start_16
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/android/server/translation/TranslationManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 308
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/translation/TranslationManagerService;->access$1900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_33

    .line 310
    const-string v0, "  "

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_35

    .line 312
    :cond_33
    :goto_33
    monitor-exit p3

    return-void

    :goto_35
    monitor-exit p3
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_31

    throw p0
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 13

    .line 261
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 262
    :try_start_7
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 263
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_9d

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    .line 265
    invoke-virtual {v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_35

    .line 268
    :try_start_1a
    invoke-interface {p1, v3, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception v0

    .line 270
    const-string v1, "TranslationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_35
    :goto_35
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 277
    :try_start_41
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_5c

    .line 282
    :try_start_54
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_5f
    .catchall {:try_start_54 .. :try_end_5b} :catchall_5c

    goto :goto_77

    :catchall_5c
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :catch_5f
    move-exception v0

    move-object p0, v0

    .line 284
    :try_start_61
    const-string p1, "TranslationManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_5c

    .line 287
    :goto_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9c

    :goto_7b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw p0

    :cond_7f
    const/4 p0, 0x2

    .line 291
    :try_start_80
    invoke-interface {p1, p0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception v0

    move-object p0, v0

    .line 293
    const-string p1, "TranslationManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    return-void

    :catchall_9d
    move-exception v0

    move-object p0, v0

    .line 263
    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9d

    throw p0
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v1, :cond_2b

    .line 201
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v2, "onSessionCreated"

    .line 202
    invoke-static {p0, p4, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_49

    .line 203
    :cond_27
    :goto_27
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    goto :goto_47

    .line 205
    :cond_2b
    const-string p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSessionCreated(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 206
    invoke-interface {p3, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 208
    :goto_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_25

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 322
    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;-><init>(Lcom/android/server/translation/TranslationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 323
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .registers 8

    .line 161
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v1, :cond_2a

    .line 163
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v2, "getTranslationCapabilities"

    .line 164
    invoke-static {p0, p4, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_48

    .line 165
    :cond_26
    :goto_26
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V

    goto :goto_46

    .line 168
    :cond_2a
    const-string p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onGetTranslationCapabilitiesLocked(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 171
    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_24

    throw p0
.end method

.method public onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p4}, Lcom/android/server/translation/TranslationManagerService;->access$1500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 179
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    if-eqz p0, :cond_19

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 179
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_1b

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 234
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 190
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 190
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 242
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 242
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .registers 12

    .line 215
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v1, "android.permission.MANAGE_UI_TRANSLATION"

    invoke-static {v0, v1}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$menforceCallerHasPermission(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 217
    :try_start_e
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, p8}, Lcom/android/server/translation/TranslationManagerService;->access$900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v0, :cond_33

    .line 218
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p8}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v2, "updateUiTranslationState"

    .line 219
    invoke-static {p0, p8, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_2b
    move-object p0, v0

    goto :goto_30

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_35

    .line 220
    :goto_30
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    .line 223
    :cond_33
    monitor-exit v1

    return-void

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_2d

    throw p0
.end method
