.class public Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
.super Ljava/lang/Object;
.source "RoleServicePlatformHelperImpl.java"

# interfaces
.implements Lcom/android/server/role/RoleServicePlatformHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field private static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field private static final TAG_ROLE:Ljava/lang/String; = "role"

.field private static final TAG_ROLES:Ljava/lang/String; = "roles"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-class v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private static getFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "roles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isSettingsApplication(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xd0000

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 296
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_23

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1a

    goto :goto_23

    .line 299
    :cond_1a
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 297
    :cond_23
    :goto_23
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$computePackageStateHash$0(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 15
    .param p0, "dataOutputStream"    # Ljava/io/DataOutputStream;
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 312
    :try_start_0
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 313
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 314
    nop

    .line 315
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 319
    .local v1, "requestedPermissionsSize":I
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_34

    .line 321
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 324
    .end local v2    # "i":I
    :cond_34
    nop

    .line 325
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 326
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    .line 327
    .local v3, "enabledComponentsSize":I
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 328
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    if-ge v4, v3, :cond_53

    .line 329
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 332
    .end local v4    # "i":I
    :cond_53
    nop

    .line 333
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v4

    .line 334
    .local v4, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .line 335
    .local v5, "disabledComponentsSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_61
    if-ge v6, v5, :cond_6f

    .line 336
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 335
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 339
    .end local v6    # "i":I
    :cond_6f
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_79
    if-ge v8, v7, :cond_87

    aget-object v9, v6, v8

    .line 340
    .local v9, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_84} :catch_89

    .line 339
    .end local v9    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    .line 345
    .end local v0    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "requestedPermissionsSize":I
    .end local v2    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "enabledComponentsSize":I
    .end local v4    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "disabledComponentsSize":I
    :cond_87
    nop

    .line 346
    return-void

    .line 342
    :catch_89
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 164
    .local v0, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 165
    .local v1, "innerDepth":I
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3a

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1c

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3a

    .line 167
    :cond_1c
    if-gt v5, v1, :cond_b

    const/4 v3, 0x2

    if-eq v4, v3, :cond_22

    .line 168
    goto :goto_b

    .line 171
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "holder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 172
    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "roleHolder":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v3    # "roleHolder":Ljava/lang/String;
    goto :goto_b

    .line 177
    .end local v5    # "depth":I
    :cond_3a
    return-object v0
.end method

.method private parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    .local v0, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 141
    .local v1, "innerDepth":I
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3f

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1c

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3f

    .line 143
    :cond_1c
    if-gt v5, v1, :cond_b

    const/4 v3, 0x2

    if-eq v4, v3, :cond_22

    .line 144
    goto :goto_b

    .line 147
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "role"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 148
    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "roleName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;

    move-result-object v6

    .line 150
    .local v6, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v6    # "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_b

    .line 154
    .end local v5    # "depth":I
    :cond_3f
    return-object v0
.end method

.method private parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 119
    .local v0, "innerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_2f

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2f

    .line 121
    :cond_17
    if-gt v4, v0, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1d

    .line 122
    goto :goto_6

    .line 125
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "roles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 130
    .end local v4    # "depth":I
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing <roles> in roles.xml"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFile(I)Ljava/util/Map;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_e} :catch_33
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_33

    .line 99
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 100
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v4

    .line 102
    .local v4, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v5, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Read legacy roles.xml successfully"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_27

    .line 103
    nop

    .line 104
    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33

    .line 103
    :cond_26
    return-object v4

    .line 98
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_27
    move-exception v3

    if-eqz v2, :cond_32

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v4

    :try_start_2f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    .end local p1    # "userId":I
    :cond_32
    :goto_32
    throw v3
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_33} :catch_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 107
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    .restart local p1    # "userId":I
    :catch_33
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse legacy roles.xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v1

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Legacy roles.xml not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v1
.end method

