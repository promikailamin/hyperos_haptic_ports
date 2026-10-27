.class public final Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;
.super Ljava/lang/Object;
.source "AppIdAppOpUpgrade.kt"


# instance fields
.field public final policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 12

    const/4 v2, 0x2

    if-gt p4, v2, :cond_1b

    .line 30
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 32
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const-string v5, "android:run_in_background"

    invoke-virtual {v2, p1, v4, p3, v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v6

    .line 34
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 36
    const-string v5, "android:run_any_in_background"

    move v4, p3

    move-object v1, v2

    move-object v2, p1

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_1b
    const/16 v2, 0xd

    if-gt p4, v2, :cond_54

    const/16 v2, 0x6b

    .line 42
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 44
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 47
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 49
    const-string v5, "android:schedule_exact_alarm"

    .line 46
    invoke-virtual {v0, p1, v4, p3, v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v4

    .line 52
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    if-ne v4, v2, :cond_54

    .line 55
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 57
    const-string v4, "android:schedule_exact_alarm"

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_54
    return-void
.end method
