.class public Lmiui/securityspace/XSpaceUserHandle;
.super Ljava/lang/Object;
.source "XSpaceUserHandle.java"


# static fields
.field public static final blacklist EXTRA_AUTH_CALL_XSPACE:Ljava/lang/String; = "android.intent.extra.auth_to_call_xspace"

.field public static final blacklist FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final blacklist OWNER_SHARED_USER_GID:I

.field public static final blacklist USER_XSPACE:I = 0x3e7

.field public static final blacklist XSPACE_ICON_MASK_ID:I = 0x110800f5

.field public static final blacklist XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    .line 45
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canCrossUser(II)Z
    .registers 3
    .param p0, "callingUserId"    # I
    .param p1, "toUserId"    # I

    .line 118
    const/16 v0, 0x3e7

    if-nez p0, :cond_6

    if-eq p1, v0, :cond_a

    :cond_6
    if-ne p0, v0, :cond_c

    if-nez p1, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist checkAndGetXSpaceUserId(II)I
    .registers 3
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .line 48
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    const/16 v0, 0x3e7

    return v0

    .line 50
    :cond_9
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 53
    :cond_12
    return p1
.end method

.method public static blacklist getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 98
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 99
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "uid"    # I

    .line 93
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 94
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 85
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    invoke-static {p0, p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 88
    :cond_b
    return-object p1
.end method

.method public static blacklist isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_2e

    .line 108
    :cond_16
    :try_start_16
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e7

    .line 109
    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_2c

    .line 110
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0

    .line 111
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v1

    .line 114
    return v0

    .line 105
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static blacklist isSelfXSpaceUser()Z
    .registers 1

    .line 65
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUidBelongtoXSpace(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 77
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isXSpaceUser(Landroid/content/pm/UserInfo;)Z
    .registers 2
    .param p0, "userinfo"    # Landroid/content/pm/UserInfo;

    .line 69
    if-eqz p0, :cond_9

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isXSpaceUser(Landroid/os/UserHandle;)Z
    .registers 2
    .param p0, "userHandle"    # Landroid/os/UserHandle;

    .line 73
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isXSpaceUserCalling()Z
    .registers 1

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isXSpaceUserFlag(I)Z
    .registers 3
    .param p0, "flags"    # I

    .line 81
    const/high16 v0, 0x800000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isXSpaceUserId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 57
    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
