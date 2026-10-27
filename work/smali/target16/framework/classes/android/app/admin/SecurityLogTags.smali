.class public Landroid/app/admin/SecurityLogTags;
.super Ljava/lang/Object;
.source "SecurityLogTags.java"


# static fields
.field public static final greylist-max-o SECURITY_ADB_SHELL_COMMAND:I = 0x33452

.field public static final greylist-max-o SECURITY_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final greylist-max-o SECURITY_ADB_SYNC_RECV:I = 0x33453

.field public static final greylist-max-o SECURITY_ADB_SYNC_SEND:I = 0x33454

.field public static final greylist-max-o SECURITY_APP_PROCESS_START:I = 0x33455

.field public static final blacklist SECURITY_BACKUP_SERVICE_TOGGLED:I = 0x3347c

.field public static final blacklist SECURITY_BLUETOOTH_CONNECTION:I = 0x33477

.field public static final blacklist SECURITY_BLUETOOTH_DISCONNECTION:I = 0x33478

.field public static final blacklist SECURITY_CAMERA_POLICY_SET:I = 0x33472

.field public static final greylist-max-o SECURITY_CERT_AUTHORITY_INSTALLED:I = 0x3346d

.field public static final greylist-max-o SECURITY_CERT_AUTHORITY_REMOVED:I = 0x3346e

.field public static final greylist-max-o SECURITY_CERT_VALIDATION_FAILURE:I = 0x33471

.field public static final greylist-max-o SECURITY_CRYPTO_SELF_TEST_COMPLETED:I = 0x3346f

.field public static final greylist-max-o SECURITY_KEYGUARD_DISABLED_FEATURES_SET:I = 0x33465

.field public static final greylist-max-o SECURITY_KEYGUARD_DISMISSED:I = 0x33456

.field public static final greylist-max-o SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final greylist-max-o SECURITY_KEYGUARD_SECURED:I = 0x33458

.field public static final greylist-max-o SECURITY_KEY_DESTROYED:I = 0x3346a

.field public static final greylist-max-o SECURITY_KEY_GENERATED:I = 0x33468

.field public static final greylist-max-o SECURITY_KEY_IMPORTED:I = 0x33469

.field public static final greylist-max-o SECURITY_KEY_INTEGRITY_VIOLATION:I = 0x33470

.field public static final greylist-max-o SECURITY_LOGGING_STARTED:I = 0x3345b

.field public static final greylist-max-o SECURITY_LOGGING_STOPPED:I = 0x3345c

.field public static final greylist-max-o SECURITY_LOG_BUFFER_SIZE_CRITICAL:I = 0x3345f

.field public static final greylist-max-o SECURITY_MAX_PASSWORD_ATTEMPTS_SET:I = 0x33464

.field public static final greylist-max-o SECURITY_MAX_SCREEN_LOCK_TIMEOUT_SET:I = 0x33463

.field public static final greylist-max-o SECURITY_MEDIA_MOUNTED:I = 0x3345d

.field public static final greylist-max-o SECURITY_MEDIA_UNMOUNTED:I = 0x3345e

.field public static final blacklist SECURITY_NFC_DISABLED:I = 0x3347e

.field public static final blacklist SECURITY_NFC_ENABLED:I = 0x3347d

.field public static final greylist-max-o SECURITY_OS_SHUTDOWN:I = 0x3345a

.field public static final greylist-max-o SECURITY_OS_STARTUP:I = 0x33459

.field public static final blacklist SECURITY_PACKAGE_INSTALLED:I = 0x33479

.field public static final blacklist SECURITY_PACKAGE_UNINSTALLED:I = 0x3347b

.field public static final blacklist SECURITY_PACKAGE_UPDATED:I = 0x3347a

.field public static final blacklist SECURITY_PASSWORD_CHANGED:I = 0x33474

.field public static final blacklist SECURITY_PASSWORD_COMPLEXITY_REQUIRED:I = 0x33473

.field public static final greylist-max-o SECURITY_PASSWORD_COMPLEXITY_SET:I = 0x33461

.field public static final greylist-max-o SECURITY_PASSWORD_EXPIRATION_SET:I = 0x33460

.field public static final greylist-max-o SECURITY_PASSWORD_HISTORY_LENGTH_SET:I = 0x33462

.field public static final greylist-max-o SECURITY_REMOTE_LOCK:I = 0x33466

.field public static final greylist-max-o SECURITY_USER_RESTRICTION_ADDED:I = 0x3346b

.field public static final greylist-max-o SECURITY_USER_RESTRICTION_REMOVED:I = 0x3346c

.field public static final blacklist SECURITY_WIFI_CONNECTION:I = 0x33475

.field public static final blacklist SECURITY_WIFI_DISCONNECTION:I = 0x33476

.field public static final greylist-max-o SECURITY_WIPE_FAILED:I = 0x33467


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeSecurityAdbShellCommand(Ljava/lang/String;)V
    .registers 2

    .line 156
    const v0, 0x33452

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 157
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbShellInteractive()V
    .registers 2

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33451

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 153
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbSyncRecv(Ljava/lang/String;)V
    .registers 2

    .line 160
    const v0, 0x33453

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 161
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbSyncSend(Ljava/lang/String;)V
    .registers 2

    .line 164
    const v0, 0x33454

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 165
    return-void
.end method

