.class public Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "NotificationManagerService.java"


# instance fields
.field public mUserInLockDownMode:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V
    .registers 3

    .line 2599
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2600
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 2597
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final containsFlag(II)Z
    .registers 3

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isInLockDownMode(I)Z
    .registers 3

    .line 2610
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 6

    monitor-enter p0

    .line 2616
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2617
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result v0

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_44

    :cond_17
    move v0, v1

    .line 2619
    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->containsFlag(II)Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v0, :cond_27

    :cond_26
    const/4 v1, 0x1

    .line 2622
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->isInLockDownMode(I)Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_15

    if-ne v1, v0, :cond_2f

    .line 2623
    monitor-exit p0

    return-void

    :cond_2f
    if-eqz v1, :cond_36

    .line 2636
    :try_start_31
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 2638
    :cond_36
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-nez v1, :cond_42

    .line 2641
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_15

    .line 2643
    :cond_42
    monitor-exit p0

    return-void

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_15

    throw p1
.end method
