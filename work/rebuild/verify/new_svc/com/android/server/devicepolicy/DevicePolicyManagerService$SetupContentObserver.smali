.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# instance fields
.field public final mDefaultImeChanged:Landroid/net/Uri;

.field public final mPaired:Landroid/net/Uri;

.field public mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

.field public final mUserSetupComplete:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$maddPendingChangeByOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->addPendingChangeByOwnerLocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 15945
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 15946
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15936
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    .line 15938
    const-string p1, "device_paired"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    .line 15939
    const-string p1, "default_input_method"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    .line 15942
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addPendingChangeByOwnerLocked(I)V
    .registers 2

    .line 15959
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 15964
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_51

    .line 15966
    :cond_17
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 15967
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 15968
    :try_start_26
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 15971
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4c

    :catchall_3c
    move-exception p0

    goto :goto_4e

    .line 15975
    :cond_3e
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 15976
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msaveSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 15978
    :goto_4c
    monitor-exit p1

    return-void

    :goto_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_26 .. :try_end_4f} :catchall_3c

    throw p0

    :cond_50
    return-void

    .line 15965
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupCompleteAndPaired()V

    return-void
.end method

.method public register()V
    .registers 5

    .line 15950
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 15951
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz v1, :cond_18

    .line 15952
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 15954
    :cond_18
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
