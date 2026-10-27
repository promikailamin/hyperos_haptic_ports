.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessUpgrade.kt"


# instance fields
.field public final policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    .line 0
    return-void
.end method