.method public static greylist-max-o writeSecurityAppProcessStart(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object p4, p5

    move-object p5, p6

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33455

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 169
    return-void
.end method

.method public static blacklist writeSecurityBackupServiceToggled(Ljava/lang/String;II)V
    .registers 3

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347c

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 325
    return-void
.end method

.method public static blacklist writeSecurityBluetoothConnection(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33477

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 305
    return-void
.end method

.method public static blacklist writeSecurityBluetoothDisconnection(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 308
    const v0, 0x33478

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 309
    return-void
.end method

.method public static blacklist writeSecurityCameraPolicySet(Ljava/lang/String;III)V
    .registers 4

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33472

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 285
    return-void
.end method

.method public static blacklist writeSecurityCertAuthorityInstalled(ILjava/lang/String;I)V
    .registers 3

    .line 264
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3346d

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 265
    return-void
.end method

.method public static blacklist writeSecurityCertAuthorityRemoved(ILjava/lang/String;I)V
    .registers 3

    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3346e

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 269
    return-void
.end method

.method public static greylist-max-o writeSecurityCertValidationFailure(Ljava/lang/String;)V
    .registers 2

    .line 280
    const v0, 0x33471

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 281
    return-void
.end method

.method public static greylist-max-o writeSecurityCryptoSelfTestCompleted(I)V
    .registers 2

    .line 272
    const v0, 0x3346f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 273
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyDestroyed(ILjava/lang/String;I)V
    .registers 3

    .line 252
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3346a

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 253
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyGenerated(ILjava/lang/String;I)V
    .registers 3

    .line 244
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33468

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 245
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyImported(ILjava/lang/String;I)V
    .registers 3

    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33469

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 249
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyIntegrityViolation(Ljava/lang/String;I)V
    .registers 2

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33470

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 277
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDisabledFeaturesSet(Ljava/lang/String;III)V
    .registers 4

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33465

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 233
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDismissAuthAttempt(II)V
    .registers 2

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33457

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 177
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDismissed()V
    .registers 2

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33456

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 173
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardSecured()V
    .registers 2

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33458

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 181
    return-void
.end method

.method public static greylist-max-o writeSecurityLogBufferSizeCritical()V
    .registers 2

    .line 208
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 209
    return-void
.end method

.method public static greylist-max-o writeSecurityLoggingStarted()V
    .registers 2

    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 193
    return-void
.end method

.method public static greylist-max-o writeSecurityLoggingStopped()V
    .registers 2

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 197
    return-void
.end method

.method public static greylist-max-o writeSecurityMaxPasswordAttemptsSet(Ljava/lang/String;III)V
    .registers 4

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33464

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 229
    return-void
.end method

.method public static greylist-max-o writeSecurityMaxScreenLockTimeoutSet(Ljava/lang/String;IIJ)V
    .registers 5

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33463

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 225
    return-void
.end method

.method public static greylist-max-o writeSecurityMediaMounted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 200
    const v0, 0x3345d

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 201
    return-void
.end method

.method public static greylist-max-o writeSecurityMediaUnmounted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 204
    const v0, 0x3345e

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 205
    return-void
.end method

.method public static blacklist writeSecurityNfcDisabled()V
    .registers 2

    .line 332
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3347e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 333
    return-void
.end method

.method public static blacklist writeSecurityNfcEnabled()V
    .registers 2

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3347d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 329
    return-void
.end method

.method public static greylist-max-o writeSecurityOsShutdown()V
    .registers 2

    .line 188
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 189
    return-void
.end method

.method public static greylist-max-o writeSecurityOsStartup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 184
    const v0, 0x33459

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 185
    return-void
.end method

.method public static blacklist writeSecurityPackageInstalled(Ljava/lang/String;JI)V
    .registers 4

    .line 312
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33479

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 313
    return-void
.end method

.method public static blacklist writeSecurityPackageUninstalled(Ljava/lang/String;JI)V
    .registers 4

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347b

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 321
    return-void
.end method

.method public static blacklist writeSecurityPackageUpdated(Ljava/lang/String;JI)V
    .registers 4

    .line 316
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3347a

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 317
    return-void
.end method

.method public static blacklist writeSecurityPasswordChanged(II)V
    .registers 2

    .line 292
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33474

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 293
    return-void
.end method

.method public static blacklist writeSecurityPasswordComplexityRequired(Ljava/lang/String;III)V
    .registers 4

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33473

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 289
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordComplexitySet(Ljava/lang/String;IIIIIIIIII)V
    .registers 11

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    filled-new-array/range {p0 .. p10}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33461

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 217
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordExpirationSet(Ljava/lang/String;IIJ)V
    .registers 5

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33460

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 213
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordHistoryLengthSet(Ljava/lang/String;III)V
    .registers 4

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33462

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 221
    return-void
.end method

.method public static greylist-max-o writeSecurityRemoteLock(Ljava/lang/String;II)V
    .registers 3

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33466

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 237
    return-void
.end method

.method public static greylist-max-o writeSecurityUserRestrictionAdded(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3346b

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 257
    return-void
.end method

.method public static greylist-max-o writeSecurityUserRestrictionRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3346c

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 261
    return-void
.end method

.method public static blacklist writeSecurityWifiConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 296
    const v0, 0x33475

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 297
    return-void
.end method

.method public static blacklist writeSecurityWifiDisconnection(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 300
    const v0, 0x33476

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    return-void
.end method

.method public static greylist-max-o writeSecurityWipeFailed(Ljava/lang/String;I)V
    .registers 2

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33467

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 241
    return-void
.end method
