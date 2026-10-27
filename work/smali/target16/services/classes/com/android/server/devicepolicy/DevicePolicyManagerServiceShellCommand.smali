.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "DevicePolicyManagerServiceShellCommand.java"


# instance fields
.field public mComponent:Landroid/content/ComponentName;

.field public mProvisioningContext:Ljava/lang/String;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mSetDoOnly:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method

.method public static safeToString(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 198
    const-string p0, "SAFE"

    return-object p0

    :cond_5
    const-string p0, "UNSAFE"

    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 75
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 76
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_11e

    goto/16 :goto_109

    :sswitch_14
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_27

    if-eqz v0, :cond_26

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_26
    return p0

    :catchall_27
    move-exception p0

    goto/16 :goto_113

    .line 76
    :sswitch_2a
    :try_start_2a
    const-string v1, "force-security-logs"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceSecurityLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_27

    if-eqz v0, :cond_3b

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3b
    return p0

    .line 76
    :sswitch_3c
    :try_start_3c
    const-string/jumbo v1, "set-profile-owner"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_27

    if-eqz v0, :cond_4e

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_4e
    return p0

    .line 76
    :sswitch_4f
    :try_start_4f
    const-string/jumbo v1, "set-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_27

    if-eqz v0, :cond_61

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_61
    return p0

    .line 76
    :sswitch_62
    :try_start_62
    const-string v1, "clear-freeze-period-record"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_27

    if-eqz v0, :cond_73

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_73
    return p0

    .line 76
    :sswitch_74
    :try_start_74
    const-string v1, "is-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_27

    if-eqz v0, :cond_85

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_85
    return p0

    .line 76
    :sswitch_86
    :try_start_86
    const-string/jumbo v1, "remove-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runRemoveActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_27

    if-eqz v0, :cond_98

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_98
    return p0

    .line 76
    :sswitch_99
    :try_start_99
    const-string v1, "is-operation-safe-by-reason"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperationByReason(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_27

    if-eqz v0, :cond_aa

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_aa
    return p0

    .line 76
    :sswitch_ab
    :try_start_ab
    const-string/jumbo v1, "set-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_b8
    .catchall {:try_start_ab .. :try_end_b8} :catchall_27

    if-eqz v0, :cond_bd

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_bd
    return p0

    .line 76
    :sswitch_be
    :try_start_be
    const-string/jumbo v1, "list-owners"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_27

    if-eqz v0, :cond_d0

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_d0
    return p0

    .line 76
    :sswitch_d1
    :try_start_d1
    const-string/jumbo v1, "set-device-owner"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_27

    if-eqz v0, :cond_e3

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_e3
    return p0

    .line 76
    :sswitch_e4
    :try_start_e4
    const-string/jumbo v1, "list-policy-exempt-apps"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListPolicyExemptApps(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_27

    if-eqz v0, :cond_f6

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_f6
    return p0

    .line 76
    :sswitch_f7
    :try_start_f7
    const-string v1, "force-network-logs"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceNetworkLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_103
    .catchall {:try_start_f7 .. :try_end_103} :catchall_27

    if-eqz v0, :cond_108

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_108
    return p0

    .line 104
    :cond_109
    :goto_109
    :try_start_109
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_27

    if-eqz v0, :cond_112

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_112
    return p0

    :goto_113
    if-eqz v0, :cond_11d

    .line 75
    :try_start_115
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_119

    goto :goto_11d

    :catchall_119
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11d
    :goto_11d
    throw p0

    :sswitch_data_11e
    .sparse-switch
        -0x7bce5670 -> :sswitch_f7
        -0x6c7042ec -> :sswitch_e4
        -0x6ace5bf9 -> :sswitch_d1
        -0x3ffc2fd1 -> :sswitch_be
        -0x35f34b02 -> :sswitch_ab
        -0x358ebd5d -> :sswitch_99
        -0x2e4a238f -> :sswitch_86
        -0x226644ca -> :sswitch_74
        -0x1ffc3f59 -> :sswitch_62
        0x20a8d153 -> :sswitch_4f
        0x2622c764 -> :sswitch_3c
        0x4f01fcba -> :sswitch_2a
        0x59fd14e8 -> :sswitch_14
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 65
    :try_start_4
    const-string v1, "DevicePolicyManager Service (device_policy) commands:\n\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 67
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_13
    move-exception p0

    if-eqz v0, :cond_1e

    .line 64
    :try_start_16
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw p0
.end method

.method public final onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .registers 4

    .line 110
    invoke-super {p0, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 114
    :cond_8
    const-string p2, "Usage: \n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final parseArgs()V
    .registers 4

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 358
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 359
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 362
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    goto :goto_0

    .line 364
    :cond_22
    const-string v1, "--device-owner-only"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    goto :goto_0

    .line 366
    :cond_2e
    const-string v1, "--provisioning-context"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 367
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :cond_54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public final parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    .line 376
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 378
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .registers 5

    .line 212
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 213
    const-string/jumbo p0, "no %ss\n"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_20

    const-string v0, ""

    goto :goto_23

    :cond_20
    const-string/jumbo v0, "s"

    :goto_23
    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d %s%s:\n"

    invoke-virtual {p1, p3, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I
    .registers 4

    .line 317
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    const/4 p0, 0x0

    .line 318
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runForceNetworkLogs(Ljava/io/PrintWriter;)I
    .registers 6

    .line 324
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 331
    const-string p0, "Success\n"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 328
    :cond_15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 329
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runForceSecurityLogs(Ljava/io/PrintWriter;)I
    .registers 6

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 344
    const-string p0, "Success\n"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 341
    :cond_15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 342
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runIsSafeOperation(Ljava/io/PrintWriter;)I
    .registers 5

    .line 180
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUnsafeOperationReason(I)I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v2

    .line 184
    :goto_15
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 183
    const-string v0, "Operation %s is %s. Reason: %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2
.end method

.method public final runIsSafeOperationByReason(Ljava/io/PrintWriter;)I
    .registers 3

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    move-result p0

    .line 193
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 192
    const-string v0, "Operations affected by %s are %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)I
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->printAllOwners(Ljava/io/PrintWriter;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runListPolicyExemptApps(Ljava/io/PrintWriter;)I
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "policy exempt app"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    return v1

    :cond_11
    move v2, v1

    :goto_12
    if-ge v2, p0, :cond_2a

    .line 233
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %d: %s\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    return v1
.end method

.method public final runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I
    .registers 5

    .line 349
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 350
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    const/4 p0, 0x0

    .line 351
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runRemoveActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 5

    .line 286
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 287
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 288
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Success: Admin removed %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 7

    .line 240
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 241
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Success: Active admin set to component %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetDeviceOwner(Ljava/io/PrintWriter;)I
    .registers 9

    .line 248
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    :try_start_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_12

    move v2, v0

    goto :goto_28

    .line 259
    :catch_12
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 259
    const-string v3, "%s was already an admin for user %d. No need to set it again.\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v2, v1

    .line 264
    :goto_28
    :try_start_28
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    xor-int/2addr v0, v6

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_7c

    if-eqz v0, :cond_5e

    .line 277
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 280
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Success: Device owner set to package %s\n"

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 281
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Active admin set to component %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    .line 266
    :cond_5e
    :try_start_5e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as device owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p1

    if-eqz v2, :cond_88

    .line 272
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 274
    :cond_88
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)I
    .registers 7

    .line 293
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 294
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 297
    :try_start_f
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_61

    if-eqz v0, :cond_3a

    .line 308
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 311
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 312
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 311
    const-string v0, "Success: Active admin and profile owner set to %s for user %d\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_3a
    :try_start_3a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 299
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as profile owner for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    .line 304
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 305
    throw p1
.end method

.method public final runSetSafeOperation(Ljava/io/PrintWriter;)I
    .registers 4

    .line 202
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    .line 206
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 205
    const-string v0, "Next call to check operation %s will return %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final showHelp(Ljava/io/PrintWriter;)V
    .registers 8

    const/4 p0, 0x0

    .line 120
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "  help\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    const-string v0, "    Prints this help text.\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    const-string v0, "is-operation-safe"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <OPERATION_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    const-string v0, "    Checks if the give operation is safe \n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 124
    const-string v0, "is-operation-safe-by-reason"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <REASON_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    const-string v0, "    Checks if the operations are safe for the given reason\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    const-string/jumbo v0, "set-operation-safe"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <OPERATION_ID> <REASON_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    const-string v0, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    const-string/jumbo v0, "list-owners"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 130
    const-string v0, "    Lists the device / profile owners per user \n\n"

    new-array v2, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    const-string/jumbo v0, "list-policy-exempt-apps"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    const-string v0, "    Lists the apps that are exempt from policies\n\n"

    new-array v2, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    const-string/jumbo v0, "set-active-admin"

    const-string v2, "--user"

    const-string v3, "--provisioning-context"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "  %s [ %s <USER_ID> | current ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 136
    const-string v0, "    Sets the given component as active admin for an existing user.\n\n"

    new-array v5, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 137
    const-string/jumbo v0, "set-device-owner"

    const-string v5, "--device-owner-only"

    filled-new-array {v0, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p1, v5, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    const-string v0, "    Sets the given component as active admin, and its package as device owner.\n\n"

    new-array v5, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    const-string/jumbo v0, "set-profile-owner"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 155
    const-string v0, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    new-array v3, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 157
    const-string/jumbo v0, "remove-active-admin"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 159
    const-string v0, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    const-string v0, "clear-freeze-period-record"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    const-string v0, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 166
    const-string v0, "force-network-logs"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 167
    const-string v0, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 169
    const-string v0, "force-security-logs"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    const-string v0, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    const-string/jumbo v0, "mark-profile-owner-on-organization-owned-device"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 174
    const-string v0, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
