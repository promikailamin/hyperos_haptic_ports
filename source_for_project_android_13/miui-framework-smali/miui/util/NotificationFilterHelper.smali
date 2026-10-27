.class public Lmiui/util/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# static fields
.field private static final blacklist APP_NOTIFICATION:Ljava/lang/String; = "app_notification"

.field public static final blacklist BACKUP_CHANNEL_IMPORTANCE_DEFAULT:I = 0x3

.field private static final blacklist CHANNEL_FLAG:Ljava/lang/String; = "_channel_flag"

.field private static final blacklist CHANNEL_IMPORTANCE_BACKUP:Ljava/lang/String; = "_channel_importance_backup"

.field public static final blacklist DISABLE_ALL:I = 0x3

.field public static final blacklist DISABLE_FLOATING:I = 0x1

.field public static final blacklist ENABLE:I = 0x2

.field public static final blacklist IMPORTANCE:Ljava/lang/String; = "_importance"

.field public static final blacklist IMPORTANCE_DEFAULT:I = 0x0

.field public static final blacklist IMPORTANCE_HIGH:I = 0x1

.field public static final blacklist IMPORTANCE_LOW:I = -0x1

.field public static final blacklist KEYGUARD:Ljava/lang/String; = "_keyguard"

.field private static final blacklist KEY_FLOAT_VERSION:Ljava/lang/String; = "sysui_float_version"

.field public static final blacklist KEY_FLOAT_WHITELIST:Ljava/lang/String; = "float_whitelist"

.field private static final blacklist KEY_KEYGUARD_VERSION:Ljava/lang/String; = "sysui_keyguard_version"

.field public static final blacklist KEY_KEYGUARD_WHITELIST:Ljava/lang/String; = "keyguard_whitelist"

.field public static final blacklist LED:Ljava/lang/String; = "_led"

.field public static final blacklist MESSAGE:Ljava/lang/String; = "_message"

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist SOUND:Ljava/lang/String; = "_sound"

.field private static final blacklist SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field public static final blacklist VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static blacklist nm:Landroid/app/INotificationManager;

.field private static blacklist sFloatVersionCode:J

.field private static blacklist sFloatWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIsSystemApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sKeyguardVersionCode:J

.field private static blacklist sKeyguardWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNotificationCanBeBlockedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNotificationCannotSetImportanceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNotificationForcedEnabledChannelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sNotificationForcedEnabledPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    .line 42
    const-wide/16 v0, -0x1

    sput-wide v0, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    .line 43
    sput-wide v0, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    .line 78
    nop

    .line 79
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    .line 333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    .line 336
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string v1, "com.miui.fm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.android.deskclock"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.android.updater"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.android.providers.downloads"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string v3, "com.miui.hybrid"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v0, "channelList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v0    # "channelList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 207
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static blacklist areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .line 211
    const/4 v0, 0x1

    .line 213
    .local v0, "enabledNotice":Z
    :try_start_1
    sget-object v1, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 215
    goto :goto_a

    .line 214
    :catch_9
    move-exception v1

    .line 216
    :goto_a
    return v0
.end method

