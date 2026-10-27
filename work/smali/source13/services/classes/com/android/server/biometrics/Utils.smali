.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static authenticatorStatusToBiometricConstant(I)I
    .registers 2
    .param p0, "status"    # I

    .line 323
    packed-switch p0, :pswitch_data_1c

    .line 351
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 346
    :pswitch_5
    const/16 v0, 0x12

    return v0

    .line 344
    :pswitch_8
    const/16 v0, 0x9

    return v0

    .line 341
    :pswitch_b
    const/4 v0, 0x7

    return v0

    .line 338
    :pswitch_d
    const/16 v0, 0xe

    return v0

    .line 335
    :pswitch_10
    const/16 v0, 0xb

    return v0

    .line 332
    :pswitch_13
    const/16 v0, 0xf

    return v0

    .line 326
    :pswitch_16
    const/16 v0, 0xc

    return v0

    .line 329
    :pswitch_19
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_3
        :pswitch_16
        :pswitch_13
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static authenticatorStrengthToPropertyStrength(I)I
    .registers 4
    .param p0, "strength"    # I

    .line 523
    sparse-switch p0, :sswitch_data_22

    .line 531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :sswitch_1c
    const/4 v0, 0x0

    return v0

    .line 527
    :sswitch_1e
    const/4 v0, 0x1

    return v0

    .line 529
    :sswitch_20
    const/4 v0, 0x2

    return v0

    :sswitch_data_22
    .sparse-switch
        0xf -> :sswitch_20
        0xff -> :sswitch_1e
        0xfff -> :sswitch_1c
    .end sparse-switch
.end method

.method static biometricConstantsToBiometricManager(I)I
    .registers 3
    .param p0, "biometricConstantsCode"    # I

    .line 262
    sparse-switch p0, :sswitch_data_30

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x1

    .local v0, "biometricManagerCode":I
    goto :goto_2e

    .line 284
    .end local v0    # "biometricManagerCode":I
    :sswitch_1d
    const/4 v0, 0x1

    .line 285
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 277
    .end local v0    # "biometricManagerCode":I
    :sswitch_1f
    const/16 v0, 0xf

    .line 278
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 274
    .end local v0    # "biometricManagerCode":I
    :sswitch_22
    const/16 v0, 0xc

    .line 275
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 268
    .end local v0    # "biometricManagerCode":I
    :sswitch_25
    const/16 v0, 0xb

    .line 269
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 281
    .end local v0    # "biometricManagerCode":I
    :sswitch_28
    const/4 v0, 0x0

    .line 282
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 271
    .end local v0    # "biometricManagerCode":I
    :sswitch_2a
    const/4 v0, 0x1

    .line 272
    .restart local v0    # "biometricManagerCode":I
    goto :goto_2e

    .line 264
    .end local v0    # "biometricManagerCode":I
    :sswitch_2c
    const/4 v0, 0x0

    .line 265
    .restart local v0    # "biometricManagerCode":I
    nop

    .line 291
    :goto_2e
    return v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_2a
        0x7 -> :sswitch_28
        0x9 -> :sswitch_28
        0xb -> :sswitch_25
        0xc -> :sswitch_22
        0xe -> :sswitch_25
        0xf -> :sswitch_1f
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method static combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V
    .registers 3
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 97
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v0

    .line 98
    .local v0, "deviceCredentialAllowed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    if-eqz v1, :cond_13

    .line 103
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    .local v1, "authenticators":I
    goto :goto_1c

    .line 106
    .end local v1    # "authenticators":I
    :cond_13
    if-eqz v0, :cond_19

    .line 107
    const v1, 0x80ff

    goto :goto_1b

    .line 108
    :cond_19
    const/16 v1, 0xff

    :goto_1b
    nop

    .line 111
    .restart local v1    # "authenticators":I
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 112
    return-void
.end method

.method private static containsFlag(II)Z
    .registers 3
    .param p0, "haystack"    # I
    .param p1, "needle"    # I

    .line 483
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static getAuthenticationTypeForResult(I)I
    .registers 4
    .param p0, "reason"    # I

    .line 307
    sparse-switch p0, :sswitch_data_20

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 313
    :sswitch_1e
    const/4 v0, 0x2

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x7 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 479
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "null"

    :goto_e
    return-object v0
.end method

.method public static getCurrentStrength(I)I
    .registers 5
    .param p0, "sensorId"    # I

    .line 424
    nop

    .line 425
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 427
    .local v0, "service":Landroid/hardware/biometrics/IBiometricService;
    :try_start_b
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v1

    .line 428
    :catch_10
    move-exception v1

    .line 429
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricUtils"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v2, 0x0

    return v2
.end method

.method static getPublicBiometricStrength(I)I
    .registers 2
    .param p0, "authenticators"    # I

    .line 139
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I
    .registers 2
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 150
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    return v0
.end method

