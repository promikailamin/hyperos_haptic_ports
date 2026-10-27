.class public Lmiui/content/pm/PreloadedAppPolicy;
.super Ljava/lang/Object;
.source "PreloadedAppPolicy.java"


# static fields
.field public static final blacklist MEDIA_KEY:Ljava/lang/String; = "5E:12:99:15:3A:37:CD:82:2E:51:FC:39:E7:DC:85:71:AD:84:41:99:A4:B5:A4:81:DD:BC:C1:A7:4C:05:E6:57"

.field public static final blacklist PLATFORM_KEY:Ljava/lang/String; = "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

.field private static final blacklist RELEASE_KEY:Ljava/lang/String; = "D4:5F:07:6F:E2:3A:1A:5B:7F:48:6E:3F:F4:15:47:A2:02:3D:BF:E1:FE:73:35:3B:1E:48:EB:DF:ED:72:CC:6F"

.field public static final blacklist UNKNOWN_KEY:Ljava/lang/String; = ""

.field private static final blacklist sAllowDeleteSource:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sAllowDisableSystemApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sProtectedDataAppsSign:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist INSTALL_FLAG_NEED_CONFIRM:I

.field public final blacklist INSTALL_FLAG_SHOW_TOAST:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataAppsSign:Ljava/util/Map;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDeleteSource:Ljava/util/Set;

    .line 50
    const-string v3, "com.xiaomi.scanner"

    const-string v4, "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "com.miui.notes"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "com.miui.creation"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "com.android.soundrecorder"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "com.miui.screenrecorder"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "com.miui.compass"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "com.miui.calculator"

    const-string v5, "D4:5F:07:6F:E2:3A:1A:5B:7F:48:6E:3F:F4:15:47:A2:02:3D:BF:E1:FE:73:35:3B:1E:48:EB:DF:ED:72:CC:6F"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v3, "com.miui.weather2"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_a9

    .line 59
    const-string v3, "com.miui.accessibility"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "com.miui.audiomonitor"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "com.xiaomi.gamecenter"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "com.miui.cleanmaster"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "com.miui.securitymanager"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "com.mfashiongallery.emag"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "com.android.email"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "com.miui.virtualsim"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "com.xiaomi.gamecenter.pad"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "com.xiaomi.drivemode"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "com.miui.smarttravel"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, "com.miui.newhome"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "com.miui.gallery"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "com.miui.video"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v3, "com.android.providers.downloads.ui"

    const-string v4, "5E:12:99:15:3A:37:CD:82:2E:51:FC:39:E7:DC:85:71:AD:84:41:99:A4:B5:A4:81:DD:BC:C1:A7:4C:05:E6:57"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v3, "com.duokan.reader"

    const-string v4, "88:7E:40:DA:D9:6C:D7:B4:CC:0A:59:67:2B:93:81:19:9F:7D:E2:04:15:B8:92:D7:06:89:5F:84:93:17:8E:2A"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "com.miui.personalassistant"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "com.miui.voip"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v0, "com.miui.yellowpage"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 80
    :cond_a9
    const-string v1, "com.facemoji.lite.xiaomi"

    const-string v3, "4E:5A:78:C0:45:03:16:E3:8A:FA:B3:EC:B6:BA:C9:93:2C:09:5F:2B:34:36:0C:40:12:98:57:B7:86:57:E2:4F"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "com.xiaomi.midrop"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "com.preff.kb.xm"

    const-string v3, "A4:E8:E3:9D:89:36:DA:1C:1A:94:E2:9C:87:82:FB:60:94:55:BC:4B:9A:61:C0:0C:1C:FA:91:2A:B3:E6:1A:1C"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_bc
    const-string v0, "com.android.managedprovisioning"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "com.miui.home"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "com.mi.android.globallauncher"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v0, "com.xiaomi.market"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_NEED_CONFIRM:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_SHOW_TOAST:I

    return-void
.end method

.method public static blacklist getAllowDeleteSourceApps()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDeleteSource:Ljava/util/Set;

    return-object v0
.end method

.method public static blacklist getProtectedDataAppSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataAppsSign:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "flags"    # I

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataAppsSign:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    .line 156
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.PreloadedDataAppInstallService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaomi.market"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_37

    .line 163
    :cond_2d
    new-instance v1, Lmiui/content/pm/PreloadedAppPolicy$1;

    invoke-direct {v1, p1, p0, p2, p3}, Lmiui/content/pm/PreloadedAppPolicy$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver2;I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 192
    return v3

    .line 160
    :cond_37
    :goto_37
    return v1

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_38
    :goto_38
    return v1
.end method

.method public static blacklist isAllowDisableSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 133
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 101
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataAppsSign:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProtectedDataApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataAppsSign:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