.method public static blacklist canNotificationSetImportance(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 367
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist canSendNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist canSystemNotificationBeBlocked(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 359
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist containNonBlockableChannel(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 315
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "enabled"    # Z

    .line 224
    if-nez p3, :cond_9

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    return-void

    .line 228
    :cond_9
    :try_start_9
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 229
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V

    goto :goto_2b

    .line 230
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_2b

    .line 231
    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 232
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v0, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 234
    :cond_2b
    :goto_2b
    if-nez p2, :cond_50

    .line 235
    const-string v0, "NotificationFilterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appUid=0, appNotFound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 238
    :cond_50
    sget-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 240
    const/16 v0, 0xb

    .line 241
    if-eqz p3, :cond_5b

    const/4 v1, 0x0

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x1

    .line 240
    :goto_5c
    invoke-static {p0, v0, p1, v1}, Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_5f} :catch_60

    .line 244
    goto :goto_61

    .line 242
    :catch_60
    move-exception v0

    .line 245
    :goto_61
    return-void
.end method

.method public static blacklist enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 220
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 221
    return-void
.end method

.method private static blacklist enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 272
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    return-void
.end method

.method public static blacklist enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v2, "_channel_flag"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "%s_%s%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_17

    move v1, v3

    :cond_17
    invoke-static {p0, v0, v1}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public static blacklist enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 264
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public static blacklist getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkSystemSetting"    # Z

    .line 110
    if-eqz p3, :cond_7

    invoke-static {p0, p1, p2}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    .line 111
    .local v0, "enabledNotice":Z
    :goto_8
    const/4 v1, 0x0

    .line 112
    .local v1, "flag":I
    if-eqz v0, :cond_1e

    .line 113
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    if-nez v1, :cond_1a

    .line 116
    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    .line 118
    :cond_1a
    if-nez v1, :cond_1f

    .line 119
    const/4 v1, 0x1

    goto :goto_1f

    .line 123
    :cond_1e
    const/4 v1, 0x3

    .line 125
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static blacklist getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "checkSystemSetting"    # Z

    .line 106
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static blacklist getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "uid":I
    const/4 v1, 0x0

    .line 374
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v1, v2

    .line 375
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_10

    move v0, v2

    .line 377
    goto :goto_11

    .line 376
    :catch_10
    move-exception v2

    .line 378
    :goto_11
    return v0
.end method

.method public static blacklist getBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 445
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "backupImportance":I
    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    return v2
.end method

.method public static blacklist getChannelFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "checkSystemSetting"    # Z

    .line 129
    const/4 v0, 0x1

    if-eqz p4, :cond_8

    invoke-static {p0, p1, p3}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 130
    .local v1, "enabledNotice":Z
    :goto_9
    const/4 v2, 0x0

    .line 131
    .local v2, "flag":I
    if-eqz v1, :cond_31

    .line 132
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v0

    const/4 v0, 0x2

    const-string v6, "_channel_flag"

    aput-object v6, v4, v0

    const-string v0, "%s_%s%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .end local v2    # "flag":I
    .local v0, "flag":I
    if-nez v0, :cond_2d

    .line 135
    invoke-static {p0, p1, v5}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 137
    :cond_2d
    if-nez v0, :cond_32

    .line 138
    const/4 v0, 0x1

    goto :goto_32

    .line 142
    .end local v0    # "flag":I
    .restart local v2    # "flag":I
    :cond_31
    const/4 v0, 0x3

    .line 144
    .end local v2    # "flag":I
    .restart local v0    # "flag":I
    :cond_32
    :goto_32
    return v0
.end method

.method private static blacklist getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v1, "%s_%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCustomSoundUri(Landroid/content/Context;Landroid/net/Uri;Landroid/service/notification/StatusBarNotification;)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soundUri"    # Landroid/net/Uri;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 383
    return-object p1
.end method

.method private static blacklist getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isInKeyguardMode"    # Z

    .line 148
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->initFilterList(Landroid/content/Context;)V

    .line 149
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_12

    .line 150
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    return v0

    .line 152
    :cond_12
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0
.end method

.method public static blacklist getImportance(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 437
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getNotificationForcedEnabledList()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static blacklist getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 3
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 387
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "miui.targetPkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 388
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_27

    .line 389
    :cond_19
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/os/MiuiHooks$INotification;

    invoke-interface {v0}, Lcom/miui/internal/os/MiuiHooks$INotification;->getExtraNotification()Landroid/app/MiuiNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_27
    nop

    .line 390
    .local v0, "targetPkg":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_33
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    return-object v1
.end method

.method public static blacklist getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "com.android.systemui"

    if-eqz v0, :cond_1d

    .line 85
    :try_start_d
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_13} :catch_15

    move-object p0, v0

    .line 89
    goto :goto_1d

    .line 87
    :catch_15
    move-exception v0

    .line 88
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NotificationFilterHelper"

    const-string v4, "Can\'t find pkg: com.android.systemui"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 93
    :try_start_27
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2d

    move-object p0, v0

    .line 96
    goto :goto_31

    .line 94
    :catch_2d
    move-exception v0

    .line 95
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_31
    :goto_31
    const/4 v0, 0x4

    const-string v1, "app_notification"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v1

    .line 192
    goto :goto_25

    .line 190
    :catch_c
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error get whiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationFilterHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_25
    return-object v0
.end method

.method private static blacklist initFilterList(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_float_version"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 158
    .local v0, "latestVersion":J
    sget-object v4, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    sget-wide v4, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_47

    .line 159
    :cond_1a
    sput-wide v0, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "float_whitelist"

    invoke-static {p0, v5}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 162
    .local v5, "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_33

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    .line 163
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_45

    .line 165
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11030055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "whitelist":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .end local v6    # "whitelist":[Ljava/lang/String;
    :goto_45
    sput-object v4, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    .line 171
    .end local v4    # "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sysui_keyguard_version"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 172
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    sget-wide v2, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8c

    .line 173
    :cond_5f
    sput-wide v0, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "keyguardWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "keyguard_whitelist"

    invoke-static {p0, v3}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 176
    .local v3, "keyguardSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_78

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_78

    .line 177
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8a

    .line 179
    :cond_78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11030069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "whitelist":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    .end local v4    # "whitelist":[Ljava/lang/String;
    :goto_8a
    sput-object v2, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    .line 184
    .end local v2    # "keyguardWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "keyguardSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8c
    return-void
.end method

.method public static blacklist isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "type"    # Ljava/lang/String;

    .line 394
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 398
    const-string v0, "_keyguard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    const-string v0, "_sound"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 399
    :cond_13
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 400
    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-ne v0, v1, :cond_35

    move v2, v3

    :cond_35
    return v2

    .line 401
    :cond_36
    const-string v0, "_led"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 402
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 403
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-ne v0, v1, :cond_60

    move v2, v3

    :cond_60
    return v2

    .line 407
    :cond_61
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-nez v2, :cond_90

    .line 410
    const-string v2, "NotificationFilterHelper"

    const-string v4, "got non boolean values, return true"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v3

    .line 413
    :cond_90
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static blacklist isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 418
    const-string v0, "_keyguard"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    const-string v0, "_sound"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 419
    :cond_13
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 420
    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-ne v0, v1, :cond_28

    move v2, v3

    :cond_28
    return v2

    .line 421
    :cond_29
    const-string v0, "_led"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 422
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 423
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-ne v0, v1, :cond_46

    move v2, v3

    :cond_46
    return v2

    .line 425
    :cond_47
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 300
    return v1

    .line 301
    :cond_a
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 302
    return v2

    .line 304
    :cond_12
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 305
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 306
    .local v3, "appId":I
    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_26

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_26

    if-nez v3, :cond_25

    goto :goto_26

    .line 311
    :cond_25
    return v2

    .line 309
    :cond_26
    :goto_26
    return v1
.end method

.method public static blacklist isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 319
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    .line 320
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 319
    :goto_20
    return v0
.end method

.method public static blacklist isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 294
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->containNonBlockableChannel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    .line 295
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 294
    :goto_18
    return v0
.end method

.method public static blacklist isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 277
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 278
    .local v0, "isSystemApp":Ljava/lang/Boolean;
    if-nez v0, :cond_25

    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v3

    .line 283
    goto :goto_13

    .line 282
    :catch_12
    move-exception v3

    .line 284
    :goto_13
    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_1c

    move v2, v3

    :cond_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 285
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static blacklist resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 249
    const-string v0, "NotificationFilterHelper"

    const/4 v1, 0x2

    :try_start_3
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 250
    .local v1, "targetContext":Landroid/content/Context;
    invoke-static {v1, p2}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 251
    .local v2, "uid":I
    if-nez v2, :cond_2e

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid=0, appNotFound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_2e
    sget-object v3, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v3, p2, v2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_33} :catch_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_33} :catch_34

    .end local v1    # "targetContext":Landroid/content/Context;
    .end local v2    # "uid":I
    goto :goto_52

    .line 258
    :catch_34
    move-exception v1

    .line 259
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 256
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4c
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Can\'t talk to NotificationManagerService"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_52
    nop

    .line 261
    :goto_53
    return-void
.end method

.method public static blacklist saveBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "importance"    # I

    .line 450
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 451
    return-void
.end method

.method public static blacklist setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "allow"    # Z

    .line 441
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void
.end method

.method public static blacklist setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .line 429
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    return-void
.end method

.method public static blacklist setImportance(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "importance"    # I

    .line 433
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    return-void
.end method

.method public static blacklist updateFloatWhiteList(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "sysui_float_version"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 198
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v2, "float_whitelist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public static blacklist updateKeyguardWhitelist(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "sysui_keyguard_version"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 203
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v2, "keyguard_whitelist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    return-void
.end method
