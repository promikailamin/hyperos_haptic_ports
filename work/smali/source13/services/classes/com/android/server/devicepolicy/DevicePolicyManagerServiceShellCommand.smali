.class final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "DevicePolicyManagerServiceShellCommand.java"


# static fields
.field private static final CMD_CLEAR_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "clear-freeze-period-record"

.field private static final CMD_FORCE_NETWORK_LOGS:Ljava/lang/String; = "force-network-logs"

.field private static final CMD_FORCE_SECURITY_LOGS:Ljava/lang/String; = "force-security-logs"

.field private static final CMD_IS_SAFE_OPERATION:Ljava/lang/String; = "is-operation-safe"

.field private static final CMD_IS_SAFE_OPERATION_BY_REASON:Ljava/lang/String; = "is-operation-safe-by-reason"

.field private static final CMD_LIST_OWNERS:Ljava/lang/String; = "list-owners"

.field private static final CMD_LIST_POLICY_EXEMPT_APPS:Ljava/lang/String; = "list-policy-exempt-apps"

.field private static final CMD_MARK_PO_ON_ORG_OWNED_DEVICE:Ljava/lang/String; = "mark-profile-owner-on-organization-owned-device"

.field private static final CMD_REMOVE_ACTIVE_ADMIN:Ljava/lang/String; = "remove-active-admin"

.field private static final CMD_SET_ACTIVE_ADMIN:Ljava/lang/String; = "set-active-admin"

.field private static final CMD_SET_DEVICE_OWNER:Ljava/lang/String; = "set-device-owner"

.field private static final CMD_SET_PROFILE_OWNER:Ljava/lang/String; = "set-profile-owner"

.field private static final CMD_SET_SAFE_OPERATION:Ljava/lang/String; = "set-operation-safe"

.field private static final DO_ONLY_OPTION:Ljava/lang/String; = "--device-owner-only"

.field private static final NAME_OPTION:Ljava/lang/String; = "--name"

.field private static final USER_OPTION:Ljava/lang/String; = "--user"


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mName:Ljava/lang/String;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mSetDoOnly:Z

.field private mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 57
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 59
    return-void
.end method

