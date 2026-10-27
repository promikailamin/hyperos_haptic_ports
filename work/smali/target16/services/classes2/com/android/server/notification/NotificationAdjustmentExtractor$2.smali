.class public Lcom/android/server/notification/NotificationAdjustmentExtractor$2;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationAdjustmentExtractor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

.field public final synthetic val$hasAdjustedClassification:Z

.field public final synthetic val$removedClassification:Z


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;JZZ)V
    .registers 7

    .line 127
    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    iput-boolean p5, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->val$hasAdjustedClassification:Z

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->val$removedClassification:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 134
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->val$hasAdjustedClassification:Z

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAdjustmentExtractor;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V

    .line 137
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->val$removedClassification:Z

    if-eqz v0, :cond_22

    .line 138
    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-static {p0}, Lcom/android/server/notification/NotificationAdjustmentExtractor;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;

    move-result-object p0

    .line 139
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hadGroupSummaryWhenUnclassified()Z

    move-result v0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->onNotificationUnbundled(Lcom/android/server/notification/NotificationRecord;Z)V

    const/4 p0, 0x0

    .line 142
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setHadGroupSummaryWhenUnclassified(Z)V

    :cond_22
    return-void
.end method

.method public work()V
    .registers 1

    .line 0
    return-void
.end method
