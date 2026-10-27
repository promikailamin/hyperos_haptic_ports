.class public Lcom/android/server/pm/PackageArchiver;
.super Ljava/lang/Object;
.source "PackageArchiver.java"


# static fields
.field public static final OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

.field public final mContext:Landroid/content/Context;

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mLauncherIntentSenders:Ljava/util/Map;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$0gd8Ah2iIVI3h6Png4EppIlTZZs(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->lambda$requestUnarchive$7(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oYflwPwHhqY2bUNyOzbuiKphG4(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->lambda$getLauncherActivityInfos$10(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3EBsOLpXGHRhzT57YWxNN-wXFYI(Lcom/android/server/pm/PackageArchiver;Landroid/content/Intent;I)Landroid/content/pm/ParceledListSlice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->lambda$verifySupportsUnarchival$4(Landroid/content/Intent;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8jaZ4z71lnZ42I-QFfGiHMyUOcc(Lcom/android/server/pm/PackageArchiver;Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->lambda$requestUnarchiveConfirmation$8(Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BDHK3QGfnRL2IfqgYuBxdby_waE(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->lambda$isAppOptedOutOfArchiving$5(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IRziqMMKXRGs6Wvg4xbDipmfMIY(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageArchiver;->lambda$createAndStoreArchiveState$3(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRYpYKkDtSAC6PjGIMBe2YrbluI(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)Ljava/lang/Integer;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver;->lambda$requestUnarchive$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MW5IulJusOuH5ua9LPbDolVhJpI(Lcom/android/server/pm/PackageArchiver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageArchiver;->lambda$createDraftSession$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNSE9vbDrfErSJXbViY_4TSX_u4(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->lambda$requestArchive$1(Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iKI8DsLnVekLjZkXI25s-efrO7U(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->lambda$requestUnarchiveOnActivityStart$2(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYGgq6m69BMNar5oOISFeqK8gFo(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;IIILjava/lang/Void;)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/PackageArchiver;->lambda$requestArchive$0(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;IIILjava/lang/Void;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateHelper(Lcom/android/server/pm/PackageArchiver;)Lcom/android/server/pm/AppStateHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PackageArchiver;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 154
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 156
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 180
    new-instance p2, Lcom/android/server/pm/AppStateHelper;

    invoke-direct {p2, p1}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 181
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    return-void
.end method

.method public static bytesFromBitmapFile(Ljava/nio/file/Path;)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1451
    :cond_4
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;
    .registers 7

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 1474
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1479
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_50

    .line 1480
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    if-nez v3, :cond_25

    goto :goto_4d

    .line 1484
    :cond_25
    new-instance v4, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v4}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 1485
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 1486
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 1487
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageArchiver;->bytesFromBitmapFile(Ljava/nio/file/Path;)[B

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 1489
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    .line 1488
    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->bytesFromBitmapFile(Ljava/nio/file/Path;)[B

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 1490
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1493
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_63

    .line 1498
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    .line 1494
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to extract title and icon of main activities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1475
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No activities in archive state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createArchivedActivities(Ljava/util/List;I)[Landroid/content/pm/ArchivedActivityParcel;
    .registers 10

    if-eqz p0, :cond_75

    .line 1506
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1511
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_5a

    .line 1512
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    if-nez v4, :cond_22

    goto :goto_57

    .line 1516
    :cond_22
    new-instance v5, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v5}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 1517
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 1518
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 1519
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_44

    move-object v4, v7

    goto :goto_50

    .line 1520
    :cond_44
    invoke-virtual {v4, v2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    :goto_50
    iput-object v4, v5, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 1522
    iput-object v7, v5, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 1523
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1526
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6d

    .line 1531
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    .line 1527
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to extract title and icon of main activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1507
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No launcher activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createIconsDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 1424
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageArchiver;->getIconsDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1425
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 1426
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1427
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1428
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_2e

    .line 1429
    :cond_17
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1435
    :cond_2e
    :goto_2e
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method public static getIconsDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 1440
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 1441
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v2, "package_archiver"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1459
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1460
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1462
    :cond_f
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1463
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public static getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 4

    .line 1329
    invoke-interface {p1, p0, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 1332
    :cond_7
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "Package %s not found."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1333
    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;
    .registers 2

    .line 1183
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1184
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0

    .line 1185
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 1

    .line 1197
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1191
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 1193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponsibleInstallerTitles(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/InstallSource;I[I)Landroid/util/SparseArray;
    .registers 11

    .line 1203
    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object p2

    .line 1204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eq p3, v1, :cond_1e

    .line 1207
    :try_start_f
    invoke-interface {p1, p2, v3, v4, p3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_16

    return-object v2

    .line 1213
    :cond_16
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1215
    invoke-virtual {v0, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1e
    const/4 p3, 0x0

    .line 1218
    :goto_1f
    array-length v1, p4

    if-ge p3, v1, :cond_35

    .line 1219
    aget v1, p4, p3

    .line 1220
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_2b

    goto :goto_32

    .line 1228
    :cond_2b
    invoke-static {p0, v5, p2, v1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1230
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_32} :catch_36

    :goto_32
    add-int/lit8 p3, p3, 0x1

    goto :goto_1f

    :cond_35
    return-object v0

    :catch_36
    return-object v2
.end method

.method public static getUnarchiveForegroundTimeout()I
    .registers 1

    .line 0
    const v0, 0x1d4c0

    return v0
.end method

.method public static isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z
    .registers 2

    .line 186
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isArchivingEnabled()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .registers 12

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 659
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_15

    .line 660
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 661
    new-instance v0, Lcom/android/server/pm/PackageArchiver$FixedSizeBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/server/pm/PackageArchiver$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    goto :goto_16

    :cond_15
    move-object v2, p1

    .line 664
    :goto_16
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v3, p1, v0

    .line 666
    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 669
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 607
    :cond_4
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageArchiver;->createIconsDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 608
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".png"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    invoke-static {p1, p4}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 610
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 612
    :try_start_27
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p0, p3, p4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 616
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_3c

    .line 617
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 621
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception p0

    goto :goto_52

    .line 613
    :cond_3e
    :try_start_3e
    new-instance p0, Ljava/io/IOException;

    const-string p3, "Failure to store icon file %s"

    .line 614
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 613
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_3c

    .line 610
    :goto_52
    :try_start_52
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
.end method

.method public static verifyCaller(II)V
    .registers 3

    if-ne p0, p1, :cond_3

    return-void

    .line 1413
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 1417
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1414
    const-string p1, "The UID %s of callerPackageName set by the caller doesn\'t match the caller\'s actual UID %s."

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final attachListenerToSession(Landroid/content/IntentSender;II)V
    .registers 14

    .line 958
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    .line 959
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getUnarchivalStatus()I

    move-result v0

    if-nez v0, :cond_24

    .line 964
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    .line 966
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v9, p3

    .line 964
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    return-void

    :cond_24
    const/4 p0, -0x1

    if-ne v0, p0, :cond_2b

    .line 973
    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->registerUnarchivalListener(Landroid/content/IntentSender;)V

    return-void

    .line 969
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    iget p1, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 970
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 969
    const-string p2, "Session %s has unarchive status%s but is still active."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V
    .registers 4

    .line 426
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    if-eqz p1, :cond_4f

    .line 427
    :try_start_a
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_4f

    :cond_15
    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageSetting;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;I)V

    .line 435
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 436
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageArchiver;->getIconsDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2c

    goto :goto_4c

    .line 444
    :cond_2c
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4c

    .line 445
    const-string p0, "PackageArchiverService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to clean up archive files for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return-void

    :catchall_4d
    move-exception p1

    goto :goto_54

    .line 429
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 435
    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
.end method

.method public clearArchiveState(Ljava/lang/String;I)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 420
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 421
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    return-void

    :catchall_18
    move-exception p0

    .line 421
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final createAndStoreArchiveState(Ljava/lang/String;I)Ljava/util/concurrent/CompletableFuture;
    .registers 14

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 493
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageArchiver;->verifyNotSystemApp(I)V

    .line 496
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/PackageArchiver;->verifyInstalled(Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 497
    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/PackageArchiver;->verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 501
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageArchiver;->verifyOptOutStatus(Ljava/lang/String;I)V

    .line 503
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 505
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v10}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 506
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v8, p1

    move v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v10
.end method

.method public createArchiveState(Landroid/content/pm/ArchivedPackageParcel;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 15

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p3, v1, v2, p2}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 526
    const-string v2, "PackageArchiverService"

    if-nez v0, :cond_26

    .line 528
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t find installer "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_26
    if-nez p4, :cond_2e

    .line 532
    const-string p0, "Couldn\'t get the title of the installer"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 536
    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/ActivityManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 537
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0

    .line 539
    new-instance p3, Landroid/content/pm/ArchivedPackageInfo;

    invoke-direct {p3, p1}, Landroid/content/pm/ArchivedPackageInfo;-><init>(Landroid/content/pm/ArchivedPackageParcel;)V

    .line 542
    :try_start_41
    invoke-virtual {p3}, Landroid/content/pm/ArchivedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-virtual {p3}, Landroid/content/pm/ArchivedPackageInfo;->getLauncherActivities()Ljava/util/List;

    move-result-object p3

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_57
    if-ge v4, v3, :cond_8c

    .line 546
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ArchivedActivityInfo;

    .line 548
    invoke-virtual {v5}, Landroid/content/pm/ArchivedActivityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    mul-int/lit8 v7, v4, 0x2

    .line 547
    invoke-static {p1, v6, p2, v7, p0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v6

    .line 550
    invoke-virtual {v5}, Landroid/content/pm/ArchivedActivityInfo;->getMonochromeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 549
    invoke-static {p1, v8, p2, v7, p0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v7

    .line 551
    new-instance v8, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 553
    invoke-virtual {v5}, Landroid/content/pm/ArchivedActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 554
    invoke-virtual {v5}, Landroid/content/pm/ArchivedActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v8, v9, v5, v6, v7}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 557
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :catch_8a
    move-exception p0

    goto :goto_92

    .line 560
    :cond_8c
    new-instance p0, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_91} :catch_8a

    return-object p0

    .line 562
    :goto_92
    const-string p1, "Failed to create archive state"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public createArchiveStateInternal(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 14

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 571
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v6

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_1d
    if-ge v8, v7, :cond_4a

    .line 575
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    mul-int/lit8 v5, v8, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 576
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageArchiver;->storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;

    move-result-object p0

    .line 578
    new-instance p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 580
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 581
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p1, p2, v3, p0, v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 584
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object p0, v1

    move-object p1, v2

    move p2, v4

    goto :goto_1d

    .line 587
    :cond_4a
    new-instance p0, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDraftSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)I
    .registers 13

    .line 915
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 916
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 918
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const v3, 0x1040aab

    .line 920
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppLabel(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {p0, p5}, Lcom/android/server/pm/PackageArchiver;->getCurrentLauncherPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_28

    .line 924
    invoke-interface {v0, v1, v3, v4, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    goto :goto_2a

    :cond_28
    const/16 v5, 0x3e8

    .line 926
    :goto_2a
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    if-nez v1, :cond_31

    goto :goto_32

    :cond_31
    move-object p3, v1

    .line 927
    :goto_32
    invoke-virtual {p0, v5, p3}, Lcom/android/server/pm/PackageArchiver;->isOverlayEnabled(ILjava/lang/String;)Z

    move-result p3

    .line 926
    invoke-virtual {p0, p1, v6, p3}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppIcon(Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x60000000

    .line 931
    iput p1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 933
    invoke-interface {v0, p2, v3, v4, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 935
    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p1, v5, v2, p5}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionId(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_54

    .line 939
    invoke-virtual {p0, p4, p1, p5}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    return p1

    .line 943
    :cond_54
    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    move v6, p5

    .line 943
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    .line 948
    invoke-virtual {p0, p4, p1, v6}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    .line 951
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageArchiver;I)V

    .line 952
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->getUnarchiveForegroundTimeout()I

    move-result p0

    int-to-long p4, p0

    .line 951
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p1
.end method

.method public final createErrorDialogIntent(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;I)Landroid/content/Intent;
    .registers 11

    .line 1280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.UNARCHIVE_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    const-string v1, "android.content.pm.extra.UNARCHIVE_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    const-string p1, "android.intent.extra.USER"

    invoke-static {p7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long p1, p4, v1

    if-lez p1, :cond_20

    .line 1284
    const-string p1, "com.android.content.pm.extra.UNARCHIVE_EXTRA_REQUIRED_BYTES"

    invoke-virtual {v0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_20
    if-eqz p6, :cond_27

    .line 1289
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1291
    :cond_27
    const-string p1, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_PACKAGE_NAME"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0, p3, p7}, Lcom/android/server/pm/PackageArchiver;->getInstallerTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_34

    const/4 p0, 0x0

    return-object p0

    .line 1299
    :cond_34
    const-string p1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const-string p1, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_TITLE"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createUnarchiveOptions()Landroid/os/Bundle;
    .registers 7

    .line 1171
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 1172
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->getUnarchiveForegroundTimeout()I

    move-result p0

    int-to-long v1, p0

    const/16 v4, 0x148

    const-string v5, ""

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1175
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1066
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 1070
    :cond_8
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Archived icon cannot be decoded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageArchiverService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2d
    return-object v0
.end method

.method public final getActiveUnarchivalSession(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6

    .line 872
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 873
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 874
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 875
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 876
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    if-ne v2, p2, :cond_30

    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    if-eqz v2, :cond_30

    .line 878
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isUnarchival()Z

    move-result v2

    if-eqz v2, :cond_30

    return-object v1

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAnyArchiveState(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 4

    .line 1048
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 1049
    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1050
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    .line 1053
    :goto_10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_32

    .line 1054
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1055
    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1056
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    return-object p0

    :cond_2f
    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1349
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/PackageArchiver;->isOverlayEnabled(ILjava/lang/String;)Z

    move-result p3

    .line 989
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Z)Landroid/graphics/Bitmap;
    .registers 7

    .line 996
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1001
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/4 v2, 0x0

    .line 1004
    :try_start_15
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_44

    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->getAnyArchiveState(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 1011
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2a

    goto :goto_43

    .line 1018
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageArchiver;->decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageArchiver;->includeCloudOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_42
    return-object p1

    :cond_43
    :goto_43
    return-object v2

    :catch_44
    move-exception p0

    .line 1006
    const-string p2, "Package %s couldn\'t be found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageArchiverService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final getCurrentLauncherPackageName(I)Ljava/lang/String;
    .registers 2

    .line 455
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 458
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstallerTitle(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1307
    const-string v0, "PackageArchiverService"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/16 v2, 0x3e8

    .line 1307
    invoke-static {p1, p0, v2, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_2d

    .line 1316
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    if-nez p0, :cond_28

    .line 1318
    const-string/jumbo p0, "notifyUnarchivalListener: App not archived %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1322
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2d
    move-exception p0

    .line 1311
    const-string/jumbo p2, "notifyUnarchivalListener: Couldn\'t fetch package state for %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getLauncherActivityInfos(Ljava/lang/String;I)Ljava/util/List;
    .registers 4

    .line 1154
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;I)V

    .line 1155
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1158
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12

    return-object p0

    .line 1159
    :cond_12
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "The app %s does not have a main activity."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1160
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLauncherApps()Landroid/content/pm/LauncherApps;
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_10

    .line 1340
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 1342
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public final getOrCreateLauncherListener(ILjava/lang/String;Ljava/lang/String;)Landroid/content/IntentSender;
    .registers 6

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter p2

    .line 478
    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_19

    .line 480
    monitor-exit p2

    return-object v0

    :catchall_17
    move-exception p0

    goto :goto_2a

    .line 482
    :cond_19
    new-instance v0, Landroid/content/IntentSender;

    new-instance v1, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;

    invoke-direct {v1, p0, p3}, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 484
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    monitor-exit p2

    return-object v0

    .line 486
    :goto_2a
    monitor-exit p2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_17

    throw p0
.end method

.method public final getPackageSettingLocked(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 1373
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1375
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_15

    return-object p0

    .line 1376
    :cond_15
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "Package %s not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1377
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getParentUserId(I)I
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_b

    return p1

    .line 383
    :cond_b
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 1353
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_10

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 1356
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public includeCloudOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1082
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 1083
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 1084
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1080153

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 1086
    const-string p0, "PackageArchiverService"

    const-string v0, "Unable to locate cloud overlay for archived app!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1089
    :cond_1d
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1090
    sget-object v2, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1094
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1095
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 1091
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1096
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1098
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1099
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0

    .line 1100
    invoke-static {v2, p0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p1, :cond_5d

    .line 1102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5d
    return-object p0
.end method

.method public isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 10

    .line 728
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 732
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    .line 734
    const-string v6, "isAppArchivable"

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 738
    :try_start_1b
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 738
    invoke-static {p1, p2, v0, v3}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_29} :catch_56

    .line 744
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/4 v4, 0x0

    if-nez v0, :cond_55

    .line 745
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3b

    goto :goto_55

    .line 750
    :cond_3b
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageArchiver;->isAppOptedOutOfArchiving(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    return v4

    .line 755
    :cond_4a
    :try_start_4a
    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/pm/PackageArchiver;->verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 756
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(Ljava/lang/String;I)Ljava/util/List;
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_54} :catch_55

    return v2

    :catch_55
    :cond_55
    :goto_55
    return v4

    :catch_56
    move-exception v0

    move-object p0, v0

    .line 741
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isAppOptedOutOfArchiving(Ljava/lang/String;I)Z
    .registers 4

    .line 768
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isCallerQualifiedForUnarchival(Ljava/lang/String;II)Z
    .registers 6

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_6

    return v1

    .line 344
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PackageArchiver;->isDefaultLauncherApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_d

    return v1

    .line 350
    :cond_d
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    .line 351
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageArchiver;->isLauncherApp(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isDefaultLauncherApp(Ljava/lang/String;I)Z
    .registers 3

    .line 360
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageArchiver;->getParentUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageArchiver;->getCurrentLauncherPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 361
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p0, 0x1

    return p0

    .line 365
    :cond_12
    const-string p2, "Requester of unarchival: %s is not the default launcher package: %s."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageArchiverService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isIntentResolvedToArchivedApp(Landroid/content/Intent;I)Z
    .registers 7

    .line 391
    invoke-static {p1}, Lcom/android/server/pm/PackageArchiver;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 392
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_5d

    .line 395
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_1b

    return v1

    .line 399
    :cond_1b
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p0

    .line 400
    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p2

    if-nez p2, :cond_26

    return v1

    .line 404
    :cond_26
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p0

    move p2, v1

    .line 405
    :goto_2f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4e

    .line 406
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 407
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 p0, 0x1

    return p0

    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    .line 411
    :cond_4e
    const-string p0, "Package: %s is archived but component to start main activity cannot be found!"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageArchiverService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    return v1
.end method

.method public final isLauncherApp(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .registers 10

    .line 372
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 373
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move v5, p3

    .line 374
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 376
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isOverlayEnabled(ILjava/lang/String;)Z
    .registers 4

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v0, 0x91

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$createAndStoreArchiveState$3(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V
    .registers 8

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p0, p4, p3, p5, p1}, Lcom/android/server/pm/PackageArchiver;->createArchiveStateInternal(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    .line 512
    invoke-virtual {p0, p4, p1, p3}, Lcom/android/server/pm/PackageArchiver;->storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V

    const/4 p0, 0x0

    .line 513
    invoke-virtual {p6, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 515
    invoke-virtual {p6, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic lambda$createDraftSession$9(I)V
    .registers 2

    .line 951
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->cleanupDraftIfUnclaimed(I)V

    return-void
.end method

.method public final synthetic lambda$getLauncherActivityInfos$10(Ljava/lang/String;I)Ljava/util/List;
    .registers 4

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$isAppOptedOutOfArchiving$5(ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 769
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v0, 0x61

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$requestArchive$0(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;IIILjava/lang/Void;)V
    .registers 10

    .line 249
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    new-instance p2, Landroid/content/pm/VersionedPackage;

    const/4 v0, -0x1

    invoke-direct {p2, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    return-void
.end method

.method public final synthetic lambda$requestArchive$1(Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 6

    .line 261
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 260
    const-string v1, "Failed to archive %s with message %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageArchiverService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageArchiver;->sendFailureStatus(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$requestUnarchive$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)Ljava/lang/Integer;
    .registers 6

    .line 852
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver;->createDraftSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$requestUnarchive$7(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 7

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting app unarchival for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageArchiverService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->unarchiveInternal(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$requestUnarchiveConfirmation$8(Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    .line 898
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageArchiver;->sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$requestUnarchiveOnActivityStart$2(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .registers 5

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening app details page for ongoing unarchival of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageArchiverService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Landroid/content/pm/LauncherApps;->startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic lambda$verifySupportsUnarchival$4(Landroid/content/Intent;I)Landroid/content/pm/ParceledListSlice;
    .registers 10

    .line 704
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V
    .registers 20

    .line 1242
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1243
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v9, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    const-string v0, "android.content.pm.extra.UNARCHIVE_STATUS"

    invoke-virtual {v9, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_30

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p8

    .line 1247
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageArchiver;->createErrorDialogIntent(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_22

    goto/16 :goto_ae

    .line 1254
    :cond_22
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v9, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1255
    const-string p1, "android.intent.extra.USER"

    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1258
    :cond_30
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x2

    .line 1259
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 1261
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 1263
    :try_start_48
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 1264
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5
    :try_end_4e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_48 .. :try_end_4e} :catch_71
    .catchall {:try_start_48 .. :try_end_4e} :catchall_6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v9

    .line 1263
    :try_start_53
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_56
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_53 .. :try_end_56} :catch_6f
    .catchall {:try_start_53 .. :try_end_56} :catchall_6c

    .line 1269
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v1

    .line 1270
    :try_start_59
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    monitor-exit v1

    goto :goto_92

    :catchall_68
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_68

    throw p0

    :catchall_6c
    move-exception v0

    move-object p1, v0

    goto :goto_98

    :catch_6f
    move-exception v0

    goto :goto_73

    :catch_71
    move-exception v0

    move-object v3, v9

    .line 1267
    :goto_73
    :try_start_73
    const-string v1, "PackageArchiverService"

    const-string v2, "Failed to send unarchive intent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_6c

    .line 1269
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v1

    .line 1270
    :try_start_84
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    monitor-exit v1

    :goto_92
    move-object v9, v3

    goto :goto_3c

    :catchall_94
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_94

    throw p0

    .line 1269
    :goto_98
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v1

    .line 1270
    :try_start_9b
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_aa

    .line 1272
    throw p1

    :catchall_aa
    move-exception v0

    move-object p0, v0

    .line 1271
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_aa

    throw p0

    :cond_ae
    :goto_ae
    return-void
.end method

.method public requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 208
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 214
    const-string v3, "Requested archival of package %s for user %s."

    invoke-static {v3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v3, "PackageArchiverService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 217
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 220
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v6

    if-nez v6, :cond_4b

    const-wide/16 v6, 0x0

    move-object/from16 v11, p2

    .line 221
    invoke-interface {v4, v11, v6, v7, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageArchiver;->verifyCaller(II)V

    goto :goto_4d

    :cond_4b
    move-object/from16 v11, p2

    :goto_4d
    const/4 v12, 0x2

    and-int/lit8 v6, p3, 0x2

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_56

    move v14, v7

    goto :goto_57

    :cond_56
    move v14, v13

    :goto_57
    if-eqz v14, :cond_67

    .line 225
    iget-object v6, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    :goto_65
    move-object v15, v6

    goto :goto_6c

    .line 226
    :cond_67
    new-array v6, v7, [I

    aput v0, v6, v13

    goto :goto_65

    .line 227
    :goto_6c
    array-length v6, v15

    move v7, v13

    :goto_6e
    if-ge v7, v6, :cond_84

    move v8, v6

    aget v6, v15, v7

    move v9, v8

    const/4 v8, 0x1

    move/from16 v16, v9

    .line 228
    const-string v9, "archiveApp"

    move/from16 v17, v7

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    add-int/lit8 v7, v17, 0x1

    move/from16 v6, v16

    goto :goto_6e

    .line 232
    :cond_84
    invoke-virtual {v1}, Lcom/android/server/pm/PackageArchiver;->verifyUninstallPermissions()V

    .line 234
    array-length v4, v15

    new-array v4, v4, [Ljava/util/concurrent/CompletableFuture;

    .line 236
    :try_start_8a
    array-length v6, v15

    move v7, v13

    :goto_8c
    if-ge v7, v6, :cond_9b

    .line 237
    aget v8, v15, v7

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageArchiver;->createAndStoreArchiveState(Ljava/lang/String;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    aput-object v8, v4, v7
    :try_end_96
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a .. :try_end_96} :catch_99

    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    :catch_99
    move-exception v0

    goto :goto_be

    :cond_9b
    if-eqz v14, :cond_9e

    goto :goto_9f

    :cond_9e
    move v12, v13

    :goto_9f
    or-int/lit8 v3, v12, 0x11

    .line 248
    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    move v6, v0

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;

    move v4, v3

    move v7, v5

    move v8, v10

    move-object v3, v11

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v2, v5}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 258
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 241
    :goto_be
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 240
    const-string v2, "Failed to archive %s with message %s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestArchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 787
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    .registers 15

    .line 796
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 802
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 804
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_29

    const-wide/16 v4, 0x0

    .line 805
    invoke-interface {v1, p2, v4, v5, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageArchiver;->verifyCaller(II)V

    :cond_29
    const/4 v5, 0x1

    .line 807
    const-string/jumbo v6, "unarchiveApp"

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 813
    :try_start_31
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 814
    invoke-static {p2, v1, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getPackageState(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 815
    invoke-virtual {p0, v0, v3}, Lcom/android/server/pm/PackageArchiver;->verifyArchived(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_3c} :catch_c8

    .line 819
    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b2

    .line 827
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    .line 832
    :goto_4f
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 833
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_6a

    if-eqz v1, :cond_62

    goto :goto_6a

    .line 835
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need the com.android.permission.INSTALL_PACKAGES or com.android.permission.REQUEST_INSTALL_PACKAGES permission to request an unarchival."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    :goto_6a
    if-eqz v0, :cond_6e

    if-eqz p5, :cond_73

    :cond_6e
    move-object p2, p1

    move-object v7, p3

    move-object p3, p4

    move-object p1, p0

    goto :goto_ae

    .line 851
    :cond_73
    :try_start_73
    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda3;

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)V

    move-object p1, v3

    move-object p2, v4

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p5
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_89} :catch_98

    .line 862
    iget-object p0, p1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;

    move-object p3, p4

    move-object p4, v5

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_98
    move-exception v0

    move-object p0, v0

    .line 855
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_ad

    .line 856
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 858
    :cond_ad
    throw p0

    .line 841
    :goto_ae
    invoke-virtual {p1, p2, v7, p3}, Lcom/android/server/pm/PackageArchiver;->requestUnarchiveConfirmation(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void

    :cond_b2
    move-object p2, p1

    .line 821
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p3, "No installer found to unarchive app %s."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 823
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_c8
    move-exception v0

    move-object p0, v0

    .line 817
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final requestUnarchiveConfirmation(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 8

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.UNARCHIVE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v1, "android.content.pm.extra.UNARCHIVE_INTENT_SENDER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 889
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 892
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v1, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 896
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 897
    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I
    .registers 12

    .line 276
    invoke-static {p1}, Lcom/android/server/pm/PackageArchiver;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const/16 p1, -0x5c

    .line 277
    const-string v6, "PackageArchiverService"

    if-nez v1, :cond_11

    .line 278
    const-string/jumbo p0, "packageName cannot be null for unarchival!"

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_11
    if-nez p2, :cond_19

    .line 282
    const-string p0, "callerPackageName cannot be null for unarchival!"

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 286
    :cond_19
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/pm/PackageArchiver;->isCallerQualifiedForUnarchival(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 287
    const-string p0, "callerPackageName: %s does not qualify for unarchival of package: %s!"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5e

    return p0

    :cond_2f
    const/16 p1, 0x66

    .line 294
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x92

    invoke-virtual {v0, v2, p4, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_53

    .line 298
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/PackageArchiver;->getActiveUnarchivalSession(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 301
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v1, v0}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p1

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_84

    .line 311
    :cond_53
    const-string v0, "Unarchival is starting for: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageArchiver;->isDefaultLauncherApp(Ljava/lang/String;I)Z

    move-result v0

    .line 317
    invoke-virtual {p0, p3, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getOrCreateLauncherListener(ILjava/lang/String;Ljava/lang/String;)Landroid/content/IntentSender;

    move-result-object v3

    .line 318
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 319
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p3

    invoke-virtual {p3, v2, p4, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_7e

    if-nez v0, :cond_79

    goto :goto_7e

    :cond_79
    const/4 p3, 0x0

    :goto_7a
    move-object v0, p0

    move-object v2, p2

    move v5, p3

    goto :goto_80

    :cond_7e
    :goto_7e
    const/4 p3, 0x1

    goto :goto_7a

    .line 316
    :goto_80
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    :try_end_83
    .catchall {:try_start_31 .. :try_end_83} :catchall_50

    goto :goto_95

    .line 325
    :goto_84
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 323
    const-string p2, "Unexpected error occurred while unarchiving package %s: %s."

    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_95
    return p1
.end method

.method public final sendFailureStatus(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1384
    const-string v0, "Failed to archive %s with message %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageArchiverService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1387
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1389
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageArchiver;->sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public final sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 15

    .line 1396
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x2

    .line 1397
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 1399
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 1400
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p4

    .line 1399
    invoke-virtual/range {v2 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_17
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    move-object p0, v0

    .line 1403
    const-string p1, "Failed to send status for %s with message %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1405
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1403
    const-string p2, "PackageArchiverService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V
    .registers 5

    .line 1361
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1362
    :try_start_8
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PackageArchiver;->getPackageSettingLocked(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 1364
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    .line 1365
    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1366
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    .line 598
    invoke-virtual {p2, p0}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public final unarchiveInternal(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 17

    .line 1126
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1127
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNARCHIVE_PACKAGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1128
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1129
    const-string v1, "android.content.pm.extra.UNARCHIVE_ID"

    move/from16 v3, p4

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    const-string v1, "android.content.pm.extra.UNARCHIVE_PACKAGE_NAME"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 1131
    :goto_22
    const-string v3, "android.content.pm.extra.UNARCHIVE_ALL_USERS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1133
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v0, p1, :cond_38

    .line 1137
    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    :cond_38
    move-object v3, p2

    .line 1139
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->createUnarchiveOptions()Landroid/os/Bundle;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1139
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final verifyArchived(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 3

    .line 1109
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 1110
    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 1111
    :cond_b
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 1113
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1112
    const-string p2, "Package %s is not currently archived."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyInstalled(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 3

    .line 718
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 719
    :cond_b
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 720
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s is not installed."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 675
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1d

    .line 680
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageArchiver;->verifySupportsUnarchival(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_1d

    .line 681
    :cond_15
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "Installer does not support unarchival"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    const-wide/16 v0, 0x0

    .line 683
    invoke-interface {p1, p2, v0, v1, p3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    return-object p0

    .line 686
    :cond_26
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "Failed to obtain Installer info"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_2e
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "No installer found"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyNotSystemApp(I)V
    .registers 2

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_9

    and-int/lit16 p0, p1, 0x80

    if-nez p0, :cond_9

    return-void

    .line 712
    :cond_9
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "System apps cannot be archived."

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyOptOutStatus(Ljava/lang/String;I)V
    .registers 3

    .line 776
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->isAppOptedOutOfArchiving(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 777
    :cond_7
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "The app %s is opted out of archiving."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 778
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifySupportsUnarchival(Ljava/lang/String;I)Z
    .registers 6

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 700
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNARCHIVE_PACKAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 702
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/Intent;I)V

    .line 703
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    if-eqz p0, :cond_2c

    .line 706
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v1
.end method

.method public final verifyUninstallPermissions()V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REQUEST_DELETE_PACKAGES"

    .line 903
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1d

    .line 906
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "You need the com.android.permission.DELETE_PACKAGES or com.android.permission.REQUEST_DELETE_PACKAGES permission to request an archival."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method