.method private onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 109
    invoke-super {p0, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 110
    return v1

    .line 113
    :cond_8
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Usage: \n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V

    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method private parseArgs(Z)V
    .registers 6
    .param p1, "canHaveName"    # Z

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 351
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 352
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 354
    const/4 v3, -0x2

    if-ne v2, v3, :cond_22

    .line 355
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 357
    .end local v0    # "arg":Ljava/lang/String;
    :cond_22
    goto :goto_0

    :cond_23
    const-string v0, "--device-owner-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    goto :goto_0

    .line 359
    :cond_2f
    if-eqz p1, :cond_40

    const-string v0, "--name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 360
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 366
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 6
    .param p1, "component"    # Ljava/lang/String;

    .line 369
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 370
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    .line 373
    return-object v0

    .line 371
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "nameOnSingular"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 198
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 199
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v2

    const-string/jumbo v1, "no %ss\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    return v2

    .line 202
    :cond_13
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 203
    .local v0, "size":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p3, v3, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_28

    const-string v1, ""

    goto :goto_2b

    :cond_28
    const-string/jumbo v1, "s"

    :goto_2b
    aput-object v1, v3, v2

    const-string v1, "%d %s%s:\n"

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 204
    return v0
.end method

.method private runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 310
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 311
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Success\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 312
    return v0
.end method

.method private runForceNetworkLogs(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    move-result-wide v0

    .line 318
    .local v0, "toWait":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 319
    nop

    .line 324
    .end local v0    # "toWait":J
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 325
    return v3

    .line 321
    .restart local v0    # "toWait":J
    :cond_16
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 322
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 323
    .end local v0    # "toWait":J
    goto :goto_0
.end method

.method private runForceSecurityLogs(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    move-result-wide v0

    .line 331
    .local v0, "toWait":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 332
    nop

    .line 337
    .end local v0    # "toWait":J
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 338
    return v3

    .line 334
    .restart local v0    # "toWait":J
    :cond_16
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 335
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 336
    .end local v0    # "toWait":J
    goto :goto_0
.end method

.method private runIsSafeOperation(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "operation":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUnsafeOperationReason(I)I

    move-result v1

    .line 168
    .local v1, "reason":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    .line 169
    .local v4, "safe":Z
    :goto_16
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 171
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 169
    const-string v2, "Operation %s is %s. Reason: %s\n"

    invoke-virtual {p1, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    return v3
.end method

.method private runIsSafeOperationByReason(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "reason":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    move-result v1

    .line 178
    .local v1, "safe":Z
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 179
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 178
    const-string v3, "Operations affected by %s are %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 180
    return v4
.end method

.method private runListOwners(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 208
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listAllOwners()Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, "owners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicepolicy/OwnerShellData;>;"
    const-string/jumbo v1, "owner"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_11

    return v2

    .line 212
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_67

    .line 213
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 214
    .local v4, "owner":Lcom/android/server/devicepolicy/OwnerShellData;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v4, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v4, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "User %2d: admin=%s"

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 215
    iget-boolean v5, v4, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v5, :cond_3c

    .line 216
    const-string v5, ",DeviceOwner"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    :cond_3c
    iget-boolean v5, v4, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v5, :cond_45

    .line 219
    const-string v5, ",ProfileOwner"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    :cond_45
    iget-boolean v5, v4, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v5, :cond_58

    .line 222
    new-array v5, v7, [Ljava/lang/Object;

    iget v6, v4, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, ",ManagedProfileOwner(parentUserId=%d)"

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 224
    :cond_58
    iget-boolean v5, v4, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz v5, :cond_61

    .line 225
    const-string v5, ",Affiliated"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    :cond_61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 212
    .end local v4    # "owner":Lcom/android/server/devicepolicy/OwnerShellData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 230
    .end local v3    # "i":I
    :cond_67
    return v2
.end method

.method private runListPolicyExemptApps(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 234
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "policy exempt app"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_11

    return v2

    .line 239
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_2e

    .line 240
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    .local v4, "app":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v6, "  %d: %s\n"

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 239
    .end local v4    # "app":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 243
    .end local v3    # "i":I
    :cond_2e
    return v2
.end method

.method private runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 344
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Success\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 345
    return v0
.end method

.method private runRemoveActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 281
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    aput-object v2, v1, v0

    const-string v2, "Success: Admin removed %s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 282
    return v0
.end method

.method private runSetActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 250
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Success: Active admin set to component %s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 251
    return v0
.end method

.method private runSetDeviceOwner(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 259
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    if-nez v6, :cond_1c

    move v6, v0

    goto :goto_1d

    :cond_1c
    move v6, v1

    :goto_1d
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_6c

    if-eqz v2, :cond_4b

    .line 268
    nop

    .line 270
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 273
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Success: Device owner set to package %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Active admin set to component %s\n"

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 275
    return v1

    .line 261
    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as device owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_6c

    .line 264
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_6c
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 267
    throw v0
.end method

.method private runSetProfileOwner(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 290
    :try_start_d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_69

    if-eqz v1, :cond_3e

    .line 299
    nop

    .line 301
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 304
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 305
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 304
    const-string v0, "Success: Active admin and profile owner set to %s for user %d\n"

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 306
    return v3

    .line 291
    :cond_3e
    :try_start_3e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 292
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as profile owner for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_69} :catch_69

    .line 295
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_69
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 298
    throw v0
.end method

.method private runSetSafeOperation(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "operation":I
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "reason":I
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 193
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 191
    const-string v3, "Next call to check operation %s will return %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 194
    return v4
.end method

.method private static safeToString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "safe"    # Z

    .line 184
    if-eqz p0, :cond_5

    const-string v0, "SAFE"

    goto :goto_7

    :cond_5
    const-string v0, "UNSAFE"

    :goto_7
    return-object v0
.end method

.method private showHelp(Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 119
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 120
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "    Prints this help text.\n\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "is-operation-safe"

    aput-object v3, v2, v0

    const-string v3, "  %s <OPERATION_ID>\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "    Checks if the give operation is safe \n\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "is-operation-safe-by-reason"

    aput-object v3, v2, v0

    const-string v3, "  %s <REASON_ID>\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 124
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "    Checks if the operations are safe for the given reason\n\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "set-operation-safe"

    aput-object v3, v2, v0

    const-string v3, "  %s <OPERATION_ID> <REASON_ID>\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "list-owners"

    aput-object v3, v2, v0

    const-string v3, "  %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "    Lists the device / profile owners per user \n\n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 130
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "list-policy-exempt-apps"

    aput-object v4, v2, v0

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "    Lists the apps that are exempt from policies\n\n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "set-active-admin"

    aput-object v5, v4, v0

    const-string v5, "--user"

    aput-object v5, v4, v1

    const-string v6, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    invoke-virtual {p1, v6, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    new-array v4, v0, [Ljava/lang/Object;

    const-string v7, "    Sets the given component as active admin for an existing user.\n\n"

    invoke-virtual {p1, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 135
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "set-device-owner"

    aput-object v7, v4, v0

    aput-object v5, v4, v1

    const-string v7, "--name"

    aput-object v7, v4, v2

    const-string v8, "--device-owner-only"

    const/4 v9, 0x3

    aput-object v8, v4, v9

    const-string v8, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s <NAME> ] [ %s ]<COMPONENT>\n"

    invoke-virtual {p1, v8, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 137
    new-array v4, v0, [Ljava/lang/Object;

    const-string v8, "    Sets the given component as active admin, and its package as device owner.\n\n"

    invoke-virtual {p1, v8, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "set-profile-owner"

    aput-object v8, v4, v0

    aput-object v5, v4, v1

    aput-object v7, v4, v2

    const-string v8, "  %s [ %s <USER_ID> | current ] [ %s <NAME> ] <COMPONENT>\n"

    invoke-virtual {p1, v8, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 141
    new-array v4, v0, [Ljava/lang/Object;

    const-string v10, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    invoke-virtual {p1, v10, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "remove-active-admin"

    aput-object v9, v4, v0

    aput-object v5, v4, v1

    aput-object v7, v4, v2

    invoke-virtual {p1, v8, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    new-array v4, v0, [Ljava/lang/Object;

    const-string v7, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    invoke-virtual {p1, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    new-array v4, v1, [Ljava/lang/Object;

    const-string v7, "clear-freeze-period-record"

    aput-object v7, v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    new-array v4, v0, [Ljava/lang/Object;

    const-string v7, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    invoke-virtual {p1, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 152
    new-array v4, v1, [Ljava/lang/Object;

    const-string v7, "force-network-logs"

    aput-object v7, v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 153
    new-array v4, v0, [Ljava/lang/Object;

    const-string v7, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    invoke-virtual {p1, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 155
    new-array v4, v1, [Ljava/lang/Object;

    const-string v7, "force-security-logs"

    aput-object v7, v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 156
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 158
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "mark-profile-owner-on-organization-owned-device"

    aput-object v3, v2, v0

    aput-object v5, v2, v1

    invoke-virtual {p1, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 71
    if-nez p1, :cond_7

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 74
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 75
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_146

    :cond_13
    goto/16 :goto_a8

    :sswitch_15
    const-string/jumbo v2, "mark-profile-owner-on-organization-owned-device"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0xc

    goto/16 :goto_a8

    :sswitch_22
    const-string v2, "force-security-logs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0xb

    goto/16 :goto_a8

    :sswitch_2e
    const-string/jumbo v2, "set-profile-owner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x7

    goto/16 :goto_a8

    :sswitch_3a
    const-string/jumbo v2, "set-active-admin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x5

    goto :goto_a8

    :sswitch_45
    const-string v2, "clear-freeze-period-record"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0x9

    goto :goto_a8

    :sswitch_50
    const-string/jumbo v2, "is-operation-safe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x0

    goto :goto_a8

    :sswitch_5b
    const-string/jumbo v2, "remove-active-admin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0x8

    goto :goto_a8

    :sswitch_67
    const-string/jumbo v2, "is-operation-safe-by-reason"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    goto :goto_a8

    :sswitch_72
    const-string/jumbo v2, "set-operation-safe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x2

    goto :goto_a8

    :sswitch_7d
    const-string/jumbo v2, "list-owners"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x3

    goto :goto_a8

    :sswitch_88
    const-string/jumbo v2, "set-device-owner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x6

    goto :goto_a8

    :sswitch_93
    const-string/jumbo v2, "list-policy-exempt-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x4

    goto :goto_a8

    :sswitch_9e
    const-string v2, "force-network-logs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0xa

    :goto_a8
    packed-switch v1, :pswitch_data_17c

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_133

    .line 101
    :pswitch_b1
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_b5
    .catchall {:try_start_c .. :try_end_b5} :catchall_139

    .line 105
    if-eqz v0, :cond_ba

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 101
    :cond_ba
    return v1

    .line 99
    :pswitch_bb
    :try_start_bb
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceSecurityLogs(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_139

    .line 105
    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 99
    :cond_c4
    return v1

    .line 97
    :pswitch_c5
    :try_start_c5
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceNetworkLogs(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_139

    .line 105
    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 97
    :cond_ce
    return v1

    .line 95
    :pswitch_cf
    :try_start_cf
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_139

    .line 105
    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 95
    :cond_d8
    return v1

    .line 93
    :pswitch_d9
    :try_start_d9
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runRemoveActiveAdmin(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_139

    .line 105
    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 93
    :cond_e2
    return v1

    .line 91
    :pswitch_e3
    :try_start_e3
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_139

    .line 105
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 91
    :cond_ec
    return v1

    .line 89
    :pswitch_ed
    :try_start_ed
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_139

    .line 105
    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 89
    :cond_f6
    return v1

    .line 87
    :pswitch_f7
    :try_start_f7
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetActiveAdmin(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_fb
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_139

    .line 105
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 87
    :cond_100
    return v1

    .line 85
    :pswitch_101
    :try_start_101
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListPolicyExemptApps(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_139

    .line 105
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 85
    :cond_10a
    return v1

    .line 83
    :pswitch_10b
    :try_start_10b
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_139

    .line 105
    if-eqz v0, :cond_114

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 83
    :cond_114
    return v1

    .line 81
    :pswitch_115
    :try_start_115
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetSafeOperation(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_139

    .line 105
    if-eqz v0, :cond_11e

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 81
    :cond_11e
    return v1

    .line 79
    :pswitch_11f
    :try_start_11f
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperationByReason(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_139

    .line 105
    if-eqz v0, :cond_128

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 79
    :cond_128
    return v1

    .line 77
    :pswitch_129
    :try_start_129
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperation(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_139

    .line 105
    if-eqz v0, :cond_132

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 77
    :cond_132
    return v1

    .line 105
    :goto_133
    if-eqz v0, :cond_138

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 103
    :cond_138
    return v1

    .line 74
    :catchall_139
    move-exception v1

    if-eqz v0, :cond_144

    :try_start_13c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_140

    goto :goto_144

    :catchall_140
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_144
    :goto_144
    throw v1

    nop

    :sswitch_data_146
    .sparse-switch
        -0x7bce5670 -> :sswitch_9e
        -0x6c7042ec -> :sswitch_93
        -0x6ace5bf9 -> :sswitch_88
        -0x3ffc2fd1 -> :sswitch_7d
        -0x35f34b02 -> :sswitch_72
        -0x358ebd5d -> :sswitch_67
        -0x2e4a238f -> :sswitch_5b
        -0x226644ca -> :sswitch_50
        -0x1ffc3f59 -> :sswitch_45
        0x20a8d153 -> :sswitch_3a
        0x2622c764 -> :sswitch_2e
        0x4f01fcba -> :sswitch_22
        0x59fd14e8 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_129
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
        :pswitch_d9
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 64
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_4
    const-string v1, "DevicePolicyManager Service (device_policy) commands:\n\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    .line 66
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 67
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_14
    return-void

    .line 63
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method
