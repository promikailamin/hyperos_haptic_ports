.class final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "TranslationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/translation/TranslationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TranslationManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/translation/TranslationManagerService;

    .line 154
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0}, Lcom/android/server/translation/TranslationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TranslationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 305
    :cond_f
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 306
    :try_start_16
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v2, ""

    invoke-virtual {v1, v2, p2}, Lcom/android/server/translation/TranslationManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 308
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v1}, Lcom/android/server/translation/TranslationManagerService;->access$1900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 309
    .local v2, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    if-eqz v2, :cond_30

    .line 310
    const-string v3, "  "

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 312
    .end local v1    # "userId":I
    .end local v2    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :cond_30
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 15
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "userId"    # I

    .line 261
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 262
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 263
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_a1

    .line 264
    const/4 v0, 0x0

    if-eqz v1, :cond_82

    .line 265
    invoke-virtual {v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v2

    .line 266
    .local v2, "componentName":Landroid/content/ComponentName;
    const/4 v3, 0x1

    if-nez v2, :cond_37

    .line 268
    :try_start_1a
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 271
    goto :goto_37

    .line 269
    :catch_1e
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "TranslationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 277
    .local v10, "identity":J
    :try_start_43
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 278
    invoke-virtual {v4}, Lcom/android/server/translation/TranslationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_7d

    .line 282
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_57
    invoke-static {v4}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5e} :catch_5f
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7d

    .line 285
    goto :goto_78

    .line 283
    :catch_5f
    move-exception v3

    .line 284
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_60
    const-string v5, "TranslationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_7d

    .line 287
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_78
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    nop

    .line 289
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "identity":J
    goto :goto_a0

    .line 287
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "identity":J
    :catchall_7d
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v3

    .line 291
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "identity":J
    :cond_82
    const/4 v2, 0x2

    :try_start_83
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_87

    .line 294
    goto :goto_a0

    .line 292
    :catch_87
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TranslationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a0
    return-void

    .line 263
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .registers 10
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 201
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v3, "onSessionCreated"

    .line 202
    invoke-static {v2, p4, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 203
    :cond_24
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    goto :goto_46

    .line 205
    :cond_28
    const-string v2, "TranslationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionCreated(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 208
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :goto_46
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v1
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

    .line 322
    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;-><init>(Lcom/android/server/translation/TranslationManagerService;)V

    .line 323
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 325
    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .registers 10
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 163
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    if-eqz v1, :cond_27

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v3, "getTranslationCapabilities"

    .line 164
    invoke-static {v2, p4, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 165
    :cond_23
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V

    goto :goto_45

    .line 168
    :cond_27
    const-string v2, "TranslationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetTranslationCapabilitiesLocked(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 171
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :goto_45
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "activityDestroyed"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$1500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 254
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 179
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    .line 180
    if-eqz v1, :cond_19

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 183
    :cond_19
    return-void

    .line 179
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 6
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I

    .line 228
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 230
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    if-eqz v1, :cond_19

    .line 231
    nop

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 231
    invoke-virtual {v1, p1, v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V

    .line 234
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :cond_19
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 190
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 191
    if-eqz v1, :cond_15

    .line 192
    invoke-virtual {v1, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V

    .line 194
    :cond_15
    return-void

    .line 190
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I

    .line 240
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 242
    .local v1, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 243
    if-eqz v1, :cond_15

    .line 244
    invoke-virtual {v1, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V

    .line 246
    :cond_15
    return-void

    .line 242
    .end local v1    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "taskId"    # I
    .param p7, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/UiTranslationSpec;",
            "I)V"
        }
    .end annotation

    .line 215
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    move-object v1, p0

    move/from16 v2, p8

    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v3, "android.permission.MANAGE_UI_TRANSLATION"

    invoke-static {v0, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$menforceCallerHasPermission(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/translation/TranslationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 217
    :try_start_11
    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/translation/TranslationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, v2}, Lcom/android/server/translation/TranslationManagerService;->access$900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 218
    .local v0, "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    if-eqz v0, :cond_3d

    iget-object v4, v1, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v4, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v1, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v5, "updateUiTranslationState"

    .line 219
    invoke-static {v4, v2, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 220
    :cond_2e
    move-object v4, v0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    .line 223
    .end local v0    # "service":Lcom/android/server/translation/TranslationManagerServiceImpl;
    :cond_3d
    monitor-exit v3

    .line 224
    return-void

    .line 223
    :catchall_3f
    move-exception v0

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_3f

    throw v0
.end method
