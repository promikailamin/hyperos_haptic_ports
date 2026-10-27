.class public Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ShowNotificationPermissionPromptRunnable"
.end annotation


# instance fields
.field private final mPkgName:Ljava/lang/String;

.field private final mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mTaskId:I

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyInternal;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # I
    .param p3, "task"    # I
    .param p4, "pPi"    # Lcom/android/server/policy/PermissionPolicyInternal;

    .line 7553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7554
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 7555
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 7556
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 7557
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 7558
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 7562
    instance-of v0, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 7563
    return v1

    .line 7566
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    .line 7569
    .local v0, "other":Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 7575
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 5

    .line 7580
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PermissionPolicyInternal;->showNotificationPromptIfNeeded(Ljava/lang/String;II)V

    .line 7581
    return-void
.end method
