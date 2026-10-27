.class public Lcom/android/server/companion/CompanionExemptionProcessor;
.super Ljava/lang/Object;
.source "CompanionExemptionProcessor.java"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;


# direct methods
.method public static synthetic $r8$lambda$ToR5gqUC2wI3TkFPVa5liwAr-YM(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor;->lambda$exemptPackage$0(ILandroid/content/pm/PackageInfo;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionExemptionProcessor;)Lcom/android/server/companion/association/AssociationStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 70
    iput-object p3, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    iput-object p4, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 72
    iput-object p5, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 73
    iput-object p6, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 74
    iput-object p7, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 76
    new-instance p1, Lcom/android/server/companion/CompanionExemptionProcessor$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/CompanionExemptionProcessor$1;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V

    invoke-virtual {p7, p1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void
.end method


# virtual methods
.method public final containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 205
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {p1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public exemptPackage(ILjava/lang/String;Z)V
    .registers 6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exempting package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionExemptionProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 116
    new-instance v0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final exemptPackageAsSystem(ILandroid/content/pm/PackageInfo;Z)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    .line 128
    :cond_3
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/companion/CompanionExemptionProcessor;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CDM_CompanionExemptionProcessor"

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_1b

    .line 132
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/lang/String;)V

    goto :goto_39

    .line 135
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PowerExemptionManager;->removeFromPermanentAllowList(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_39

    .line 137
    :catch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be removed from power save allowlist. It might be due to the package being allowlisted by the system."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_39
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 146
    :try_start_3f
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v3, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v4, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/companion/CompanionExemptionProcessor;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_58

    if-eqz p3, :cond_58

    .line 150
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p3, v3}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_67

    :catch_56
    move-exception p3

    goto :goto_60

    .line 154
    :cond_58
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p3, v3}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_5f} :catch_56

    goto :goto_67

    .line 159
    :goto_60
    invoke-virtual {p3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_67
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 163
    invoke-virtual {v0, p1, p3}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 162
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAutoRevokeExemption(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final synthetic lambda$exemptPackage$0(ILandroid/content/pm/PackageInfo;Z)V
    .registers 4

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackageAsSystem(ILandroid/content/pm/PackageInfo;Z)V

    return-void
.end method

.method public updateAtm(ILjava/util/List;)V
    .registers 8

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 94
    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ltz v1, :cond_9

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 99
    :cond_2b
    iget-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_32

    .line 100
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 102
    :cond_32
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_3e

    .line 104
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    :cond_3e
    return-void
.end method

.method public final updateAutoRevokeExemption(Ljava/lang/String;IZ)V
    .registers 5

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x61

    invoke-virtual {p0, v0, p2, p1, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while granting auto revoke exemption for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CDM_CompanionExemptionProcessor"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public updateAutoRevokeExemptions(I)V
    .registers 10

    .line 172
    const-string/jumbo v0, "maybeGrantAutoRevokeExemptions()"

    const-string v1, "CDM_CompanionExemptionProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 176
    invoke-virtual {v2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v2

    .line 177
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 180
    :try_start_29
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 181
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_41} :catch_42

    goto :goto_1d

    :catch_42
    move-exception v5

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown companion package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 186
    :cond_5c
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 187
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAutoRevokeExemption(Ljava/lang/String;IZ)V

    goto :goto_60

    :cond_7d
    return-void
.end method
