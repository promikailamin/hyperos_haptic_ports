.class public final Lcom/android/server/devicepolicy/EnforcingAdmin;
.super Ljava/lang/Object;
.source "EnforcingAdmin.java"


# instance fields
.field public mAuthorities:Ljava/util/Set;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mIsRoleAuthority:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mSystemEntity:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 193
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 195
    iput v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 197
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getSystemAuthority(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 178
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 180
    iput p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 181
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 183
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 166
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 169
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 170
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;IZ)V
    .registers 6

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 207
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 210
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 211
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public static createDeviceAdminEnforcingAdmin(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 5

    .line 99
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 101
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_admin"

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createEnforcingAdmin(Landroid/app/admin/EnforcingAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 8

    .line 111
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object v0

    .line 113
    sget-object v1, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    invoke-virtual {v1, v0}, Landroid/app/admin/DpcAuthority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 114
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 115
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "enterprise"

    .line 116
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0

    .line 117
    :cond_2b
    sget-object v1, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    invoke-virtual {v1, v0}, Landroid/app/admin/DeviceAdminAuthority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 118
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 119
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "device_admin"

    .line 120
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0

    .line 121
    :cond_4f
    instance-of v1, v0, Landroid/app/admin/RoleAuthority;

    if-eqz v1, :cond_70

    check-cast v0, Landroid/app/admin/RoleAuthority;

    .line 122
    new-instance v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 123
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 124
    invoke-virtual {v0}, Landroid/app/admin/RoleAuthority;->getRoles()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;IZ)V

    return-object v1

    .line 126
    :cond_70
    instance-of v1, v0, Landroid/app/admin/SystemAuthority;

    if-eqz v1, :cond_80

    check-cast v0, Landroid/app/admin/SystemAuthority;

    .line 127
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {v0}, Landroid/app/admin/SystemAuthority;->getSystemEntity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 129
    :cond_80
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 130
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createEnforcingAdmin(Ljava/lang/String;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 3

    .line 87
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 5

    .line 93
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 95
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterprise"

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createSystemEnforcingAdmin(Ljava/lang/String;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 2

    .line 106
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getParcelableAuthority(Ljava/lang/String;)Landroid/app/admin/Authority;
    .registers 2

    if-eqz p0, :cond_4e

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4e

    .line 141
    :cond_9
    const-string v0, "enterprise"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    sget-object p0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    return-object p0

    .line 144
    :cond_14
    const-string v0, "device_admin"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 145
    sget-object p0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    return-object p0

    .line 147
    :cond_1f
    const-string/jumbo v0, "role:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x5

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v0, Landroid/app/admin/RoleAuthority;

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    return-object v0

    .line 151
    :cond_37
    const-string/jumbo v0, "system:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x7

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Landroid/app/admin/SystemAuthority;

    invoke-direct {v0, p0}, Landroid/app/admin/SystemAuthority;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 155
    :cond_4b
    sget-object p0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    return-object p0

    .line 139
    :cond_4e
    :goto_4e
    sget-object p0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    return-object p0
.end method

.method public static getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5

    .line 215
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    .line 216
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "role:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 220
    :cond_2f
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "default"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3c
    return-object p1
.end method

.method public static getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoles(Ljava/lang/String;I)Ljava/util/Set;
    .registers 6

    .line 237
    const-class v0, Lcom/android/role/RoleManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/role/RoleManagerLocal;

    .line 239
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 240
    invoke-interface {v0, p1}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 243
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_35
    return-object v1
.end method

.method public static getSystemAuthority(Ljava/lang/String;)Ljava/util/Set;
    .registers 4

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static hasMatchingAuthorities(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 3

    .line 345
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 348
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .registers 8

    .line 391
    const-string/jumbo v0, "package-name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string/jumbo v2, "system-entity"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    const-string v3, "is-role"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 394
    const-string v4, "authorities"

    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    const-string/jumbo v5, "user-id"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 397
    const-string v6, "EnforcingAdmin"

    if-eqz v3, :cond_34

    if-nez v0, :cond_2e

    .line 399
    const-string p0, "Error parsing EnforcingAdmin with RoleAuthority, packageName is null."

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 404
    :cond_2e
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v0, v5}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_34
    if-eqz v2, :cond_3c

    .line 406
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3c
    if-eqz v0, :cond_5f

    if-nez v4, :cond_41

    goto :goto_5f

    .line 414
    :cond_41
    const-string v2, "class-name"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4a

    goto :goto_4f

    .line 416
    :cond_4a
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_4f
    const-string p0, ";"

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 419
    new-instance v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v2, v0, v1, p0, v5}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v2

    .line 409
    :cond_5f
    :goto_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing EnforcingAdmin, packageName is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v2, "null"

    if-nez v0, :cond_6f

    move-object v0, v2

    :cond_6f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", and authorities is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_7a

    move-object v4, v2

    .line 411
    :cond_7a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    .line 334
    const-class v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_53

    .line 335
    :cond_10
    check-cast p1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 336
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 337
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 338
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 339
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 340
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v3

    if-ne v2, v3, :cond_53

    .line 341
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasMatchingAuthorities(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result p0

    if-eqz p0, :cond_53

    return v0

    :cond_53
    :goto_53
    return v1
.end method

.method public final getAuthorities()Ljava/util/Set;
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_12

    .line 251
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 253
    :cond_12
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;
    .registers 5

    .line 296
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_1c

    .line 297
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 299
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    goto :goto_46

    .line 301
    :cond_15
    new-instance v1, Landroid/app/admin/RoleAuthority;

    invoke-direct {v1, v0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    move-object v0, v1

    goto :goto_46

    .line 303
    :cond_1c
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string v1, "enterprise"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 304
    sget-object v0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    goto :goto_46

    .line 305
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string v1, "device_admin"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 306
    sget-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    goto :goto_46

    .line 307
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 308
    new-instance v0, Landroid/app/admin/SystemAuthority;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/app/admin/SystemAuthority;-><init>(Ljava/lang/String;)V

    goto :goto_46

    .line 310
    :cond_44
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    .line 312
    :goto_46
    new-instance v1, Landroid/app/admin/EnforcingAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 315
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0, v3, p0}, Landroid/app/admin/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    return-object v1
.end method

.method public getSystemEntity()Ljava/lang/String;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 280
    iget p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return p0
.end method

.method public hasAuthority(Ljava/lang/String;)Z
    .registers 2

    .line 263
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 353
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_15

    .line 354
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 355
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 356
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 359
    :cond_26
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    :cond_2c
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 358
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupervisionAdmin()Z
    .registers 2

    .line 271
    const-string v0, "android.app.role.SYSTEM_SUPERVISION"

    invoke-static {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSystemAuthority()Z
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public reloadRoleAuthorities()V
    .registers 3

    .line 257
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_e

    .line 258
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    :cond_e
    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5

    .line 366
    const-string/jumbo v0, "package-name"

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v0, "is-role"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    const-string v0, "is-system"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v1

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    const-string/jumbo v0, "user-id"

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 373
    const-string/jumbo v0, "system-entity"

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v0

    if-nez v0, :cond_55

    .line 376
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_46

    .line 377
    const-string v1, "class-name"

    .line 378
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    :cond_46
    const-string v0, ";"

    .line 384
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 381
    const-string v0, "authorities"

    invoke-interface {p1, v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const-string v1, "EnforcingAdmin { mPackageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1d

    .line 429
    const-string v1, ", mComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    :cond_1d
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-eqz v1, :cond_2b

    .line 433
    const-string v1, ", mAuthorities= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    :cond_2b
    const-string v1, ", mUserId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, ", mIsRoleAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, ", mSystemEntity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
