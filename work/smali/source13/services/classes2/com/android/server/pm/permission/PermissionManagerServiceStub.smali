.class public Lcom/android/server/pm/permission/PermissionManagerServiceStub;
.super Ljava/lang/Object;
.source "PermissionManagerServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/pm/permission/PermissionManagerServiceStub;
    .registers 1

    .line 25
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public isAllowedAccessDeviceIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedUpdatePermissions(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;[I[I)Z
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "allUsers"    # [I
    .param p4, "affectedUsers"    # [I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 4
    .param p1, "signature"    # [Landroid/content/pm/Signature;
    .param p2, "permName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return v0
.end method
