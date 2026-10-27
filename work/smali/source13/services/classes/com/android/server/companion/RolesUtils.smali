.class final Lcom/android/server/companion/RolesUtils;
.super Ljava/lang/Object;
.source "RolesUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 54
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "deviceProfile":Ljava/lang/String;
    if-nez v7, :cond_7

    return-void

    .line 57
    :cond_7
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/role/RoleManager;

    .line 59
    .local v8, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v10

    .line 61
    .local v10, "userId":I
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 63
    .local v11, "userHandle":Landroid/os/UserHandle;
    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/RolesUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6, v10, v9, v7}, Lcom/android/server/companion/RolesUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    move-object v0, v8

    move-object v1, v7

    move-object v2, v9

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 71
    return-void
.end method

.method static isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "role"    # Ljava/lang/String;

    .line 42
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 43
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    nop

    .line 44
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 43
    invoke-virtual {v0, p3, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static synthetic lambda$addRoleHolderForAssociation$0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceProfile"    # Ljava/lang/String;
    .param p3, "success"    # Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_38

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to the list of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " holders."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_38
    return-void
.end method

.method static synthetic lambda$removeRoleHolderForAssociation$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceProfile"    # Ljava/lang/String;
    .param p3, "success"    # Ljava/lang/Boolean;

    .line 91
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_38

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from the list of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " holders."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_38
    return-void
.end method

.method static removeRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 79
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "deviceProfile":Ljava/lang/String;
    if-nez v7, :cond_7

    return-void

    .line 82
    :cond_7
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/role/RoleManager;

    .line 84
    .local v8, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v10

    .line 86
    .local v10, "userId":I
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 88
    .local v11, "userHandle":Landroid/os/UserHandle;
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/RolesUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v10, v9, v7}, Lcom/android/server/companion/RolesUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    move-object v0, v8

    move-object v1, v7

    move-object v2, v9

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 96
    return-void
.end method
