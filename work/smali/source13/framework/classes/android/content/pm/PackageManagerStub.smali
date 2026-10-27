.class public Landroid/content/pm/PackageManagerStub;
.super Ljava/lang/Object;
.source "PackageManagerStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/content/pm/PackageManagerStub;
    .registers 1

    .line 13
    const-class v0, Landroid/content/pm/PackageManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getOneTimeManagerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const-string v0, "com.android.permissioncontroller"

    return-object v0
.end method

.method blacklist getPermissionControllerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 17
    return-object p1
.end method

.method public blacklist isOptimizationMode()Z
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method
