.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 912
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendDeviceOwnerUserCommand(Ljava/lang/String;I)V
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1039
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1040
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object v1

    .line 1041
    .local v1, "deviceOwner":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v1, :cond_28

    .line 1042
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    .line 1043
    .local v8, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1044
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z

    .line 1047
    .end local v1    # "deviceOwner":Lcom/android/server/devicepolicy/ActiveAdmin;
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_28
    monitor-exit v0

    .line 1048
    return-void

    .line 1047
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    .line 917
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->getSendingUserId()I

    move-result v2

    .line 916
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 924
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    if-nez v1, :cond_32

    .line 925
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 926
    :try_start_20
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misNetworkLoggingEnabledInternalLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 927
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetNetworkLoggingActiveInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 929
    :cond_2d
    monitor-exit v2

    goto :goto_32

    :catchall_2f
    move-exception v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v3

    .line 931
    :cond_32
    :goto_32
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 932
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_4d

    .line 933
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmBugreportCollectionManager(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/RemoteBugreportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->checkForPendingBugreportAfterBoot()V

    .line 936
    :cond_4d
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 937
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 942
    :cond_5d
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    :cond_69
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 951
    const-string v2, "android.app.action.USER_ADDED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 952
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 955
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybePauseDeviceWideLoggingLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 956
    monitor-exit v2

    goto/16 :goto_263

    :catchall_85
    move-exception v3

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw v3

    .line 957
    :cond_88
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 958
    const-string v2, "android.app.action.USER_REMOVED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 959
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 961
    :try_start_9c
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misUserAffiliatedWithDeviceLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v3

    .line 962
    .local v3, "isRemovedUserAffiliated":Z
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 963
    if-nez v3, :cond_b3

    .line 966
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mdiscardDeviceWideLogsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 968
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeResumeDeviceWideLoggingLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 970
    .end local v3    # "isRemovedUserAffiliated":Z
    :cond_b3
    monitor-exit v2

    goto/16 :goto_263

    :catchall_b6
    move-exception v3

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_9c .. :try_end_b8} :catchall_b6

    throw v3

    .line 971
    :cond_b9
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_ea

    .line 972
    const-string v2, "android.app.action.USER_STARTED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 973
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 974
    :try_start_ce
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 976
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 977
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_ce .. :try_end_db} :catchall_e7

    .line 978
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 979
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspensionOnUserStart(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    goto/16 :goto_263

    .line 977
    :catchall_e7
    move-exception v3

    :try_start_e8
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v3

    .line 980
    :cond_ea
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_10e

    .line 981
    const-string v2, "android.app.action.USER_STOPPED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 982
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misManagedProfile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 983
    const-string v2, "DevicePolicyManager"

    const-string v3, "Managed profile was stopped"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    goto/16 :goto_263

    .line 986
    :cond_10e
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 987
    const-string v2, "android.app.action.USER_SWITCHED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_263

    .line 988
    :cond_11d
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 989
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 990
    :try_start_12c
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 991
    monitor-exit v2
    :try_end_132
    .catchall {:try_start_12c .. :try_end_132} :catchall_14e

    .line 992
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misManagedProfile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 993
    const-string v2, "DevicePolicyManager"

    const-string v4, "Managed profile became unlocked"

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 995
    invoke-static {v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    move-result v2

    .line 996
    .local v2, "suspended":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V

    .line 997
    .end local v2    # "suspended":Z
    goto/16 :goto_263

    .line 991
    :catchall_14e
    move-exception v3

    :try_start_14f
    monitor-exit v2
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw v3

    .line 998
    :cond_151
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 999
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_263

    .line 1000
    :cond_160
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 1001
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_263

    .line 1002
    :cond_177
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 1003
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 1004
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_263

    .line 1006
    :cond_196
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandleNewPackageInstalled(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_263

    .line 1008
    :cond_1a5
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    const-string v2, "android.intent.extra.REPLACING"

    .line 1009
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d1

    .line 1010
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1011
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremoveCredentialManagementApp(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    goto/16 :goto_263

    .line 1012
    :cond_1d1
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 1013
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mclearWipeProfileNotification(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto/16 :goto_263

    .line 1014
    :cond_1e0
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24a

    const-string v2, "android.intent.action.TIME_SET"

    .line 1015
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f1

    goto :goto_24a

    .line 1024
    :cond_1f1
    const-string v2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 1025
    const-string v2, "DevicePolicyManager"

    const-string v3, "Profile off deadline alarm was triggered"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result v2

    .line 1027
    .local v2, "userId":I
    if-ltz v2, :cond_214

    .line 1028
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    goto :goto_249

    .line 1030
    :cond_214
    const-string v3, "DevicePolicyManager"

    const-string v4, "Got deadline alarm for nonexistent profile"

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_249

    .line 1032
    .end local v2    # "userId":I
    :cond_21c
    const-string v2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_249

    .line 1033
    const-string v2, "DevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesting to turn on the profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    goto :goto_263

    .line 1032
    :cond_249
    :goto_249
    goto :goto_263

    .line 1019
    :cond_24a
    :goto_24a
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdateSystemUpdateFreezePeriodsRecord(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 1020
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result v2

    .line 1021
    .restart local v2    # "userId":I
    if-ltz v2, :cond_262

    .line 1022
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    .line 1024
    .end local v2    # "userId":I
    :cond_262
    nop

    .line 1036
    :cond_263
    :goto_263
    return-void
.end method
