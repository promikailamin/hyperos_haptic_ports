.class Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;

    .line 1146
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1148
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 1150
    .local v0, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_b

    .line 1151
    return-void

    .line 1154
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iget v5, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v1, v0

    move-object v2, v3

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_1d} :catch_1e

    .line 1158
    goto :goto_26

    .line 1156
    :catch_1e
    move-exception v1

    .line 1157
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_26
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V

    .line 1161
    return-void
.end method
