.class public abstract Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static authenticatorStatusToBiometricConstant(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_22

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_8
    const/16 p0, 0x12

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/16 p0, 0xe

    return p0

    :pswitch_13
    const/16 p0, 0x15

    return p0

    :pswitch_16
    const/16 p0, 0xb

    return p0

    :pswitch_19
    const/16 p0, 0xf

    return p0

    :pswitch_1c
    const/16 p0, 0xc

    return p0

    :pswitch_1f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_19
        :pswitch_3
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static authenticatorStrengthToPropertyStrength(I)I
    .registers 4

    const/16 v0, 0xf

    if-eq p0, v0, :cond_27

    const/16 v0, 0xff

    if-eq p0, v0, :cond_25

    const/16 v0, 0xfff

    if-ne p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 618
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x2

    return p0
.end method

.method public static biometricConstantsToBiometricManager(I)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    const/4 v1, 0x1

    if-eq p0, v1, :cond_45

    const/4 v2, 0x7

    if-eq p0, v2, :cond_44

    const/16 v2, 0x9

    if-eq p0, v2, :cond_44

    const/16 v0, 0x12

    if-eq p0, v0, :cond_43

    const/16 v0, 0xb

    if-eq p0, v0, :cond_42

    const/16 v2, 0xc

    if-eq p0, v2, :cond_41

    const/16 v2, 0xe

    if-eq p0, v2, :cond_42

    const/16 v0, 0xf

    if-eq p0, v0, :cond_40

    const/16 v0, 0x14

    if-eq p0, v0, :cond_40

    const/16 v0, 0x15

    if-eq p0, v0, :cond_40

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled result code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_40
    return v0

    :cond_41
    return v2

    :cond_42
    return v0

    :cond_43
    return v1

    :cond_44
    return v0

    :cond_45
    return v1

    :cond_46
    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkPermissionOrShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    return-void

    .line 461
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V
    .registers 3

    .line 120
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 124
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    if-eqz v1, :cond_13

    .line 126
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    goto :goto_1b

    :cond_13
    if-eqz v0, :cond_19

    const v0, 0x80ff

    goto :goto_1b

    :cond_19
    const/16 v0, 0xff

    .line 134
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    return-void
.end method

.method public static containsFlag(II)Z
    .registers 2

    .line 0
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static getAuthenticationTypeForResult(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_21

    const/4 v1, 0x7

    if-ne p0, v1, :cond_a

    return v0

    .line 391
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 p0, 0x2

    return p0
.end method

.method public static getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string/jumbo p0, "null"

    return-object p0
.end method

.method public static getCurrentStrength(I)I
    .registers 3

    .line 511
    const-string v0, "biometric"

    .line 512
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 514
    :try_start_a
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 516
    const-string v0, "BiometricUtils"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getPublicBiometricStrength(I)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I
    .registers 1

    .line 208
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result p0

    return p0
.end method

.method public static hasInternalPermission(Landroid/content/Context;)Z
    .registers 2

    .line 561
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isAtLeastStrength(II)Z
    .registers 5

    and-int/lit16 p0, p0, 0x7fff

    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    move v2, v0

    :goto_a
    if-gt v2, p1, :cond_13

    if-ne v2, p0, :cond_f

    return v0

    :cond_f
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v0

    goto :goto_a

    .line 254
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", requestedStrength: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isBackground(Landroid/app/ActivityTaskManager;Ljava/lang/String;)Z
    .registers 9

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking if the authenticating is in background, clientPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    .line 650
    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_86

    .line 652
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_86

    .line 658
    :cond_27
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    .line 659
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3f

    .line 660
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return v3

    .line 666
    :cond_3f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_43
    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 667
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_43

    .line 669
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {v4, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_64

    return v3

    .line 673
    :cond_64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running task, top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isVisible: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_85
    return v0

    .line 653
    :cond_86
    :goto_86
    const-string p0, "No running tasks reported"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isBiometricRequested(I)Z
    .registers 1

    .line 218
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 1

    .line 229
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isConfirmationSupported(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static isCredentialRequested(I)Z
    .registers 2

    .line 0
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 1

    .line 186
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result p0

    return p0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .registers 8

    .line 471
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 473
    const-string p0, "BiometricUtils"

    const-string p1, "Unable to get UserManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 477
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 480
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0

    array-length v3, p0

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_2d

    aget v5, p0, v4
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_2b

    if-ne v5, p1, :cond_28

    .line 486
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :catchall_2b
    move-exception p0

    goto :goto_31

    :cond_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw p0
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .registers 4

    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 83
    :cond_6
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_f

    return v1

    .line 87
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "biometric_debug_enabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static isFaceVirtualEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 107
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "biometric_face_virtual_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "biometric_virtual_enabled"

    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_22

    :cond_21
    return v2

    :cond_22
    return v1
.end method

.method public static isFingerprintVirtualEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 97
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "biometric_fingerprint_virtual_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "biometric_virtual_enabled"

    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_22

    :cond_21
    return v2

    :cond_22
    return v1
.end method

.method public static isForeground(II)Z
    .registers 9

    .line 585
    const-string v0, "BiometricUtils"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_14

    .line 587
    const-string p0, "No running app processes found, defaulting to true"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_14
    move v4, v1

    .line 591
    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 592
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 593
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_30

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, p0, :cond_30

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_33

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_30

    return v3

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 599
    :catch_33
    const-string p0, "am.getRunningAppProcesses() failed"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return v1
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 529
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10402b6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 530
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 533
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-eqz v0, :cond_27

    if-eqz p0, :cond_27

    .line 534
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public static isMandatoryBiometricsRequested(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isOnlyStrongBiometricRequested(I)Z
    .registers 3

    .line 176
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    .line 177
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 557
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "com.android.settings"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isStrongBiometric(I)Z
    .registers 3

    .line 493
    const-string v0, "biometric"

    .line 494
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 496
    :try_start_a
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result p0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    .line 499
    const-string v0, "BiometricUtils"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 546
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "android"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 6

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    const/4 p1, 0x1

    .line 575
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v0

    const/4 v1, 0x2

    .line 576
    invoke-static {p0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const/16 v1, 0x20

    .line 577
    invoke-static {p0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    move p0, v2

    goto :goto_1d

    :cond_1c
    :goto_1c
    move p0, p1

    .line 578
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEncrypted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLockdown: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BiometricUtils"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_42

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v2

    :cond_42
    :goto_42
    return p1
.end method

.method public static isValidAuthenticatorConfig(Landroid/content/Context;I)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/high16 v1, -0x20000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    .line 288
    const-string v3, "BiometricService"

    if-eqz v1, :cond_21

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    and-int/lit16 v1, p1, 0x7fff

    if-nez v1, :cond_2c

    .line 298
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    return v0

    :cond_2c
    const/16 v4, 0xf

    if-ne v1, v4, :cond_31

    return v0

    :cond_31
    const/16 v4, 0xff

    if-ne v1, v4, :cond_36

    return v0

    .line 304
    :cond_36
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isMandatoryBiometricsRequested(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 306
    const-string p1, "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED"

    const-string v1, "Must have SET_BIOMETRIC_DIALOG_ADVANCED permission"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 311
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isValidAuthenticatorConfig(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;)Z
    .registers 2

    .line 265
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p1

    .line 266
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static listContains([II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 448
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 449
    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static propertyStrengthToAuthenticatorStrength(I)I
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/16 p0, 0xf

    return p0

    .line 632
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 p0, 0xff

    return p0

    :cond_25
    const/16 p0, 0xfff

    return p0
.end method

.method public static removeBiometricBits(I)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, -0x8000

    return p0
.end method

.method public static shouldApplyIdentityCheck(I)Z
    .registers 4

    .line 162
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isMandatoryBiometricsRequested(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 163
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 165
    :goto_12
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isOnlyStrongBiometricRequested(I)Z

    move-result p0

    if-eqz v0, :cond_1b

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    return v2
.end method
