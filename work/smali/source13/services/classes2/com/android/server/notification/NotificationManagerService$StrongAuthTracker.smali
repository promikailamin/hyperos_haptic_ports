.class public Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field mIsInLockDownMode:Z

.field mUserInLockDownMode:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 2014
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2015
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 2011
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 2012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    .line 2016
    return-void
.end method

.method private containsFlag(II)Z
    .registers 4
    .param p1, "haystack"    # I
    .param p2, "needle"    # I

    .line 2019
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public isInLockDownMode()Z
    .registers 2

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    return v0
.end method

.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 6
    .param p1, "userId"    # I

    monitor-enter p0

    .line 2028
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->containsFlag(II)Z

    move-result v0

    .line 2030
    .local v0, "userInLockDownModeNext":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2031
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    move v1, v2

    .line 2033
    .local v1, "isInLockDownModeNext":Z
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_35

    if-ne v2, v1, :cond_23

    .line 2034
    monitor-exit p0

    return-void

    .line 2037
    :cond_23
    if-eqz v1, :cond_2a

    .line 2038
    :try_start_25
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2046
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    .line 2048
    if-nez v1, :cond_33

    .line 2049
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_35

    .line 2051
    :cond_33
    monitor-exit p0

    return-void

    .line 2027
    .end local v0    # "userInLockDownModeNext":Z
    .end local v1    # "isInLockDownModeNext":Z
    .end local p1    # "userId":I
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method
