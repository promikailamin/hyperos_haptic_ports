.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "PackageHandler.java"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 10

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_271

    const/16 v2, 0x9

    const-wide/32 v3, 0x40000

    const/4 v5, 0x0

    if-eq v0, v2, :cond_22b

    const/16 v2, 0xd

    if-eq v0, v2, :cond_225

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1cf

    const/16 v2, 0x10

    if-eq v0, v2, :cond_19d

    packed-switch v0, :pswitch_data_27e

    packed-switch v0, :pswitch_data_28e

    goto/16 :goto_24e

    .line 246
    :pswitch_21
    :try_start_21
    iget-object p1, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 247
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "unused_static_shared_lib_min_cache_period"

    sget-wide v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {p0, p1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide v2, 0x7fffffffffffffffL

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    move-object p0, v0

    .line 253
    const-string p1, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to prune unused static shared libraries :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :pswitch_66
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 240
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->runMessage(ILjava/lang/Object;)Z

    return-void

    .line 123
    :pswitch_72
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_24e

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_7d

    goto :goto_7e

    :cond_7d
    move v1, v5

    .line 126
    :goto_7e
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void

    .line 116
    :pswitch_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/CleanUpArgs;

    if-eqz p1, :cond_24e

    .line 118
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/CleanUpArgs;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 212
    :pswitch_98
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 213
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 214
    iget-object v1, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerifyingSession;

    if-eqz v1, :cond_24e

    .line 217
    iget-object v2, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 219
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable rollback timed out for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 222
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v2, "enable_rollback"

    invoke-static {v3, v4, v2, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 225
    invoke-virtual {v1}, Lcom/android/server/pm/VerifyingSession;->handleRollbackEnabled()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 231
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v1, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    .line 187
    :pswitch_108
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 188
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 189
    iget-object v2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/VerifyingSession;

    if-nez v2, :cond_134

    .line 192
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rollback enabled token "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " received"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_134
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    if-eq p1, v1, :cond_171

    .line 200
    iget-object p0, v2, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 201
    const-string p1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to enable rollback for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string p1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Continuing with installation of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_171
    const-string p0, "enable_rollback"

    invoke-static {v3, v4, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 208
    invoke-virtual {v2}, Lcom/android/server/pm/VerifyingSession;->handleRollbackEnabled()V

    return-void

    .line 177
    :pswitch_17a
    iget-object v0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/content/pm/InstantAppRequest;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 177
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    return-void

    .line 133
    :pswitch_195
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->writePackageList(I)V

    return-void

    .line 136
    :cond_19d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 137
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move v1, v5

    .line 138
    :goto_1a5
    iget-object v2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v2, :cond_24e

    .line 140
    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_1b9

    goto/16 :goto_24e

    .line 145
    :cond_1b9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageVerificationResponse;

    if-nez v1, :cond_1c9

    .line 146
    iget v1, p1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended(I)Z

    move-result v1

    if-eqz v1, :cond_1c9

    goto/16 :goto_24e

    .line 151
    :cond_1c9
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v2, p1, p0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    .line 157
    :cond_1cf
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 159
    iget-object v1, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageVerificationState;

    if-nez v1, :cond_1f9

    .line 161
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification with id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_1f9
    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 167
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification with id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " already complete."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_21b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 172
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1, p1, p0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    .line 130
    :cond_225
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    return-void

    .line 88
    :cond_22b
    iget-object v0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v2

    .line 89
    :try_start_230
    iget-object v0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 90
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 91
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_243

    goto :goto_244

    :cond_243
    move v1, v5

    .line 92
    :goto_244
    iget-object p1, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 93
    monitor-exit v2
    :try_end_24c
    .catchall {:try_start_230 .. :try_end_24c} :catchall_26d

    if-nez v0, :cond_24f

    :cond_24e
    :goto_24e
    return-void

    .line 102
    :cond_24f
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onRestoreFinished()V

    .line 103
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 104
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onInstallCompleted()V

    .line 105
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->runPostInstallRunnable()V

    .line 106
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->isInstallExistingForUser()Z

    move-result p1

    if-nez p1, :cond_266

    .line 107
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V

    .line 113
    :cond_266
    const-string/jumbo p0, "postInstall"

    invoke-static {v3, v4, p0, v6}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :catchall_26d
    move-exception v0

    move-object p0, v0

    .line 93
    :try_start_26f
    monitor-exit v2
    :try_end_270
    .catchall {:try_start_26f .. :try_end_270} :catchall_26d

    throw p0

    .line 79
    :cond_271
    iget-object p0, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->sendPendingBroadcasts(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_27e
    .packed-switch 0x13
        :pswitch_195
        :pswitch_17a
        :pswitch_108
        :pswitch_98
        :pswitch_84
        :pswitch_72
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x1b
        :pswitch_66
        :pswitch_21
        :pswitch_72
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 72
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_8
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 73
    throw p0
.end method