.method private static hasInternalPermission(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 474
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAtLeastStrength(II)Z
    .registers 6
    .param p0, "sensorStrength"    # I
    .param p1, "requestedStrength"    # I

    .line 182
    and-int/lit16 p0, p0, 0x7fff

    .line 185
    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 186
    return v1

    .line 189
    :cond_8
    const/4 v0, 0x1

    .line 190
    .local v0, "i":I
    :goto_9
    if-gt v0, p1, :cond_14

    .line 191
    const/4 v2, 0x1

    if-ne v0, p0, :cond_f

    .line 192
    return v2

    .line 190
    :cond_f
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v0, v3, 0x1

    goto :goto_9

    .line 196
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requestedStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method public static isBackground(Ljava/lang/String;)Z
    .registers 10
    .param p0, "clientPackage"    # Ljava/lang/String;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking if the authenticating is in background, clientPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 561
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x1

    if-eqz v0, :cond_79

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_79

    .line 566
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 567
    .local v4, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 568
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-eqz v5, :cond_77

    .line 569
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, "topPackage":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 571
    const/4 v1, 0x0

    return v1

    .line 573
    :cond_53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running task, top: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVisible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 574
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 573
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v4    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "topActivity":Landroid/content/ComponentName;
    .end local v6    # "topPackage":Ljava/lang/String;
    :cond_77
    goto :goto_31

    .line 579
    :cond_78
    return v2

    .line 562
    :cond_79
    :goto_79
    const-string v3, "No running tasks reported"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v2
.end method

.method static isBiometricRequested(I)Z
    .registers 2
    .param p0, "authenticators"    # I

    .line 160
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 2
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 171
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isConfirmationSupported(I)Z
    .registers 2
    .param p0, "modality"    # I

    .line 356
    sparse-switch p0, :sswitch_data_8

    .line 361
    const/4 v0, 0x0

    return v0

    .line 359
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
    .end sparse-switch
.end method

.method static isCredentialRequested(I)Z
    .registers 2
    .param p0, "authenticators"    # I

    .line 119
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 2
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 128
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    return v0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 384
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 385
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 386
    const-string v2, "BiometricUtils"

    const-string v3, "Unable to get UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 390
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 393
    .local v2, "token":J
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1d
    if-ge v6, v5, :cond_2c

    aget v7, v4, v6
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_31

    .line 394
    .local v7, "profileId":I
    if-ne v7, p1, :cond_29

    .line 395
    nop

    .line 399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    const/4 v1, 0x1

    return v1

    .line 393
    .end local v7    # "profileId":I
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 399
    :cond_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    nop

    .line 402
    return v1

    .line 399
    :catchall_31
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    throw v1
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetUserId"    # I

    .line 75
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    .line 76
    return v0

    .line 79
    :cond_6
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_f

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_f

    .line 80
    return v0

    .line 83
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometric_debug_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 86
    return v0

    .line 88
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static isForeground(II)Z
    .registers 9
    .param p0, "callingUid"    # I
    .param p1, "callingPid"    # I

    .line 498
    const-string v0, "BiometricUtils"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 500
    const-string v3, "No running app processes found, defaulting to true"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v2

    .line 504
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 505
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 506
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2f

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p0, :cond_2f

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2a} :catch_33

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_2f

    .line 508
    return v2

    .line 504
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 513
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "i":I
    :cond_32
    goto :goto_39

    .line 511
    :catch_33
    move-exception v1

    .line 512
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 442
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    .line 443
    .local v0, "hasPermission":Z
    nop

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 445
    .local v1, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_1b

    .line 446
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 447
    .local v2, "keyguardPackage":Ljava/lang/String;
    :goto_1c
    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    return v3
.end method

.method public static isSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 470
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isStrongBiometric(I)Z
    .registers 5
    .param p0, "sensorId"    # I

    .line 406
    nop

    .line 407
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 409
    .local v0, "service":Landroid/hardware/biometrics/IBiometricService;
    :try_start_b
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    return v1

    .line 411
    :catch_16
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricUtils"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    const/4 v2, 0x0

    return v2
.end method

.method public static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 459
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 9
    .param p0, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "user"    # I

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    .line 488
    .local v0, "strongAuth":I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v2

    .line 489
    .local v2, "isEncrypted":Z
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    const/16 v3, 0x20

    .line 490
    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1c

    :cond_1a
    move v3, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v3, v1

    .line 491
    .local v3, "isLockDown":Z
    :goto_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEncrypted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isLockdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricUtils"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-nez v2, :cond_46

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move v1, v4

    :cond_46
    :goto_46
    return v1
.end method

.method static isValidAuthenticatorConfig(I)Z
    .registers 7
    .param p0, "authenticators"    # I

    .line 218
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 219
    return v0

    .line 224
    :cond_4
    const/high16 v1, -0x10000

    .line 226
    .local v1, "testBits":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    const/4 v3, 0x0

    const-string v4, "BiometricService"

    if-eqz v2, :cond_25

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v3

    .line 234
    :cond_25
    and-int/lit16 v2, p0, 0x7fff

    .line 235
    .local v2, "biometricBits":I
    if-nez v2, :cond_30

    .line 236
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 237
    return v0

    .line 238
    :cond_30
    const/16 v5, 0xf

    if-ne v2, v5, :cond_35

    .line 239
    return v0

    .line 240
    :cond_35
    const/16 v5, 0xff

    if-ne v2, v5, :cond_3a

    .line 241
    return v0

    .line 244
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v3
.end method

.method static isValidAuthenticatorConfig(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 3
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 207
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 208
    .local v0, "authenticators":I
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v1

    return v1
.end method

.method public static listContains([II)Z
    .registers 4
    .param p0, "haystack"    # [I
    .param p1, "needle"    # I

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 371
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 372
    const/4 v1, 0x1

    return v1

    .line 370
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static propertyStrengthToAuthenticatorStrength(I)I
    .registers 4
    .param p0, "strength"    # I

    .line 537
    packed-switch p0, :pswitch_data_26

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :pswitch_1c
    const/16 v0, 0xf

    return v0

    .line 541
    :pswitch_1f
    const/16 v0, 0xff

    return v0

    .line 539
    :pswitch_22
    const/16 v0, 0xfff

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static removeBiometricBits(I)I
    .registers 2
    .param p0, "authenticators"    # I

    .line 366
    and-int/lit16 v0, p0, -0x8000

    return v0
.end method