.method private readFromLegacySettings(I)Ljava/util/Map;
    .registers 18
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 190
    .local v2, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v3, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 191
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "assistant"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "assistantSetting":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 197
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    if-eqz v4, :cond_34

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    .line 199
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 200
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_30

    .line 201
    :cond_2f
    move-object v8, v6

    :goto_30
    move-object v7, v8

    .line 202
    .local v7, "assistantPackageName":Ljava/lang/String;
    goto :goto_4f

    .line 203
    .end local v7    # "assistantPackageName":Ljava/lang/String;
    :cond_32
    const/4 v7, 0x0

    .restart local v7    # "assistantPackageName":Ljava/lang/String;
    goto :goto_4f

    .line 205
    .end local v7    # "assistantPackageName":Ljava/lang/String;
    :cond_34
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 206
    iget-object v7, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v8, 0x1040021

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "defaultAssistant":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4b

    move-object v8, v7

    goto :goto_4c

    :cond_4b
    move-object v8, v6

    :goto_4c
    move-object v7, v8

    .line 208
    .local v7, "assistantPackageName":Ljava/lang/String;
    goto :goto_4f

    .line 209
    .end local v7    # "assistantPackageName":Ljava/lang/String;
    :cond_4e
    const/4 v7, 0x0

    .line 211
    .restart local v7    # "assistantPackageName":Ljava/lang/String;
    :goto_4f
    if-eqz v7, :cond_5a

    .line 212
    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    const-string v9, "android.app.role.ASSISTANT"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_5a
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 218
    .local v8, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "browserPackageName":Ljava/lang/String;
    if-eqz v9, :cond_71

    .line 221
    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    const-string v11, "android.app.role.BROWSER"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_71
    const-string v10, "dialer_default_application"

    invoke-static {v3, v10, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "dialerSetting":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7f

    .line 229
    move-object v11, v10

    .local v11, "dialerPackageName":Ljava/lang/String;
    goto :goto_90

    .line 230
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    :cond_7f
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 235
    iget-object v11, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v12, 0x1040023

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "dialerPackageName":Ljava/lang/String;
    goto :goto_90

    .line 237
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    :cond_8f
    const/4 v11, 0x0

    .line 239
    .restart local v11    # "dialerPackageName":Ljava/lang/String;
    :goto_90
    if-eqz v11, :cond_9b

    .line 240
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    const-string v13, "android.app.role.DIALER"

    invoke-interface {v2, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_9b
    const-string/jumbo v12, "sms_default_application"

    invoke-static {v3, v12, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "smsSetting":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_aa

    .line 248
    move-object v13, v12

    .local v13, "smsPackageName":Ljava/lang/String;
    goto :goto_c1

    .line 249
    .end local v13    # "smsPackageName":Ljava/lang/String;
    :cond_aa
    iget-object v13, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v13

    if-eqz v13, :cond_c0

    .line 252
    iget-object v13, v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v14, 0x1040024

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "smsPackageName":Ljava/lang/String;
    goto :goto_c1

    .line 254
    .end local v13    # "smsPackageName":Ljava/lang/String;
    :cond_c0
    const/4 v13, 0x0

    .line 256
    .restart local v13    # "smsPackageName":Ljava/lang/String;
    :goto_c1
    if-eqz v13, :cond_cc

    .line 257
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    const-string v15, "android.app.role.SMS"

    invoke-interface {v2, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_cc
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v14

    if-eqz v14, :cond_fb

    .line 263
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v15, "android.intent.category.HOME"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const/high16 v15, 0xd0000

    .line 263
    invoke-virtual {v5, v14, v15, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 268
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_f0

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_f0

    .line 269
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_f1

    :cond_f0
    nop

    .line 270
    .local v6, "homePackageName":Ljava/lang/String;
    :goto_f1
    if-eqz v6, :cond_fa

    invoke-direct {v0, v6, v1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->isSettingsApplication(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 271
    const/4 v6, 0x0

    .line 273
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_fa
    goto :goto_fc

    .line 274
    .end local v6    # "homePackageName":Ljava/lang/String;
    :cond_fb
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "homePackageName":Ljava/lang/String;
    :goto_fc
    if-eqz v6, :cond_107

    .line 277
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    const-string v15, "android.app.role.HOME"

    invoke-interface {v2, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_107
    const-string v14, "emergency_assistance_application"

    invoke-static {v3, v14, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 283
    .local v14, "emergencyPackageName":Ljava/lang/String;
    if-eqz v14, :cond_118

    .line 284
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v15

    const-string v0, "android.app.role.EMERGENCY"

    invoke-interface {v2, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_118
    return-object v2
.end method


# virtual methods
.method public computePackageStateHash(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .line 305
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 307
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;

    invoke-direct {v1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;-><init>()V

    .line 309
    .local v1, "mdos":Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 310
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    new-instance v3, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 347
    invoke-virtual {v1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->getDigestAsString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLegacyRoleState(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFile(I)Ljava/util/Map;

    move-result-object v0

    .line 89
    .local v0, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_a

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFromLegacySettings(I)Ljava/util/Map;

    move-result-object v0

    .line 92
    :cond_a
    return-object v0
.end method
