.class Landroid/app/SystemServiceRegistryImpl;
.super Ljava/lang/Object;
.source "SystemServiceRegistryImpl.java"

# interfaces
.implements Landroid/app/SystemServiceRegistryStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist registerMiuiServices()V
    .registers 5

    .line 38
    const-class v0, Lmiui/webview/MiuiWebViewManager;

    new-instance v1, Landroid/app/SystemServiceRegistryImpl$1;

    invoke-direct {v1, p0}, Landroid/app/SystemServiceRegistryImpl$1;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v2, "miuiwebview"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 46
    const-class v0, Lmiui/security/SecurityManager;

    new-instance v1, Landroid/app/SystemServiceRegistryImpl$2;

    invoke-direct {v1, p0}, Landroid/app/SystemServiceRegistryImpl$2;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v2, "security"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 60
    const-class v0, Landroid/content/pm/HyperPackageManager;

    new-instance v1, Landroid/app/SystemServiceRegistryImpl$3;

    invoke-direct {v1, p0}, Landroid/app/SystemServiceRegistryImpl$3;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v2, "HyperPackageManager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 75
    const-class v0, Landroid/location/LocationPolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistryImpl$4;

    invoke-direct {v1, p0}, Landroid/app/SystemServiceRegistryImpl$4;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v2, "locationpolicy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 85
    const-string v0, "support_tee_face_unlock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, "isSupportTee":Z
    const-class v1, Landroid/hardware/face/BaseMiuiFaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$5;

    invoke-direct {v2, p0, v0}, Landroid/app/SystemServiceRegistryImpl$5;-><init>(Landroid/app/SystemServiceRegistryImpl;Z)V

    const-string v3, "miui_face"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 103
    const-class v1, Landroid/net/wifi/MiuiWifiManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$6;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryImpl$6;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v3, "MiuiWifiService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 114
    const-class v1, Lmiui/car/MiuiCarManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$7;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryImpl$7;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v3, "MiuiCarService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 124
    const-class v1, Landroid/net/wifi/SlaveWifiManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$8;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryImpl$8;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v3, "SlaveWifiService"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 135
    const-class v1, Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$9;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryImpl$9;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v3, "shoulderkey"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 145
    const-class v1, Lmiui/hardware/input/MiuiInputManager;

    new-instance v2, Landroid/app/SystemServiceRegistryImpl$10;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryImpl$10;-><init>(Landroid/app/SystemServiceRegistryImpl;)V

    const-string v3, "MiuiInputManager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 153
    return-void
.end method
