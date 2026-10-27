.class public Lcom/android/server/pm/SettingsStub;
.super Ljava/lang/Object;
.source "SettingsStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/pm/SettingsStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/pm/SettingsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingsStub;

    return-object v0
.end method


# virtual methods
.method public checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 4
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userHandle"    # I

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public isSharedUserSafeToDelete(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Z
    .registers 4
    .param p1, "sharedUser"    # Ljava/lang/String;
    .param p2, "danglingPs"    # Lcom/android/server/pm/PackageSetting;

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
    .registers 4
    .param p1, "pkms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I

    .line 18
    return-void
.end method
