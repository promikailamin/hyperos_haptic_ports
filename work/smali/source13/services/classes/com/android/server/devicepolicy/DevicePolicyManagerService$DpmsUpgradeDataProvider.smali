.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmsUpgradeDataProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 3082
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method static synthetic lambda$getUsersForUpgrade$1(Landroid/content/pm/UserInfo;)I
    .registers 2
    .param p0, "u"    # Landroid/content/pm/UserInfo;

    .line 3107
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method


# virtual methods
.method public getAdminInfoSupplier(I)Ljava/util/function/Function;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .line 3100
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;I)V

    return-object v0
.end method

.method public getUsersForUpgrade()[I
    .registers 4

    .line 3106
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3107
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$getAdminInfoSupplier$0$com-android-server-devicepolicy-DevicePolicyManagerService$DpmsUpgradeDataProvider(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 3101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mfindAdmin(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IZ)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 4
    .param p1, "userId"    # I

    .line 3090
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "device_policies.xml"

    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method public makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 4
    .param p1, "userId"    # I

    .line 3095
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "device_policies_version"

    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method public storageManagerIsFileBasedEncryptionEnabled()Z
    .registers 2

    .line 3085
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v0

    return v0
.end method
