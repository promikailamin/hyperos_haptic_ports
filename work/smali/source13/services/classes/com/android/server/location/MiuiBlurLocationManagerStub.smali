.class public Lcom/android/server/location/MiuiBlurLocationManagerStub;
.super Ljava/lang/Object;
.source "MiuiBlurLocationManagerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/location/MiuiBlurLocationManagerStub;
    .registers 1

    .line 21
    const-class v0, Lcom/android/server/location/MiuiBlurLocationManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MiuiBlurLocationManagerStub;

    return-object v0
.end method


# virtual methods
.method public getBlurryCellInfos(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 49
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-object p1
.end method

.method public getBlurryCellInfos(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 45
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-object p1
.end method

.method public getBlurryCellLocation(Landroid/telephony/CellIdentity;)Landroid/telephony/CellIdentity;
    .registers 2
    .param p1, "location"    # Landroid/telephony/CellIdentity;

    .line 41
    return-object p1
.end method

.method public getBlurryCellLocation(Landroid/telephony/CellIdentity;ILjava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 4
    .param p1, "location"    # Landroid/telephony/CellIdentity;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 37
    return-object p1
.end method

.method public getBlurryLocation(Landroid/location/Location;ILjava/lang/String;)Landroid/location/Location;
    .registers 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 33
    return-object p1
.end method

.method public getBlurryLocation(Landroid/location/LocationResult;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationResult;
    .registers 3
    .param p1, "location"    # Landroid/location/LocationResult;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 77
    return-object p1
.end method

.method public getLocationIfBlurMode(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;
    .registers 5
    .param p1, "request"    # Landroid/location/LastLocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSvStatusData()Lmiui/security/SvStatusData;
    .registers 2

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleGpsLocationChangedLocked(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 82
    return-void
.end method

.method public init(Lcom/android/server/location/LocationManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 26
    return-void
.end method

.method public isBlurLocationMode(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isBlurLocationMode(Landroid/location/util/identity/CallerIdentity;)Z
    .registers 4
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 61
    if-eqz p1, :cond_f

    .line 62
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->isBlurLocationMode(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 64
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public mayNotifyGpsListener(Ljava/lang/String;Landroid/location/LocationResult;)V
    .registers 3
    .param p1, "currentProvider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/LocationResult;

    .line 86
    return-void
.end method

.method public registerLocationBlurryManager(Lcom/android/internal/app/ILocationBlurry;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/internal/app/ILocationBlurry;

    .line 30
    return-void
.end method

.method public updateSvStatusData(I[I[F[F[F[F[F)V
    .registers 8
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 74
    return-void
.end method
