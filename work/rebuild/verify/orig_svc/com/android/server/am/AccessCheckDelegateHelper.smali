.class public Lcom/android/server/am/AccessCheckDelegateHelper;
.super Ljava/lang/Object;
.source "AccessCheckDelegateHelper.java"


# instance fields
.field public mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

.field public final mActiveInstrumentation:Ljava/util/List;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerGlobalLock;Ljava/util/List;Lcom/android/server/appop/AppOpsService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 48
    iput-object p2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 50
    iput-object p4, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method


# virtual methods
.method public addOverridePermissionState(IILjava/lang/String;I)V
    .registers 10

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_64

    .line 149
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 150
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_5a

    .line 152
    iget-object v3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 153
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveInstrumentation;

    .line 154
    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p1, :cond_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 158
    :cond_26
    iget v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    if-nez v1, :cond_52

    iget-object v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 166
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_4a

    .line 167
    :cond_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only one instrumentation to grant overrides is allowed at a time."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_48
    move-exception p0

    goto :goto_5f

    .line 171
    :cond_4a
    :goto_4a
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/AccessCheckDelegate;->addOverridePermissionState(IILjava/lang/String;I)V

    .line 172
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 159
    :cond_52
    :try_start_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Root can only override permissions only if the owning app was instrumented from root."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 146
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearAllOverridePermissionStates(I)V
    .registers 4

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_49

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 235
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 237
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 240
    :cond_1a
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 241
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 245
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 242
    :cond_2b
    :try_start_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_33
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearAllOverridePermissionStates()V

    .line 250
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 253
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 232
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOverridePermissionStates(II)V
    .registers 5

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_49

    .line 208
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 209
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 211
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 214
    :cond_1a
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 215
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 219
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 216
    :cond_2b
    :try_start_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_33
    invoke-interface {v1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearOverridePermissionStates(I)V

    .line 224
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 227
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 206
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;
    .registers 3

    if-eqz p1, :cond_19

    .line 55
    iget-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    if-nez p1, :cond_19

    .line 56
    new-instance p1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    invoke-direct {p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 58
    iget-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setCheckPermissionDelegate(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V

    .line 61
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    return-object p0
.end method

.method public getDelegatedShellPermissions()Ljava/util/List;
    .registers 3

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_17

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 132
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the shell can get delegated permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    if-nez p0, :cond_2d

    .line 137
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_36

    .line 140
    :cond_2d
    :try_start_2d
    invoke-interface {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object p0

    .line 141
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public onInstrumentationFinished(ILjava/lang/String;)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 258
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 260
    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegatePackage(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 261
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeShellPermissionDelegate()V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_30

    .line 263
    :cond_19
    :goto_19
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 264
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearAllOverridePermissionStates()V

    .line 266
    :cond_22
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 267
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 270
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final removeAccessCheckDelegateLPr()V
    .registers 3

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    .line 67
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setCheckPermissionDelegate(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V

    return-void
.end method

.method public removeOverridePermissionState(IILjava/lang/String;)V
    .registers 6

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_49

    .line 182
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 183
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 185
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 188
    :cond_1a
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 189
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 193
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 190
    :cond_2b
    :try_start_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_33
    invoke-interface {v1, p2, p3}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeOverridePermissionState(ILjava/lang/String;)V

    .line 198
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 199
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 201
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 179
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    .registers 9

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_17

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 75
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the shell can delegate its permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 80
    invoke-interface {v2, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_35

    .line 81
    :cond_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shell can delegate permissions only to one instrumentation at a time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_33
    move-exception p0

    goto :goto_6e

    .line 84
    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3b
    if-ge v1, v2, :cond_69

    .line 86
    iget-object v3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 87
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveInstrumentation;

    .line 88
    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, p1, :cond_4e

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 93
    :cond_4e
    iget-object v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_61

    .line 98
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1, v1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->setShellPermissionDelegate(ILjava/lang/String;[Ljava/lang/String;)V

    .line 101
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_1e .. :try_end_5d} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 94
    :cond_61
    :try_start_61
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shell can delegate its permissions only to an instrumentation started from the shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public stopDelegateShellPermissionIdentity()V
    .registers 4

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_17

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 109
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the shell can delegate its permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 112
    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 114
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    goto :goto_47

    .line 117
    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasShellPermissionDelegate()Z

    move-result v2

    if-nez v2, :cond_36

    .line 118
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 121
    :cond_36
    :try_start_36
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeShellPermissionDelegate()V

    .line 123
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result v1

    if-nez v1, :cond_42

    .line 124
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 126
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
