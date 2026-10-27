.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupContentObserver"
.end annotation


# instance fields
.field private final mDefaultImeChanged:Landroid/net/Uri;

.field private final mDeviceProvisioned:Landroid/net/Uri;

.field private final mPaired:Landroid/net/Uri;

.field private mUserIdsWithPendingChangesByOwner:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSetupComplete:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$maddPendingChangeByOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->addPendingChangeByOwnerLocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 12923
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12924
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12912
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    .line 12914
    const-string p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    .line 12916
    const-string p1, "device_paired"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    .line 12917
    const-string p1, "default_input_method"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    .line 12920
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 12925
    return-void
.end method

.method private addPendingChangeByOwnerLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 12938
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12939
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 12943
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_68

    .line 12945
    :cond_17
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 12946
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12949
    :try_start_26
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetDeviceOwnershipSystemPropertyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 12950
    monitor-exit v0

    goto :goto_6d

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v1

    .line 12951
    :cond_30
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 12952
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12953
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 12956
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_63

    .line 12960
    :cond_55
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 12961
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msaveSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 12963
    :goto_63
    monitor-exit v0

    goto :goto_6d

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_65

    throw v1

    .line 12944
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupCompleteAndPaired()V

    .line 12965
    :cond_6d
    :goto_6d
    return-void
.end method

.method register()V
    .registers 5

    .line 12928
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12929
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12930
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz v0, :cond_23

    .line 12931
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12933
    :cond_23
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12934
    return-void
.end method
