.class public Lmiui/securityspace/CrossUserUtils;
.super Ljava/lang/Object;
.source "CrossUserUtils.java"


# static fields
.field public static final whitelist ACTION_XSPACE_RESOLVER_ACTIVITY:Ljava/lang/String; = "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

.field public static final whitelist EXTRA_PICKED_USER_ID:Ljava/lang/String; = "android.intent.extra.picked_user_id"

.field public static final whitelist EXTRA_XSPACE_RESOLVER_ACTIVITY_AIM_PACKAGE:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_aim_package"

.field public static final blacklist EXTRA_XSPACE_RESOLVER_ACTIVITY_CALLING_PACKAGE:Ljava/lang/String; = "miui.intent.extra.xspace_resolver_activity_calling_package"

.field public static final whitelist EXTRA_XSPACE_RESOLVER_ACTIVITY_ORIGINAL_INTENT:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_original_intent"

.field private static blacklist noCheckContentProviderPermissionPkg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sBitmapCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sISecurityManager:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    .line 149
    const-string v1, "com.android.incallui"

    const-string v2, "contacts;com.android.contacts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 68
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 75
    invoke-static {p0, p1, p2, p3}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist checkCrossPermission(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "callingPkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 168
    if-eqz p0, :cond_e

    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 84
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist createDrawableWithCache(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .line 193
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 194
    :try_start_3
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 195
    .local v1, "cachedRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 196
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    monitor-exit v0

    return-object v2

    .line 198
    :cond_23
    if-eqz v1, :cond_28

    .line 199
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->recycleCacheMap()V

    .line 201
    :cond_28
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 203
    .local v2, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v0

    return-object v2

    .line 206
    .end local v1    # "cachedRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    .end local v2    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public static blacklist getComponentStringWithUserId(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 4
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;
    .registers 5
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .param p2, "taskId"    # I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCurrentUserId()I
    .registers 1

    .line 106
    :try_start_0
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    if-nez v0, :cond_10

    .line 107
    const-string v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 109
    :cond_10
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getCurrentUserId()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 110
    :catch_17
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 94
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSecondSpaceId()I
    .registers 1

    .line 123
    :try_start_0
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    if-nez v0, :cond_10

    .line 124
    const-string v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 126
    :cond_10
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getSecondSpaceId()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 127
    :catch_17
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    const/16 v0, -0x2710

    return v0
.end method

.method public static whitelist hasAirSpace(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist hasSecondSpace(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtilsCompat;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static whitelist hasXSpaceUser(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 179
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtilsCompat;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isAirSpace(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist needCheckUser(Landroid/content/pm/ProviderInfo;Ljava/lang/String;IZ)Z
    .registers 7
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "checkUser"    # Z

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0, p2}, Lmiui/securityspace/XSpaceUserHandle;->canCrossUser(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 155
    return v1

    .line 158
    :cond_c
    if-eqz p3, :cond_25

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    .line 159
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_25

    iget-object v2, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 161
    return v1

    .line 164
    .end local v0    # "authority":Ljava/lang/String;
    :cond_25
    return p3
.end method

.method private static blacklist recycleCacheMap()V
    .registers 4

    .line 210
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 214
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 217
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    :cond_28
    goto :goto_d

    .line 218
    .end local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;>;"
    :cond_29
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public static blacklist registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 2
    .param p0, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 226
    return-void
.end method
