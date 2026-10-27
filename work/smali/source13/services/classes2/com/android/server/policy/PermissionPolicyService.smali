.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$Internal;,
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;,
        Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_PERM_CHANGE_ID:J = 0xb9cec21L

.field private static final SYSTEM_PKG:Ljava/lang/String; = "android"

.field private static final USER_SENSITIVE_UPDATE_DELAY_MS:J = 0xea60L


# instance fields
.field private mAppOpPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsStarted:Landroid/util/SparseBooleanArray;

.field private final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

.field private mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$Q9k9U27pAhp2mAT-DmNupRvkYwE(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$la2EuOntWnY3Epfe3DmXIAtWV1M(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rd-wRS1VmTcWPlWJqKsNJNLcaT4(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PermissionPolicyService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitTelephonyManagerIfNeeded(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUidAsync(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUidAsync(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronizePackagePermissionsAndAppOpsAsyncForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterCarrierPrivilegesCallback(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->unregisterCarrierPrivilegesCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetSwitchOp(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 124
    const-class v0, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 137
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 550
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 182
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 183
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$Internal-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 411
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, "op":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 413
    return v1

    .line 416
    :cond_8
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    return v1
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 669
    return-object p0

    .line 672
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 673
    :catch_15
    move-exception v0

    .line 674
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    const/4 v1, 0x0

    return-object v1
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 619
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 621
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 622
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 623
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 624
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 625
    .local v2, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 629
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 634
    .local v3, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v4, Landroid/permission/PermissionControllerManager;

    .line 636
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 637
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 638
    .local v4, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    nop

    .line 639
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3, p1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;I)V

    .line 638
    invoke-virtual {v4, v5, v6}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 652
    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission_callback_waiting-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v3}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_5b} :catch_68
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_42 .. :try_end_5b} :catch_68
    .catchall {:try_start_42 .. :try_end_5b} :catchall_66

    .line 657
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 658
    nop

    .line 660
    invoke-virtual {v4}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    .line 662
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->updateRuntimePermissionsFingerprint(I)V

    goto :goto_73

    .line 657
    :catchall_66
    move-exception v5

    goto :goto_6f

    .line 654
    :catch_68
    move-exception v5

    .line 655
    .local v5, "e":Ljava/lang/Exception;
    :try_start_69
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v3    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local v4    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    .end local p0    # "this":Lcom/android/server/policy/PermissionPolicyService;
    .end local p1    # "userId":I
    throw v6
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    .line 657
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v2    # "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v3    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .restart local v4    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    .restart local p0    # "this":Lcom/android/server/policy/PermissionPolicyService;
    .restart local p1    # "userId":I
    :goto_6f
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 658
    throw v5

    .line 664
    .end local v3    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local v4    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    :cond_73
    :goto_73
    return-void
.end method

.method private initTelephonyManagerIfNeeded()V
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_c

    .line 475
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 477
    :cond_c
    return-void
.end method

.method private isStarted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 565
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 567
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .registers 5
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "userId"    # I
    .param p2, "successful"    # Ljava/lang/Boolean;

    .line 640
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 645
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error granting/upgrading runtime permissions for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 650
    .end local v0    # "message":Ljava/lang/String;
    :goto_2b
    return-void
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p0, "synchronizer"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 731
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private onStartUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 578
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 579
    return-void

    .line 583
    :cond_7
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 584
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission_grant_default_permissions-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 586
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 590
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 592
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 593
    .local v2, "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_6f

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_synchronize_permissions-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 598
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 601
    if-eqz v2, :cond_6e

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_onInitialized-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 603
    invoke-interface {v2, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 604
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 606
    :cond_6e
    return-void

    .line 593
    .end local v2    # "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2
.end method

.method private registerCarrierPrivilegesCallbacks()V
    .registers 6

    .line 480
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 481
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_8

    .line 482
    return-void

    .line 485
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 486
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_27

    .line 487
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 488
    .local v2, "callback":Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 486
    .end local v2    # "callback":Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 492
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method private resetAppOpPermissionsIfNotRequestedForUid(I)V
    .registers 26
    .param p1, "uid"    # I

    .line 752
    move-object/from16 v1, p0

    move/from16 v8, p1

    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 753
    :try_start_7
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 754
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f3

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 757
    .local v9, "context":Landroid/content/Context;
    nop

    .line 758
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 757
    invoke-static {v9, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 759
    .local v10, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 760
    .local v11, "packageNames":[Ljava/lang/String;
    if-eqz v11, :cond_f0

    array-length v0, v11

    if-nez v0, :cond_2b

    move-object/from16 v16, v9

    goto/16 :goto_f2

    .line 764
    :cond_2b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 765
    .local v12, "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v11

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_52

    aget-object v4, v11, v3

    .line 768
    .local v4, "packageName":Ljava/lang/String;
    const/16 v0, 0x1000

    :try_start_39
    invoke-virtual {v10, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_3d} :catch_4b

    .line 771
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 772
    if-eqz v0, :cond_4f

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_45

    .line 773
    goto :goto_4f

    .line 775
    :cond_45
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_4f

    .line 769
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_4b
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 770
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 765
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 778
    :cond_52
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 779
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const-class v2, Landroid/app/AppOpsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/AppOpsManagerInternal;

    .line 781
    .local v14, "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 782
    .local v15, "appOpPermissionsSize":I
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_6b
    if-ge v7, v15, :cond_ef

    .line 783
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 785
    .local v6, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    .line 786
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    .line 787
    .local v5, "appOpCode":I
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    .line 788
    .local v4, "defaultAppOpMode":I
    array-length v3, v11

    const/4 v2, 0x0

    :goto_86
    if-ge v2, v3, :cond_d2

    aget-object v13, v11, v2

    .line 789
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v16, v9

    .end local v9    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    invoke-virtual {v0, v5, v8, v13}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v9

    .line 791
    .local v9, "appOpMode":I
    if-eq v9, v4, :cond_b3

    .line 792
    move-object/from16 v17, v0

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v17, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v14, v5, v8, v4, v0}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 794
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v18, v2

    move-object v2, v14

    move/from16 v19, v3

    move v3, v5

    move/from16 v20, v4

    .end local v4    # "defaultAppOpMode":I
    .local v20, "defaultAppOpMode":I
    move/from16 v4, p1

    move/from16 v21, v5

    .end local v5    # "appOpCode":I
    .local v21, "appOpCode":I
    move-object v5, v13

    move-object/from16 v22, v6

    .end local v6    # "appOpPermission":Ljava/lang/String;
    .local v22, "appOpPermission":Ljava/lang/String;
    move/from16 v6, v20

    move/from16 v23, v7

    .end local v7    # "i":I
    .local v23, "i":I
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_c1

    .line 791
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_b3
    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 788
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "appOpMode":I
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    :goto_c1
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    goto :goto_86

    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .local v9, "context":Landroid/content/Context;
    :cond_d2
    move-object/from16 v17, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    goto :goto_e7

    .line 785
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_df
    move-object/from16 v17, v0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .line 782
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v23    # "i":I
    :goto_e7
    add-int/lit8 v7, v23, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    .end local v23    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_6b

    .line 800
    .end local v7    # "i":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v9    # "context":Landroid/content/Context;
    :cond_ef
    return-void

    .line 760
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v12    # "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    .end local v15    # "appOpPermissionsSize":I
    :cond_f0
    move-object/from16 v16, v9

    .line 761
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_f2
    return-void

    .line 754
    .end local v10    # "userPackageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageNames":[Ljava/lang/String;
    .end local v16    # "context":Landroid/content/Context;
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method private resetAppOpPermissionsIfNotRequestedForUidAsync(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 739
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 740
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 742
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 743
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;-><init>()V

    .line 745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 743
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 747
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw v1

    .line 749
    :cond_34
    :goto_34
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedUserId"    # I

    .line 421
    invoke-direct {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 422
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 424
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;-><init>()V

    .line 427
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 424
    invoke-static {v2, p0, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    :cond_2e
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw v1

    .line 436
    :cond_33
    :goto_33
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 687
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5f

    .line 695
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 697
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 699
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_28

    .line 700
    return-void

    .line 702
    :cond_28
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 703
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 704
    .local v2, "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 705
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "sharedPkgNames":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_46
    if-ge v5, v4, :cond_5b

    aget-object v6, v3, v5

    .line 709
    .local v6, "sharedPkgName":Ljava/lang/String;
    nop

    .line 710
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 711
    .local v7, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_58

    .line 712
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 708
    .end local v6    # "sharedPkgName":Ljava/lang/String;
    .end local v7    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 715
    :cond_5b
    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 716
    return-void

    .line 687
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .end local v3    # "sharedPkgNames":[Ljava/lang/String;
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private synchronizePermissionsAndAppOpsForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 723
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 725
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 727
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 728
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 729
    .local v2, "synchronizer":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission_synchronize_addPackages-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 730
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 732
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission_syncPackages-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 734
    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 735
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 736
    return-void
.end method

.method private unregisterCarrierPrivilegesCallback()V
    .registers 4

    .line 495
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 496
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_8

    .line 497
    return-void

    .line 500
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 501
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    .line 502
    .local v1, "callback":Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    if-eqz v1, :cond_20

    .line 503
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 500
    .end local v1    # "callback":Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 506
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .line 442
    const/16 v0, 0x208

    if-ne p1, v0, :cond_15

    .line 443
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_15
    const/16 v0, 0x226

    if-ne p1, v0, :cond_37

    .line 450
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 453
    .local v1, "um":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_37

    aget v5, v2, v4

    .line 454
    .local v5, "userId":I
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 455
    invoke-direct {p0, v5}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 453
    .end local v5    # "userId":I
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 460
    .end local v1    # "um":Lcom/android/server/pm/UserManagerInternal;
    :cond_37
    if-ne p1, v0, :cond_44

    .line 461
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 462
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->-$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    .line 465
    :cond_44
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_53

    .line 466
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    const/4 v1, 0x1

    :try_start_4c
    iput-boolean v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 468
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    throw v1

    .line 471
    :cond_53
    :goto_53
    return-void
.end method

.method public onStart()V
    .registers 15

    .line 188
    const-string v0, "Cannot set up app-ops listener"

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 190
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 192
    nop

    .line 193
    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 223
    .local v1, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    .line 226
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 234
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 235
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    .local v2, "dangerousPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 239
    .local v6, "numDangerousPerms":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_40
    if-ge v7, v6, :cond_73

    .line 240
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 242
    .local v8, "perm":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 243
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v9, v5, v10}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 245
    :cond_59
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 246
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 247
    invoke-static {v5, v5, v5, v5, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v9

    .line 249
    .local v9, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v10

    .line 250
    .local v10, "extraAppOp":I
    if-eq v10, v4, :cond_70

    .line 251
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v10, v5, v11}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_70} :catch_74

    .line 239
    .end local v8    # "perm":Landroid/content/pm/PermissionInfo;
    .end local v9    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .end local v10    # "extraAppOp":I
    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 257
    .end local v6    # "numDangerousPerms":I
    .end local v7    # "i":I
    :cond_73
    goto :goto_7a

    .line 255
    :catch_74
    move-exception v6

    .line 256
    .local v6, "doesNotHappen":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v6    # "doesNotHappen":Landroid/os/RemoteException;
    :goto_7a
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/16 v7, 0x40

    .line 260
    invoke-interface {v6, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 262
    .local v6, "appOpPermissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 263
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 264
    .local v7, "appOpPermissionInfosSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8e
    if-ge v8, v7, :cond_e3

    .line 265
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 267
    .local v9, "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_136

    :cond_9f
    goto :goto_be

    :sswitch_a0
    const-string v11, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    const/4 v10, 0x2

    goto :goto_bf

    :sswitch_aa
    const-string v11, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    const/4 v10, 0x0

    goto :goto_bf

    :sswitch_b4
    const-string v11, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    move v10, v3

    goto :goto_bf

    :goto_be
    move v10, v4

    :goto_bf
    packed-switch v10, :pswitch_data_144

    .line 277
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v10

    .line 279
    .local v10, "appOpCode":I
    if-eq v10, v4, :cond_e0

    .line 280
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 275
    .end local v10    # "appOpCode":I
    :pswitch_d2
    goto :goto_e0

    .line 270
    :pswitch_d3
    goto :goto_e0

    .line 282
    .restart local v10    # "appOpCode":I
    :goto_d4
    :try_start_d4
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v10, v5, v11}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_d9} :catch_da

    .line 285
    goto :goto_e0

    .line 283
    :catch_da
    move-exception v11

    .line 284
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v12, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v12, v0, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v9    # "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v10    # "appOpCode":I
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_e0
    :goto_e0
    add-int/lit8 v8, v8, 0x1

    goto :goto_8e

    .line 290
    .end local v8    # "i":I
    :cond_e3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v9, p0}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 395
    new-instance v3, Landroid/permission/PermissionControllerManager;

    .line 396
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 397
    .local v3, "manager":Landroid/permission/PermissionControllerManager;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;-><init>(Landroid/permission/PermissionControllerManager;)V

    const-wide/32 v8, 0xea60

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    return-void

    :sswitch_data_136
    .sparse-switch
        0x1277d93c -> :sswitch_b4
        0x50b27c6d -> :sswitch_aa
        0x69eee241 -> :sswitch_a0
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d3
        :pswitch_d2
    .end packed-switch
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 572
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 573
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 612
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 614
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
