.class public Lcom/android/server/notification/NotificationManagerService$15;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$channelId:Ljava/lang/String;

.field public final synthetic val$mustHaveFlags:I

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$Pn9EcncgSX22Cx6darG164p5d5E(III)Z
    .registers 4

    .line 11668
    and-int v0, p2, p0

    if-eq v0, p0, :cond_5

    goto :goto_9

    :cond_5
    and-int p0, p2, p1

    if-eqz p0, :cond_b

    :goto_9
    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIIILjava/lang/String;J)V
    .registers 12

    .line 11659
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v0, p0

    .line 11662
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11666
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11667
    :try_start_19
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2, v3}, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11676
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iget-wide v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$cancellationElapsedTimeMs:J

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-wide/from16 v16, v2

    invoke-static/range {v4 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11681
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iget-wide v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$cancellationElapsedTimeMs:J

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v2

    invoke-static/range {v4 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11686
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z

    .line 11687
    monitor-exit v1

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_19 .. :try_end_61} :catchall_5f

    throw v0
.end method
