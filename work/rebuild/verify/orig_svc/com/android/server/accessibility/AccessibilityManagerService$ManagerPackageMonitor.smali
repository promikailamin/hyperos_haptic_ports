.class public Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static synthetic $r8$lambda$Bop3hOfSsyTTVh4uqhghkHVpW6s(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 6930
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RSPJeTjsuoqAPUWUkwoupUzsuO4(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 2

    .line 7010
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V1BE6ithcLF5P-OqA3TXks0qHec(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 6932
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$eNpjW43pGVN4cMeU_g-MYPC-bGY([Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 3

    .line 7009
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 3

    const/4 v0, 0x1

    .line 6853
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 6854
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 11

    .line 6989
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 6991
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onHandleForceStop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";packages="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6993
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";uid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";doit="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6991
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6996
    :cond_47
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6997
    :try_start_4e
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    .line 7000
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_5f

    .line 7001
    monitor-exit p1

    return v1

    :catchall_5d
    move-exception p0

    goto :goto_87

    .line 7003
    :cond_5f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    if-nez p4, :cond_78

    .line 7008
    iget-object p0, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit p1

    return p0

    .line 7012
    :cond_78
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 7013
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 7015
    :cond_85
    monitor-exit p1

    return v1

    .line 7016
    :goto_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_4e .. :try_end_88} :catchall_5d

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 9

    .line 6955
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6957
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageRemoved"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6962
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 6963
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 6966
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 6967
    monitor-exit p2

    return-void

    :catchall_49
    move-exception p0

    goto :goto_52

    .line 6969
    :cond_4b
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 6970
    monitor-exit p2

    return-void

    :goto_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_49

    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 10

    .line 6903
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6905
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageUpdateFinished"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6910
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 6911
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6912
    invoke-static {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityServiceInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v0

    .line 6913
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6914
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityShortcutInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v1

    .line 6915
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 6918
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 6916
    invoke-static {v2, v3, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTileUtils;->getValidA11yTileServices(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Ljava/util/List;I)Ljava/util/Set;

    move-result-object v2

    .line 6923
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6924
    :try_start_5d
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v4

    if-eq p2, v4, :cond_69

    .line 6925
    monitor-exit v3

    return-void

    :catchall_67
    move-exception p0

    goto :goto_ab

    .line 6927
    :cond_69
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 6928
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_8f

    iget-object v4, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 6931
    invoke-interface {v4, v6}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_8d

    goto :goto_8f

    :cond_8d
    move v4, v5

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 v4, 0x1

    .line 6935
    :goto_90
    iget-object v6, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 6937
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6, p2, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-nez v4, :cond_9f

    if-eqz v0, :cond_a4

    .line 6943
    :cond_9f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 6948
    :cond_a4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p2, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mmigrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 6950
    monitor-exit v3

    return-void

    :goto_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_5d .. :try_end_ac} :catchall_67

    throw p0
.end method

.method public onSomePackagesChanged()V
    .registers 7

    .line 6859
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6861
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onSomePackagesChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 6865
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 6866
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6867
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityServiceInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v1

    .line 6868
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6869
    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mparseAccessibilityShortcutInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;

    move-result-object v2

    .line 6870
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 6873
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 6871
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityTileUtils;->getValidA11yTileServices(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Ljava/util/List;I)Ljava/util/Set;

    move-result-object v3

    .line 6878
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 6881
    :try_start_43
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v5

    if-eq v0, v5, :cond_4f

    .line 6882
    monitor-exit v4

    return-void

    :catchall_4d
    move-exception p0

    goto :goto_68

    .line 6887
    :cond_4f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$misServiceInitializedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 6888
    const-string p0, "AccessibilityManagerService"

    const-string/jumbo v0, "onSomePackagesChanged: service not initialized, skip the callback."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    monitor-exit v4

    return-void

    .line 6892
    :cond_61
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monSomePackagesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 6894
    monitor-exit v4

    return-void

    :goto_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_43 .. :try_end_69} :catchall_4d

    throw p0
.end method
