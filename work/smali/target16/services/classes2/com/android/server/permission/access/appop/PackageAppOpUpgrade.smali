.class public final Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;
.super Ljava/lang/Object;
.source "PackageAppOpUpgrade.kt"


# instance fields
.field public final policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 12

    const/4 v2, 0x2

    if-gt p4, v2, :cond_1b

    .line 30
    iget-object v2, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 33
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 35
    const-string v5, "android:run_in_background"

    .line 32
    invoke-virtual {v2, p1, v4, p3, v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 40
    const-string v5, "android:run_any_in_background"

    move v4, p3

    move-object v1, v2

    move-object v2, p1

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_1b
    const/16 v2, 0xf

    if-gt p4, v2, :cond_3f

    .line 46
    iget-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 47
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 50
    const-string v4, "android:access_restricted_settings"

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 53
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v4, "android:access_restricted_settings"

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_3f
    return-void
.end method
