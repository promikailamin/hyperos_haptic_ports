.class public Lmiui/securityspace/CrossUserUtilsCompat;
.super Ljava/lang/Object;
.source "CrossUserUtilsCompat.java"


# static fields
.field public static final blacklist FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final blacklist OWNER_SHARED_USER_GID:I

.field private static final blacklist TAG:Ljava/lang/String; = "CrossUserUtilsCompat"

.field public static final blacklist XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    .line 48
    const/16 v0, 0x3e7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 56
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    move-object v0, p0

    goto :goto_9

    :cond_5
    invoke-static {p0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static blacklist addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "android.intent.extra.picked_user_id"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "userId":I
    if-eq v0, v1, :cond_14

    .line 65
    invoke-static {p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 66
    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 69
    :cond_14
    return-object p0
.end method

.method public static blacklist checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 81
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_18

    .line 82
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_19

    .line 83
    .local v3, "callingPackageUid":I
    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_17

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_17
    return v0

    .line 81
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "callingPackageUid":I
    :cond_18
    goto :goto_22

    .line 91
    :catch_19
    move-exception v1

    .line 92
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 89
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1e
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 93
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_22
    nop

    .line 94
    :goto_23
    return v0
.end method

.method public static blacklist getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 149
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, p1, v2, v3, v1}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_18

    .line 152
    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_17} :catch_19

    move-object v2, v3

    .line 154
    :cond_18
    return-object v2

    .line 155
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_19
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 158
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_13

    .line 106
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lmiui/securityspace/CrossUserUtils;->createDrawableWithCache(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 109
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_13
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist hasSecondSpace(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_user_id"

    const/16 v2, -0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static blacklist hasXSpaceUser(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 168
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 170
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 171
    const/4 v1, 0x1

    return v1

    .line 173
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_25
    goto :goto_11

    .line 174
    :cond_26
    return v1
.end method

.method public static blacklist registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 3
    .param p0, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static blacklist startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .line 132
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 134
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_6} :catch_d
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 138
    nop

    :goto_7
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 139
    goto :goto_28

    .line 138
    :catchall_b
    move-exception v0

    goto :goto_29

    .line 135
    :catch_d
    move-exception v0

    .line 136
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    :try_start_e
    const-string v1, "CrossUserUtilsCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find Activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_b

    .line 138
    nop

    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    goto :goto_7

    .line 140
    :goto_28
    return-void

    .line 138
    :goto_29
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 139
    throw v0
.end method
