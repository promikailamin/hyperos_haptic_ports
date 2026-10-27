.class public Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
.super Ljava/lang/Object;
.source "RoleServicePlatformHelperImpl.java"

# interfaces
.implements Lcom/android/server/role/RoleServicePlatformHelper;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RoleServicePlatformHelperImpl"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$iHIoFGt-sugSqlklSHHOwdIQL9Y(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 9

    .line 314
    :try_start_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 316
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 319
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 321
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_23
    if-ge v3, v1, :cond_31

    .line 323
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 327
    :cond_31
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 328
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p2

    :goto_3d
    if-ge v2, p2, :cond_4b

    .line 330
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_4b
    return-void

    :catch_4c
    move-exception p0

    .line 334
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getFile(I)Ljava/io/File;
    .registers 3

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "roles.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public computePackageStateHash(I)Ljava/lang/String;
    .registers 8

    .line 305
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 307
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 309
    new-instance v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;

    invoke-direct {v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;-><init>()V

    .line 311
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 312
    new-instance v4, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-virtual {v0, v4, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    const/4 v0, 0x0

    .line 339
    const-string v4, ""

    if-eqz v1, :cond_3d

    .line 340
    :try_start_2c
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v5

    if-ne v5, p1, :cond_3d

    .line 342
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 344
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3e

    :cond_3d
    move-object v5, v4

    .line 348
    :goto_3e
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    if-eqz v1, :cond_4d

    .line 352
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 354
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 357
    :cond_4d
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_demo_mode"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p0, 0x1

    .line 360
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 361
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_6b

    .line 366
    invoke-virtual {v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->getDigestAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_6b
    move-exception p0

    .line 364
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getLegacyRoleState(I)Ljava/util/Map;
    .registers 3

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFile(I)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_b

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFromLegacySettings(I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public final isSettingsApplication(Ljava/lang/String;I)Z
    .registers 5

    .line 291
    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0xd0000

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 296
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_1a

    goto :goto_21

    .line 299
    :cond_1a
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public final parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .registers 7

    .line 160
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 165
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_38

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1a

    const/4 v4, 0x3

    if-eq v2, v4, :cond_38

    :cond_1a
    if-gt v3, v0, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    goto :goto_b

    .line 171
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "holder"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 172
    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_38
    return-object p0
.end method

.method public final parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 8

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 141
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_3d

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3d

    :cond_1a
    if-gt v4, v1, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_20

    goto :goto_b

    .line 147
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "role"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 148
    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;

    move-result-object v4

    .line 150
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3d
    return-object v0
.end method

.method public final parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 7

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 119
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_2d

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2d

    :cond_15
    if-gt v3, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    goto :goto_6

    .line 125
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "roles"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing <roles> in roles.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readFile(I)Ljava/util/Map;
    .registers 6

    .line 97
    invoke-static {p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->getFile(I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 98
    :try_start_5
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_e} :catch_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_26

    .line 99
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 100
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p0

    .line 102
    sget-object v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Read legacy roles.xml successfully"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_29

    if-eqz v1, :cond_28

    .line 104
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_25} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    goto :goto_35

    :cond_28
    return-object p0

    :catchall_29
    move-exception p0

    if-eqz v1, :cond_34

    .line 98
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v1

    :try_start_31
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw p0
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_35} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_35} :catch_26
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_26

    .line 108
    :goto_35
    sget-object v1, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse legacy roles.xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 105
    :catch_4c
    sget-object p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Legacy roles.xml not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final readFromLegacySettings(I)Ljava/util/Map;
    .registers 8

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 191
    const-string v2, "assistant"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 199
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 200
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    :cond_2b
    move-object v2, v4

    goto :goto_42

    .line 205
    :cond_2d
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 206
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040021

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    :goto_42
    if-eqz v2, :cond_4d

    .line 212
    const-string v5, "android.app.role.ASSISTANT"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_4d
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 218
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 221
    const-string v5, "android.app.role.BROWSER"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_64
    const-string v2, "dialer_default_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_82

    .line 230
    :cond_71
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 235
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040023

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_82

    :cond_81
    move-object v2, v4

    :goto_82
    if-eqz v2, :cond_8d

    .line 240
    const-string v5, "android.app.role.DIALER"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_8d
    const-string/jumbo v2, "sms_default_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    goto :goto_b2

    .line 249
    :cond_9b
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 252
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040024

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b2

    :cond_b1
    move-object v2, v4

    :goto_b2
    if-eqz v2, :cond_bd

    .line 257
    const-string v5, "android.app.role.SMS"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_bd
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 264
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0xd0000

    .line 263
    invoke-virtual {v3, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 268
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_df

    .line 269
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_e0

    :cond_df
    move-object v2, v4

    :goto_e0
    if-eqz v2, :cond_e9

    .line 270
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->isSettingsApplication(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_e9

    goto :goto_ea

    :cond_e9
    move-object v4, v2

    :cond_ea
    :goto_ea
    if-eqz v4, :cond_f5

    .line 277
    const-string p0, "android.app.role.HOME"

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_f5
    const-string p0, "emergency_assistance_application"

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_106

    .line 284
    const-string p1, "android.app.role.EMERGENCY"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_106
    return-object v0
.end method
