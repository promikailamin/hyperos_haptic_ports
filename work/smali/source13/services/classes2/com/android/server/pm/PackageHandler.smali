.class final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "PackageHandler.java"


# instance fields
.field private final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 68
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 70
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {v0, p2}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 71
    return-void
.end method

.method private getDefaultIntegrityVerificationResponse()I
    .registers 2

    .line 408
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 28
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/16 v4, -0x16

    const/4 v5, 0x1

    const-wide/32 v6, 0x40000

    packed-switch v0, :pswitch_data_52e

    :pswitch_10
    goto/16 :goto_52c

    .line 387
    :pswitch_12
    :try_start_12
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 388
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "unused_static_shared_lib_min_cache_period"

    sget-wide v8, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 387
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_39} :catch_3b

    .line 396
    goto/16 :goto_52c

    .line 393
    :catch_3b
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prune unused static shared libraries :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52c

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_5a
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 381
    .local v0, "messageCode":I
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    .local v3, "object":Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v4, v0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->runMessage(ILjava/lang/Object;)Z

    .line 383
    goto/16 :goto_52c

    .line 202
    .end local v0    # "messageCode":I
    .end local v3    # "object":Ljava/lang/Object;
    :pswitch_67
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 203
    .local v0, "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 205
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v3, :cond_52c

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isIntegrityVerificationComplete()Z

    move-result v8

    if-nez v8, :cond_52c

    .line 206
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v8

    .line 207
    .local v8, "params":Lcom/android/server/pm/VerificationParams;
    iget-object v9, v8, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 209
    .local v9, "originUri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integrity verification timed out for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "errorMsg":Ljava/lang/String;
    const-string v11, "PackageManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    nop

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageHandler;->getDefaultIntegrityVerificationResponse()I

    move-result v11

    .line 212
    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageHandler;->getDefaultIntegrityVerificationResponse()I

    move-result v11

    if-ne v11, v5, :cond_c6

    .line 217
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integrity check times out, continuing with "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 219
    :cond_c6
    invoke-virtual {v8, v4, v10}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 224
    :goto_c9
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 225
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    :cond_d6
    const-string v4, "integrity_verification"

    invoke-static {v6, v7, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 233
    invoke-virtual {v8}, Lcom/android/server/pm/VerificationParams;->handleIntegrityVerificationFinished()V

    .line 234
    .end local v8    # "params":Lcom/android/server/pm/VerificationParams;
    .end local v9    # "originUri":Landroid/net/Uri;
    .end local v10    # "errorMsg":Ljava/lang/String;
    goto/16 :goto_52c

    .line 282
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_e0
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 284
    .restart local v0    # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 285
    .restart local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_10e

    .line 286
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Integrity verification with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found. It may be invalid or overridden by verifier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    goto/16 :goto_52c

    .line 291
    :cond_10e
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 292
    .local v8, "response":I
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v9

    .line 293
    .local v9, "params":Lcom/android/server/pm/VerificationParams;
    iget-object v10, v9, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 295
    .local v10, "originUri":Landroid/net/Uri;
    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 297
    if-ne v8, v5, :cond_140

    .line 298
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integrity check passed for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 300
    :cond_140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integrity check failed for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 305
    :goto_156
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v4

    if-eqz v4, :cond_163

    .line 306
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 309
    :cond_163
    const-string v4, "integrity_verification"

    invoke-static {v6, v7, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 314
    invoke-virtual {v9}, Lcom/android/server/pm/VerificationParams;->handleIntegrityVerificationFinished()V

    .line 315
    goto/16 :goto_52c

    .line 138
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v8    # "response":I
    .end local v9    # "params":Lcom/android/server/pm/VerificationParams;
    .end local v10    # "originUri":Landroid/net/Uri;
    :pswitch_16d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_17f

    .line 140
    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v6, 0x1d

    if-ne v4, v6, :cond_17a

    move v3, v5

    .line 141
    .local v3, "killApp":Z
    :cond_17a
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 143
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "killApp":Z
    :cond_17f
    goto/16 :goto_52c

    .line 129
    :pswitch_181
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_186
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/InstallArgs;

    .line 131
    .local v0, "args":Lcom/android/server/pm/InstallArgs;
    if-eqz v0, :cond_18f

    .line 132
    invoke-virtual {v0, v5}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z

    .line 134
    .end local v0    # "args":Lcom/android/server/pm/InstallArgs;
    :cond_18f
    monitor-exit v3

    .line 135
    goto/16 :goto_52c

    .line 134
    :catchall_192
    move-exception v0

    monitor-exit v3
    :try_end_194
    .catchall {:try_start_186 .. :try_end_194} :catchall_192

    throw v0

    .line 353
    :pswitch_195
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 354
    .local v0, "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 355
    .local v3, "sessionId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 356
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/VerificationParams;

    .line 357
    .local v4, "params":Lcom/android/server/pm/VerificationParams;
    if-eqz v4, :cond_52c

    .line 358
    iget-object v5, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 360
    .local v5, "originUri":Landroid/net/Uri;
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable rollback timed out for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v8, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 363
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v8, "enable_rollback"

    invoke-static {v6, v7, v8, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 366
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleRollbackEnabled()V

    .line 367
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v6, "rollbackTimeoutIntent":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v7, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v9, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 376
    .end local v5    # "originUri":Landroid/net/Uri;
    .end local v6    # "rollbackTimeoutIntent":Landroid/content/Intent;
    goto/16 :goto_52c

    .line 328
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "sessionId":I
    .end local v4    # "params":Lcom/android/server/pm/VerificationParams;
    :pswitch_20a
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 329
    .restart local v0    # "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 330
    .local v3, "enableRollbackCode":I
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 331
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/VerificationParams;

    .line 332
    .restart local v4    # "params":Lcom/android/server/pm/VerificationParams;
    if-nez v4, :cond_23a

    .line 333
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid rollback enabled token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    goto/16 :goto_52c

    .line 338
    :cond_23a
    iget-object v8, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 340
    if-eq v3, v5, :cond_27b

    .line 341
    iget-object v5, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 342
    .restart local v5    # "originUri":Landroid/net/Uri;
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v5    # "originUri":Landroid/net/Uri;
    :cond_27b
    const-string v5, "enable_rollback"

    invoke-static {v6, v7, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 349
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleRollbackEnabled()V

    .line 350
    goto/16 :goto_52c

    .line 318
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "enableRollbackCode":I
    .end local v4    # "params":Lcom/android/server/pm/VerificationParams;
    :pswitch_285
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 319
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/content/pm/InstantAppRequest;

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 318
    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    .line 325
    goto/16 :goto_52c

    .line 151
    :pswitch_2a9
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->writePackageList(I)V

    .line 152
    goto/16 :goto_52c

    .line 154
    :pswitch_2b2
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 155
    .local v0, "verificationId":I
    iget v8, v2, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_2b9

    move v3, v5

    .line 156
    .local v3, "streaming":Z
    :cond_2b9
    iget-object v5, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageVerificationState;

    .line 158
    .local v5, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v5, :cond_380

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v8

    if-eqz v8, :cond_2cd

    .line 160
    goto/16 :goto_52c

    .line 162
    :cond_2cd
    if-nez v3, :cond_2d7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v8

    if-eqz v8, :cond_2d7

    .line 164
    goto/16 :goto_52c

    .line 167
    :cond_2d7
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v8

    check-cast v15, Lcom/android/server/pm/PackageVerificationResponse;

    .line 169
    .local v15, "response":Lcom/android/server/pm/PackageVerificationResponse;
    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v14

    .line 170
    .local v14, "params":Lcom/android/server/pm/VerificationParams;
    iget-object v8, v14, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 172
    .local v13, "originUri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Verification timed out for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "errorMsg":Ljava/lang/String;
    const-string v8, "PackageManager"

    invoke-static {v8, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v14}, Lcom/android/server/pm/VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    .line 176
    .local v16, "user":Landroid/os/UserHandle;
    iget v8, v15, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_343

    .line 177
    const-string v4, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Continuing with installation of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v4, v15, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v8, v15, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v5, v4, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 179
    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v4, v14, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iget-object v8, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v8, v0

    move-object/from16 v17, v9

    move-object v9, v13

    move-object v6, v12

    .end local v12    # "errorMsg":Ljava/lang/String;
    .local v6, "errorMsg":Ljava/lang/String;
    move v12, v4

    move-object v7, v13

    .end local v13    # "originUri":Landroid/net/Uri;
    .local v7, "originUri":Landroid/net/Uri;
    move-object/from16 v13, v16

    move-object v4, v14

    .end local v14    # "params":Lcom/android/server/pm/VerificationParams;
    .restart local v4    # "params":Lcom/android/server/pm/VerificationParams;
    move-object/from16 v14, v17

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    move/from16 v18, v3

    move-object v3, v4

    goto :goto_365

    .line 183
    .end local v4    # "params":Lcom/android/server/pm/VerificationParams;
    .end local v6    # "errorMsg":Ljava/lang/String;
    .end local v7    # "originUri":Landroid/net/Uri;
    .restart local v12    # "errorMsg":Ljava/lang/String;
    .restart local v13    # "originUri":Landroid/net/Uri;
    .restart local v14    # "params":Lcom/android/server/pm/VerificationParams;
    :cond_343
    move-object v6, v12

    move-object v7, v13

    .end local v12    # "errorMsg":Ljava/lang/String;
    .end local v13    # "originUri":Landroid/net/Uri;
    .restart local v6    # "errorMsg":Ljava/lang/String;
    .restart local v7    # "originUri":Landroid/net/Uri;
    const/4 v10, -0x1

    const/4 v11, 0x0

    iget v12, v14, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iget-object v8, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v8, v0

    move-object v9, v7

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move/from16 v18, v3

    move-object v3, v14

    .end local v14    # "params":Lcom/android/server/pm/VerificationParams;
    .local v3, "params":Lcom/android/server/pm/VerificationParams;
    .local v18, "streaming":Z
    move-object/from16 v14, v17

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 186
    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 188
    iget v4, v15, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v8, v15, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v5, v4, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 191
    :goto_365
    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v4

    if-eqz v4, :cond_372

    .line 192
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    :cond_372
    const-string/jumbo v4, "verification"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 198
    invoke-virtual {v3}, Lcom/android/server/pm/VerificationParams;->handleVerificationFinished()V

    .line 199
    goto/16 :goto_52c

    .line 158
    .end local v6    # "errorMsg":Ljava/lang/String;
    .end local v7    # "originUri":Landroid/net/Uri;
    .end local v15    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v16    # "user":Landroid/os/UserHandle;
    .end local v18    # "streaming":Z
    .local v3, "streaming":Z
    :cond_380
    move/from16 v18, v3

    .end local v3    # "streaming":Z
    .restart local v18    # "streaming":Z
    goto/16 :goto_52c

    .line 238
    .end local v0    # "verificationId":I
    .end local v5    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v18    # "streaming":Z
    :pswitch_384
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 240
    .restart local v0    # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 241
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_3b2

    .line 242
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verification with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto/16 :goto_52c

    .line 247
    :cond_3b2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_3d8

    .line 248
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verification with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already complete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    goto/16 :goto_52c

    .line 252
    :cond_3d8
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageVerificationResponse;

    .line 253
    .local v5, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v6, v5, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v7, v5, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 255
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v6

    if-eqz v6, :cond_52c

    .line 256
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v6

    .line 257
    .local v6, "params":Lcom/android/server/pm/VerificationParams;
    iget-object v7, v6, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 259
    .restart local v7    # "originUri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v8

    if-eqz v8, :cond_417

    .line 260
    iget v4, v5, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/16 v22, 0x0

    iget v8, v6, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    .line 261
    invoke-virtual {v6}, Lcom/android/server/pm/VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v24

    iget-object v9, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 260
    move/from16 v19, v0

    move-object/from16 v20, v7

    move/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v25, v9

    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_41c

    .line 264
    :cond_417
    const-string v8, "Install not allowed"

    invoke-virtual {v6, v4, v8}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 269
    :goto_41c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v4

    if-eqz v4, :cond_429

    .line 270
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    :cond_429
    const-string/jumbo v4, "verification"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 276
    invoke-virtual {v6}, Lcom/android/server/pm/VerificationParams;->handleVerificationFinished()V

    .line 277
    .end local v6    # "params":Lcom/android/server/pm/VerificationParams;
    .end local v7    # "originUri":Landroid/net/Uri;
    goto/16 :goto_52c

    .line 148
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v5    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_437
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writePendingRestrictions()V

    .line 149
    goto/16 :goto_52c

    .line 145
    :pswitch_43e
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettings()V

    .line 146
    goto/16 :goto_52c

    .line 101
    :pswitch_445
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_463

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling post-install for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_463
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PostInstallData;

    .line 104
    .local v0, "data":Lcom/android/server/pm/PostInstallData;
    iget v4, v2, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_474

    move v3, v5

    .line 105
    .local v3, "didRestore":Z
    :cond_474
    iget-object v4, v1, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 107
    if-eqz v0, :cond_48c

    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v4, :cond_48c

    .line 108
    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 111
    :cond_48c
    if-eqz v0, :cond_498

    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_498

    .line 112
    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_4de

    .line 113
    :cond_498
    if-eqz v0, :cond_4be

    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    if-eqz v4, :cond_4be

    .line 115
    iget-object v4, v0, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    .line 116
    .local v4, "args":Lcom/android/server/pm/InstallArgs;
    iget-object v5, v0, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    .line 118
    .local v5, "parentRes":Lcom/android/server/pm/PackageInstalledInfo;
    iget-object v6, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    invoke-virtual {v6}, Lcom/android/server/pm/OriginInfo;->getTiming()Lcom/android/server/pm/InstallationTiming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/InstallationTiming;->setFinished()V

    .line 119
    iget-object v6, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    invoke-virtual {v6}, Lcom/android/server/pm/OriginInfo;->getTiming()Lcom/android/server/pm/InstallationTiming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/InstallationTiming;->dump()V

    .line 120
    iget-object v6, v1, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v7, v0, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v8, v0, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/InstallPackageHelper;->handlePackagePostInstall(Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/InstallArgs;Z)V

    .end local v4    # "args":Lcom/android/server/pm/InstallArgs;
    .end local v5    # "parentRes":Lcom/android/server/pm/PackageInstalledInfo;
    goto :goto_4dd

    .line 121
    :cond_4be
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_4dd

    .line 123
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing to do for post-install token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4de

    .line 121
    :cond_4dd
    :goto_4dd
    nop

    .line 126
    :goto_4de
    const-string/jumbo v4, "postInstall"

    iget v5, v2, Landroid/os/Message;->arg1:I

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 127
    .end local v0    # "data":Lcom/android/server/pm/PostInstallData;
    .end local v3    # "didRestore":Z
    goto :goto_52c

    .line 85
    :pswitch_4ea
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/HandlerParams;

    .line 86
    .local v0, "params":Lcom/android/server/pm/HandlerParams;
    if-eqz v0, :cond_52c

    .line 87
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_50c

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init_copy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_50c
    const-string/jumbo v3, "queueInstall"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 88
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 90
    const-string/jumbo v3, "startCopy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/server/pm/HandlerParams;->startCopy()V

    .line 92
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_52c

    .line 97
    .end local v0    # "params":Lcom/android/server/pm/HandlerParams;
    :pswitch_526
    iget-object v0, v1, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->sendPendingBroadcasts()V

    .line 98
    nop

    .line 400
    :cond_52c
    :goto_52c
    return-void

    nop

    :pswitch_data_52e
    .packed-switch 0x1
        :pswitch_526
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_4ea
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_445
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_43e
        :pswitch_437
        :pswitch_384
        :pswitch_2b2
        :pswitch_10
        :pswitch_10
        :pswitch_2a9
        :pswitch_285
        :pswitch_20a
        :pswitch_195
        :pswitch_181
        :pswitch_16d
        :pswitch_e0
        :pswitch_67
        :pswitch_5a
        :pswitch_12
        :pswitch_16d
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 78
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_9
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 79
    throw v1
.end method
