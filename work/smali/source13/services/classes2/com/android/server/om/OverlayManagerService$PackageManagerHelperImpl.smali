.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    }
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInitializedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 1172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    .line 1175
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 1176
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1177
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1178
    return-void
.end method

.method private addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # I

    .line 1239
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1240
    .local v0, "pkgUsers":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    if-nez v0, :cond_1f

    .line 1241
    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers-IA;)V

    move-object v0, v1

    .line 1242
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 1244
    :cond_1f
    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fputmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 1246
    :goto_22
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1247
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1
.end method

.method private addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 1227
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1228
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_2d

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android package for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' could not be found; continuing as if package was never added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "OverlayManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    const/4 v1, 0x0

    return-object v1

    .line 1233
    :cond_2d
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1
.end method

.method private removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    .param p2, "user"    # I

    .line 1262
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1263
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1264
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    :cond_22
    return-void
.end method

.method private removePackageUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 1253
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1254
    .local v0, "pkgUsers":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    if-nez v0, :cond_b

    .line 1255
    return-void

    .line 1257
    :cond_b
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    .line 1258
    return-void
.end method


# virtual methods
.method public doesTargetDefineOverlayable(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1344
    .local v0, "packageInfo":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_25

    .line 1348
    const/4 v1, 0x0

    .line 1350
    .local v1, "apkAssets":Landroid/content/res/ApkAssets;
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v2

    move-object v1, v2

    .line 1351
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    .line 1353
    if-eqz v1, :cond_1b

    .line 1355
    :try_start_16
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 1357
    goto :goto_1b

    .line 1356
    :catchall_1a
    move-exception v3

    .line 1351
    :cond_1b
    :goto_1b
    return v2

    .line 1353
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_24

    .line 1355
    :try_start_1f
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 1357
    goto :goto_24

    .line 1356
    :catchall_23
    move-exception v3

    .line 1359
    :cond_24
    :goto_24
    throw v2

    .line 1345
    .end local v1    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_25
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to get target package"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/om/DumpState;

    .line 1388
    const-string v0, "AndroidPackage cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result v0

    const-string v1, "    "

    if-nez v0, :cond_2e

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    return-void

    .line 1395
    :cond_2e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1396
    const-string v0, "    <empty>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    return-void

    .line 1400
    :cond_3c
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_43
    if-ge v0, v2, :cond_8d

    .line 1401
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1402
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1403
    .local v4, "pkg":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " users="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkg":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 1406
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_8d
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1370
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1371
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    invoke-direct {p0, v1, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    .line 1370
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1373
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public getConfigSignaturePackage()Ljava/lang/String;
    .registers 4

    .line 1310
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "pkgs":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    aget-object v1, v0, v2

    :goto_10
    return-object v1
.end method

.method public getNamedActors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1291
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetOverlayableName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1322
    .local v0, "packageInfo":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_25

    .line 1326
    const/4 v1, 0x0

    .line 1328
    .local v1, "apkAssets":Landroid/content/res/ApkAssets;
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v2

    move-object v1, v2

    .line 1329
    invoke-virtual {v1, p2}, Landroid/content/res/ApkAssets;->getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    .line 1331
    if-eqz v1, :cond_1b

    .line 1333
    :try_start_16
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 1335
    goto :goto_1b

    .line 1334
    :catchall_1a
    move-exception v3

    .line 1329
    :cond_1b
    :goto_1b
    return-object v2

    .line 1331
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_24

    .line 1333
    :try_start_1f
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 1335
    goto :goto_24

    .line 1334
    :catchall_23
    move-exception v3

    .line 1337
    :cond_24
    :goto_24
    throw v2

    .line 1323
    .end local v1    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_25
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to get target package"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1208
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1209
    .local v0, "pkg":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1210
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1

    .line 1213
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2d

    if-nez v2, :cond_27

    .line 1214
    return-object v1

    .line 1220
    :cond_27
    nop

    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1

    .line 1216
    :catch_2d
    move-exception v2

    .line 1217
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check availability of package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    return-object v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1380
    :catch_7
    move-exception v0

    .line 1381
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public initializeForUser(I)Landroid/util/ArrayMap;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1189
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 1194
    :cond_1f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1195
    .local v0, "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_2b
    if-ge v1, v2, :cond_55

    .line 1196
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1197
    .local v3, "pkg":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1198
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .end local v3    # "pkg":Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1201
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_55
    return-object v0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1285
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initializeForUser$0$com-android-server-om-OverlayManagerService$PackageManagerHelperImpl(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1191
    invoke-direct {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1270
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Ljava/lang/String;I)V

    .line 1281
    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1276
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "packageName2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1300
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 1302
    :catch_b
    move-exception v1

    .line 1305
    return v0
.end method
