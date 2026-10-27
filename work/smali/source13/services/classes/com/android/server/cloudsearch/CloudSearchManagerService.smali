.class public Lcom/android/server/cloudsearch/CloudSearchManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "CloudSearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/cloudsearch/CloudSearchManagerService;",
        "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x107003b

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 69
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 70
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 53
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 53
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cloudsearch/CloudSearchManagerService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cloudsearch/CloudSearchManagerService;
    .param p1, "x1"    # I

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_CLOUDSEARCH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .registers 2

    .line 124
    const v0, 0x1d4c0

    return v0
.end method

.method protected newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z
    .param p3, "serviceNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
            ">;"
        }
    .end annotation

    .line 81
    if-nez p3, :cond_8

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 84
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, p3

    if-ge v1, v2, :cond_26

    .line 87
    aget-object v2, p3, v1

    if-nez v2, :cond_17

    .line 88
    goto :goto_23

    .line 90
    :cond_17
    new-instance v2, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mLock:Ljava/lang/Object;

    aget-object v4, p3, v1

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 93
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/cloudsearch/CloudSearchPerUserService;
    .registers 6
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 75
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mLock:Ljava/lang/Object;

    const-string v2, ""

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->newServiceLocked(IZ)Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected onServicePackageRestartedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    .line 117
    .local v0, "service":Lcom/android/server/cloudsearch/CloudSearchPerUserService;
    if-eqz v0, :cond_b

    .line 118
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onPackageRestartedLocked()V

    .line 120
    :cond_b
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    .line 109
    .local v0, "service":Lcom/android/server/cloudsearch/CloudSearchPerUserService;
    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onPackageUpdatedLocked()V

    .line 112
    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 98
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub-IA;)V

    const-string v1, "cloudsearch"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 99
    return-void
.end method
