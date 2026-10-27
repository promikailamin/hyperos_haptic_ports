.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;

    return-object v0
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 14
    return-void
.end method

.method public isSpecialUidNeedDefaultGrant(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 17
    const/4 v0, 0x1

    return v0
.end method
