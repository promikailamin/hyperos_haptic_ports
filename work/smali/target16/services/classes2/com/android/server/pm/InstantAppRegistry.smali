.class public Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

.field public final mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$4nF9pSnc0Uypodr6i7PK2TAqKk4(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 398
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6Z9TWJGFYHbhaXUXwQNg4Xa2Vt8(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 7

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$goBi7J0MOR_NWMY2l8pDzQIPn9A(Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;)J
    .registers 3

    .line 842
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$oXH1b2WOXHdE9iL_qlu4NoKN34c(Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;)J
    .registers 3

    .line 843
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$yPlgZBhW7tOn4Xi2FvzE7v0VKz0(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 666
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/InstantAppRegistry;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistInstantApplicationCookie(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcomputeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smpeekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V
    .registers 6

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 189
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 210
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 212
    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 213
    iput-object p4, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 214
    new-instance p1, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 216
    new-instance p1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 217
    new-instance p2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 218
    new-instance p3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 220
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 221
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 222
    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 223
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 189
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 232
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 233
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 234
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 235
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 238
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 240
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 242
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 246
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    return-void
.end method

.method public static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 1122
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cookie_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1125
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public static deleteDir(Ljava/io/File;)V
    .registers 5

    .line 1258
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1260
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1261
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1264
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 1254
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstantApplicationsDir(I)Ljava/io/File;
    .registers 3

    .line 1249
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "instant"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private onChanged()V
    .registers 1

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static parseMetadata(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 5

    .line 1152
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1153
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1154
    const-string/jumbo v1, "package"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1155
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .registers 7

    .line 1093
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1098
    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_4c

    .line 1104
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1105
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1106
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1109
    :try_start_1d
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 1110
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1111
    invoke-static {v4, v1}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    invoke-direct {v5, v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_2a} :catch_30
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_30
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1116
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :catchall_2e
    move-exception p0

    goto :goto_48

    :catch_30
    move-exception v1

    .line 1113
    :try_start_31
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing instant metadata file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_2e

    .line 1116
    :goto_48
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1117
    throw p0

    .line 1100
    :catch_4c
    const-string p0, "InstantAppRegistry"

    const-string v0, "No instant metadata file"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static parsePackage(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 8

    const/4 v0, 0x0

    .line 1164
    const-string v1, "label"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 1170
    :cond_15
    :goto_15
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1171
    const-string/jumbo v4, "permissions"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1172
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_15

    .line 1176
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 1177
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1179
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1180
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1182
    new-instance v2, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v2, p1, v0, p0, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static parsePermissions(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .registers 8

    .line 1190
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1191
    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1192
    const-string/jumbo v1, "permission"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1193
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    const-string v2, "granted"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1196
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2f
    return-void
.end method

.method public static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 7

    .line 1130
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1131
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 1134
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    .line 1138
    :cond_13
    array-length p1, p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_3b

    aget-object v2, p0, v1

    .line 1139
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_38

    .line 1140
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1141
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    return-object v2

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public addInstantApp(II)V
    .registers 6

    .line 546
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez v1, :cond_1a

    .line 549
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 550
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_23

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    .line 552
    invoke-virtual {v1, p2, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 553
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_18

    .line 554
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    .line 553
    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_18

    throw p0
.end method

.method public final addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 8

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 611
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 612
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1c

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 617
    :cond_1c
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 619
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 622
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final canPropagatePermission(Ljava/lang/String;)Z
    .registers 4

    .line 1006
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    .line 1007
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    const/4 v0, 0x0

    .line 1008
    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1011
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    .line 1012
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_29

    .line 1014
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public final createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;
    .registers 13

    .line 930
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 931
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5f

    .line 935
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 936
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 938
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 939
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-interface {v2, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    .line 940
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 941
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 945
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 946
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    move-object v8, p1

    move v7, p2

    .line 945
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p3, :cond_4d

    .line 948
    new-instance p0, Landroid/content/pm/InstantAppInfo;

    invoke-direct {p0, p1, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 951
    :cond_4d
    new-instance p2, Landroid/content/pm/InstantAppInfo;

    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 952
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {p2, p3, p0, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p2

    :cond_5f
    :goto_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteInstantApplicationMetadata(Ljava/lang/String;I)V
    .registers 6

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_3
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 669
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 670
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 671
    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 672
    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 673
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 675
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_3c

    .line 677
    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_38

    throw p0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 8

    .line 907
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    .line 908
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_34

    .line 910
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v3, :cond_31

    .line 911
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_31

    :cond_1f
    const/4 v4, 0x1

    .line 914
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_31

    :cond_27
    if-nez v1, :cond_2e

    .line 919
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 921
    :cond_2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    return-object v1
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 331
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    if-eqz v1, :cond_38

    .line 335
    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_21
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1e

    :try_start_1c
    monitor-exit p0

    return-object p1

    :catchall_1e
    move-exception p1

    goto/16 :goto_a1

    :catch_21
    move-exception v1

    .line 337
    const-string v2, "InstantAppRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read instant app android id file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    const/16 v0, 0x8

    .line 341
    new-array v0, v0, [B

    .line 342
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    .line 343
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_62

    .line 346
    const-string p1, "InstantAppRegistry"

    const-string p2, "Cannot create instant app cookie directory"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit p0

    goto :goto_a0

    .line 349
    :cond_62
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "android_id"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_1c .. :try_end_6d} :catchall_1e

    .line 351
    :try_start_6d
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_7d
    .catchall {:try_start_6d .. :try_end_72} :catchall_1e

    .line 352
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7f

    .line 353
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
    .catchall {:try_start_79 .. :try_end_7c} :catchall_1e

    goto :goto_9f

    :catch_7d
    move-exception p1

    goto :goto_89

    :catchall_7f
    move-exception p2

    .line 351
    :try_start_80
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception p1

    :try_start_85
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_88
    throw p2
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_7d
    .catchall {:try_start_85 .. :try_end_89} :catchall_1e

    .line 354
    :goto_89
    :try_start_89
    const-string p2, "InstantAppRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing instant app android id file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_9f
    monitor-exit p0

    :goto_a0
    return-object v0

    .line 357
    :goto_a1
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_89 .. :try_end_a2} :catchall_1e

    throw p1
.end method

.method public getInstantAppCookie(Lcom/android/server/pm/pkg/AndroidPackage;I)[B
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)[B

    move-result-object p0

    if-eqz p0, :cond_f

    .line 260
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_42

    .line 262
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    if-eqz p1, :cond_3f

    .line 265
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_29
    .catchall {:try_start_1f .. :try_end_27} :catchall_d

    :try_start_27
    monitor-exit v0

    return-object p0

    .line 267
    :catch_29
    const-string p1, "InstantAppRegistry"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading cookie file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_d

    throw p0
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 318
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 319
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "icon.png"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1e
    move-exception p1

    goto :goto_23

    :cond_20
    const/4 p1, 0x0

    .line 324
    monitor-exit p0

    return-object p1

    .line 325
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1e

    throw p1
.end method

.method public getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 4

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_10

    if-eqz p0, :cond_f

    .line 366
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-object v0

    :cond_10
    return-object p0
.end method

.method public final getUninstalledInstantAppStates(I)Ljava/util/List;
    .registers 9

    .line 1052
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v1, :cond_13

    .line 1054
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_14

    .line 1056
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception p0

    goto :goto_5b

    :cond_13
    const/4 v1, 0x0

    .line 1059
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_11

    .line 1061
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1063
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1065
    array-length v2, v0

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_4e

    aget-object v4, v0, v3

    .line 1066
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_4b

    .line 1069
    :cond_32
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "metadata.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1072
    invoke-static {v5}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v4

    if-nez v4, :cond_41

    goto :goto_4b

    :cond_41
    if-nez v1, :cond_48

    .line 1077
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    :cond_48
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1084
    :cond_4e
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1085
    :try_start_51
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1086
    monitor-exit v2

    return-object v1

    :catchall_58
    move-exception p0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw p0

    .line 1059
    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_11

    throw p0
.end method

.method public final getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 5

    .line 961
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStates(I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2a

    .line 962
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_2a

    .line 967
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p2, :cond_2a

    .line 969
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    if-nez p1, :cond_22

    .line 971
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 973
    :cond_22
    iget-object v1, v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2a
    :goto_2a
    return-object p1
.end method

.method public grantInstantAccess(ILandroid/content/Intent;II)Z
    .registers 9

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 514
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_6d

    .line 516
    :cond_c
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v1, :cond_6b

    .line 517
    invoke-virtual {v1, p4}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_6b

    .line 520
    :cond_1b
    invoke-virtual {v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 521
    monitor-exit v0

    return v2

    :cond_23
    if-eqz p2, :cond_41

    .line 523
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 524
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 525
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 526
    monitor-exit v0

    return v2

    .line 529
    :cond_41
    iget-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedSparseArray;

    if-nez p2, :cond_55

    .line 532
    new-instance p2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 535
    :cond_55
    invoke-virtual {p2, p3}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez p0, :cond_65

    .line 537
    new-instance p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 538
    invoke-virtual {p2, p3, p0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_65
    const/4 p1, 0x1

    .line 540
    invoke-virtual {p0, p4, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 541
    monitor-exit v0

    return p1

    .line 518
    :cond_6b
    :goto_6b
    monitor-exit v0

    return v2

    .line 542
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_a

    throw p0
.end method

.method public final hasInstantAppMetadata(Ljava/lang/String;I)Z
    .registers 5

    .line 728
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 729
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "metadata.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/io/File;

    const-string v1, "icon.png"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/io/File;

    const-string v1, "android_id"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_35

    .line 732
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 4

    .line 658
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppState(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadata(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final hasUninstalledInstantAppState(Ljava/lang/String;I)Z
    .registers 7

    .line 707
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_c

    .line 709
    monitor-exit v0

    return v1

    :catchall_a
    move-exception p0

    goto :goto_37

    .line 712
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_16

    .line 714
    monitor-exit v0

    return v1

    .line 716
    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_1b
    if-ge v2, p2, :cond_35

    .line 718
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 719
    iget-object v3, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v3}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 p0, 0x1

    .line 720
    monitor-exit v0

    return p0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 723
    :cond_35
    monitor-exit v0

    return v1

    .line 724
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_a

    throw p0
.end method

.method public isInstantAccessGranted(III)Z
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseArray;

    const/4 p1, 0x0

    if-nez p0, :cond_12

    .line 489
    monitor-exit v0

    return p1

    :catchall_10
    move-exception p0

    goto :goto_22

    .line 491
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez p0, :cond_1c

    .line 493
    monitor-exit v0

    return p1

    .line 495
    :cond_1c
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 496
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_10

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 197
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/InstantAppRegistry$2;-><init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V
    .registers 15

    .line 375
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p2, 0x0

    goto :goto_c

    .line 376
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    :goto_c
    if-nez p2, :cond_f

    return-void

    .line 381
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_12
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_d1

    aget v4, p3, v3

    .line 384
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_cd

    .line 389
    :cond_25
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 392
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 393
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    goto :goto_3d

    :catchall_3a
    move-exception p0

    goto/16 :goto_d3

    .line 397
    :cond_3d
    :goto_3d
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v5, p2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 402
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 403
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 404
    new-instance v6, Ljava/io/File;

    const-string v7, "icon.png"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 407
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_6d

    goto :goto_cd

    .line 412
    :cond_6d
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    const/4 v8, 0x7

    .line 414
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 424
    monitor-exit v0

    return-void

    .line 431
    :cond_89
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 430
    invoke-static {v7}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v7

    .line 432
    array-length v8, v7

    move v9, v2

    :goto_97
    if-ge v9, v8, :cond_a6

    aget-object v10, v7, v9

    .line 433
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 434
    monitor-exit v0

    return-void

    :cond_a3
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    .line 439
    :cond_a6
    const-string v6, "InstantAppRegistry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signature for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " changed - dropping cookie"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v6, p2, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 443
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_cd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 445
    :cond_d1
    monitor-exit v0

    return-void

    :goto_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_12 .. :try_end_d4} :catchall_3a

    throw p0
.end method

.method public onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_6
    array-length v1, p3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_42

    aget v3, p3, v2

    if-eqz p4, :cond_17

    .line 456
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_3f

    :catchall_15
    move-exception p0

    goto :goto_44

    .line 460
    :cond_17
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 462
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 463
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_3f

    .line 466
    :cond_28
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 467
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 468
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 471
    :cond_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_15

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 478
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 479
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 480
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .registers 8

    .line 1021
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz p0, :cond_31

    .line 1024
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_31

    .line 1026
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_31

    .line 1028
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1030
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1031
    invoke-virtual {v4}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1032
    iget-object p0, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    goto :goto_49

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1037
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_2c

    .line 1039
    new-instance p0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "metadata.xml"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1041
    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object p0

    if-nez p0, :cond_46

    const/4 p0, 0x0

    return-object p0

    .line 1046
    :cond_46
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object p0

    .line 1037
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_2c

    throw p0
.end method

.method public final persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 294
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 295
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_1e

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1e

    .line 296
    const-string p1, "InstantAppRegistry"

    const-string p2, "Cannot create instant app cookie directory"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_6b

    .line 300
    :cond_1e
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_31

    .line 301
    const-string p2, "InstantAppRegistry"

    const-string p4, "Cannot delete instant app cookie file"

    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    if-eqz p1, :cond_69

    .line 305
    array-length p2, p1

    if-gtz p2, :cond_37

    goto :goto_69

    .line 308
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_1c

    .line 309
    :try_start_38
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_46

    .line 310
    :try_start_3d
    array-length p2, p1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_48

    .line 311
    :try_start_42
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    goto :goto_52

    :catchall_48
    move-exception p1

    .line 309
    :try_start_49
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p0

    :try_start_4e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_46

    .line 312
    :goto_52
    const-string p1, "InstantAppRegistry"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error writing instant app cookie file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 306
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit p0

    return-void

    .line 308
    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_1c

    throw p1
.end method

.method public final propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 12

    .line 982
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 986
    :cond_b
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_15
    return-void

    .line 989
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 991
    :try_start_1a
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_4f

    aget-object v5, v0, v4

    .line 992
    invoke-virtual {p0, v5}, Lcom/android/server/pm/InstantAppRegistry;->canPropagatePermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 993
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 995
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v7, Landroid/permission/PermissionManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    .line 996
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 997
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 996
    invoke-virtual {v6, v7, v5, v8}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_49
    .catchall {:try_start_1a .. :try_end_49} :catchall_4a

    goto :goto_4c

    :catchall_4a
    move-exception p0

    goto :goto_53

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1001
    :cond_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw p0
.end method

.method public pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 757
    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 760
    const-string p1, "InstantAppRegistry"

    const-string p2, "Error pruning installed instant apps"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public pruneInstantApps(Lcom/android/server/pm/Computer;)V
    .registers 14

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    const-string v1, "installed_instant_app_max_cache_period"

    const-wide v2, 0x39ef8b000L

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 741
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 742
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uninstalled_instant_app_max_cache_period"

    .line 741
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide v6, 0x7fffffffffffffffL

    move-object v4, p0

    move-object v5, p1

    .line 747
    :try_start_25
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    move-object p0, v0

    .line 750
    const-string p1, "InstantAppRegistry"

    const-string v0, "Error pruning installed and uninstalled instant apps"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    .registers 34

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    .line 791
    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 792
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 794
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v4, v4, p2

    const/4 v5, 0x1

    if-ltz v4, :cond_1e

    return v5

    .line 798
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 801
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v8

    .line 804
    iget-object v9, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v9

    .line 807
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v10

    .line 808
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_3a
    if-ge v13, v11, :cond_c0

    .line 810
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v14, :cond_46

    const/4 v15, 0x0

    goto :goto_4a

    .line 811
    :cond_46
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    :goto_4a
    if-nez v15, :cond_52

    move-object/from16 v25, v3

    const/16 p1, 0x0

    goto/16 :goto_b9

    .line 816
    :cond_52
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->packageLastUsedApi()Z

    move-result v16

    if-eqz v16, :cond_65

    const/16 p1, 0x0

    .line 817
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/server/art/DexUseManagerLocal;->getPackageLastUsedAtMillis(Ljava/lang/String;)J

    move-result-wide v16

    :goto_62
    move-wide/from16 v20, v16

    goto :goto_70

    :cond_65
    const/16 p1, 0x0

    .line 818
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v16

    goto :goto_62

    :goto_70
    sub-long v16, v6, v20

    cmp-long v12, v16, p4

    if-gez v12, :cond_79

    move-object/from16 v25, v3

    goto :goto_b9

    .line 825
    :cond_79
    array-length v12, v9

    move/from16 v5, p1

    move/from16 v17, v5

    :goto_7e
    move-object/from16 v25, v3

    if-ge v5, v12, :cond_9f

    aget v3, v9, v5

    .line 826
    invoke-interface {v14, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 827
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v18

    if-eqz v18, :cond_9a

    .line 828
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_97

    const/16 v17, 0x1

    goto :goto_9a

    :cond_97
    move/from16 v17, p1

    goto :goto_9f

    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v25

    goto :goto_7e

    :cond_9f
    :goto_9f
    if-eqz v17, :cond_b9

    .line 837
    new-instance v18, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 838
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v22

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v24}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;-><init>(Ljava/lang/String;JJLcom/android/server/pm/InstantAppRegistry-IA;)V

    move-object/from16 v3, v18

    .line 837
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b9
    :goto_b9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v25

    const/4 v5, 0x1

    goto/16 :goto_3a

    :cond_c0
    move-object/from16 v25, v3

    const/16 p1, 0x0

    .line 842
    new-instance v3, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;-><init>()V

    .line 843
    invoke-interface {v3, v5}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 842
    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 845
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p1

    :goto_df
    if-ge v5, v3, :cond_105

    .line 847
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    invoke-virtual {v6}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName()Ljava/lang/String;

    move-result-object v8

    .line 848
    iget-object v7, v0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_102

    .line 852
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    cmp-long v6, v8, p2

    if-ltz v6, :cond_102

    return v7

    :cond_102
    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    .line 858
    :cond_105
    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 861
    :try_start_108
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    move/from16 v6, p1

    :goto_111
    if-ge v6, v5, :cond_174

    aget v7, v4, v6

    .line 863
    new-instance v8, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1, v2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {v0, v8, v7}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 869
    invoke-static {v7}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v7

    .line 870
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_12a

    :cond_127
    :goto_127
    const/16 v16, 0x1

    goto :goto_171

    .line 873
    :cond_12a
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_131

    goto :goto_127

    .line 877
    :cond_131
    array-length v8, v7

    move/from16 v9, p1

    :goto_134
    if-ge v9, v8, :cond_127

    aget-object v10, v7, v9

    .line 878
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_141

    :cond_13e
    :goto_13e
    const/16 v16, 0x1

    goto :goto_16e

    .line 882
    :cond_141
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "metadata.xml"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_150

    goto :goto_13e

    .line 887
    :cond_150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 888
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v11, v12, v1

    if-lez v11, :cond_13e

    .line 890
    invoke-static {v10}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 891
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    cmp-long v10, v10, p2

    if-ltz v10, :cond_13e

    .line 892
    monitor-exit v3

    const/16 v16, 0x1

    return v16

    :catchall_16c
    move-exception v0

    goto :goto_176

    :goto_16e
    add-int/lit8 v9, v9, 0x1

    goto :goto_134

    :goto_171
    add-int/lit8 v6, v6, 0x1

    goto :goto_111

    .line 897
    :cond_174
    monitor-exit v3

    return p1

    :goto_176
    monitor-exit v3
    :try_end_177
    .catchall {:try_start_108 .. :try_end_177} :catchall_16c

    throw v0
.end method

.method public pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    .line 768
    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 771
    const-string p1, "InstantAppRegistry"

    const-string p2, "Error pruning uninstalled instant apps"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final removeAppLPw(II)V
    .registers 4

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    goto :goto_d

    .line 595
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    if-nez p1, :cond_e

    :goto_d
    return-void

    .line 599
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void
.end method

.method public final removeInstantAppLPw(II)V
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    goto :goto_d

    .line 563
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 569
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_39

    if-nez v0, :cond_19

    .line 584
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    .line 576
    :cond_19
    :try_start_19
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_39

    if-nez p1, :cond_25

    .line 584
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    .line 580
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_3b

    .line 581
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_39

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :catchall_39
    move-exception p1

    goto :goto_3f

    .line 584
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    :goto_3f
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 585
    throw p1
.end method

.method public final removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .registers 6

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    goto :goto_38

    .line 687
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    goto :goto_38

    .line 691
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_38

    .line 693
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 694
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_35

    .line 697
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 698
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 699
    iget-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 700
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_38
    :goto_38
    return-void
.end method

.method public setInstantAppCookie(Lcom/android/server/pm/pkg/AndroidPackage;[BII)Z
    .registers 7

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_3b

    .line 277
    :try_start_5
    array-length v1, p2

    if-lez v1, :cond_3b

    .line 278
    array-length v1, p2

    if-le v1, p3, :cond_3b

    .line 279
    const-string p0, "InstantAppRegistry"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app cookie for package "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes while max size is "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 282
    monitor-exit v0

    return p0

    :catchall_39
    move-exception p0

    goto :goto_43

    .line 286
    :cond_3b
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILcom/android/server/pm/pkg/AndroidPackage;[B)V

    const/4 p0, 0x1

    .line 287
    monitor-exit v0

    return p0

    .line 288
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_39

    throw p0
.end method

.method public snapshot()Lcom/android/server/pm/InstantAppRegistry;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/InstantAppRegistry;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->snapshot()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final writeInstantApplicationIconLPw(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 8

    .line 627
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 633
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 637
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_28

    .line 638
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4b

    .line 640
    :cond_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 641
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 640
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 642
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 643
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v0

    .line 647
    :goto_4b
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "icon.png"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    :try_start_5a
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_74

    .line 651
    :try_start_5f
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6a

    .line 652
    :try_start_66
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_74

    return-void

    :catchall_6a
    move-exception p0

    .line 650
    :try_start_6b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p1

    :try_start_70
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_73
    throw p0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    :catch_74
    move-exception p0

    .line 653
    const-string p1, "InstantAppRegistry"

    const-string p2, "Error writing instant app icon"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .registers 14

    .line 1204
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "package"

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 1205
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1e

    return-void

    .line 1209
    :cond_1e
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "metadata.xml"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1211
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1214
    :try_start_2c
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_94

    .line 1216
    :try_start_30
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 1217
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1219
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1221
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    const-string v6, "label"

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 1223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1222
    invoke-virtual {p1, p0}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1223
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    invoke-interface {v5, v3, v6, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1225
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object p0

    array-length v6, p0

    const/4 v8, 0x0

    :goto_5e
    if-ge v8, v6, :cond_84

    aget-object v9, p0, v8

    .line 1227
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    const-string/jumbo v10, "name"

    invoke-interface {v5, v3, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 1230
    const-string v9, "granted"

    invoke-interface {v5, v3, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7e

    :catchall_7b
    move-exception p0

    move-object v3, v4

    goto :goto_95

    .line 1232
    :cond_7e
    :goto_7e
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 1234
    :cond_84
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1236
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1239
    invoke-virtual {p2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_90
    .catchall {:try_start_30 .. :try_end_90} :catchall_7b

    .line 1244
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_94
    move-exception p0

    .line 1241
    :goto_95
    :try_start_95
    const-string p1, "InstantAppRegistry"

    const-string v0, "Failed to write instant state, restoring backup"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    invoke-virtual {p2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_a3

    .line 1244
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_a3
    move-exception p0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    throw p0
.end method
