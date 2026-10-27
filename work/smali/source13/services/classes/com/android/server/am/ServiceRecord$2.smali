.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;

.field final synthetic val$record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IILcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;

    .line 1025
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    iput p5, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iput-object p7, p0, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 1027
    move-object/from16 v1, p0

    const-string v2, "ActivityManager"

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/notification/NotificationManagerInternal;

    .line 1029
    .local v12, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v12, :cond_10

    .line 1030
    return-void

    .line 1033
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    invoke-interface {v12, v3, v4}, Lcom/android/server/notification/NotificationManagerInternal;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 1035
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    .line 1037
    .local v3, "localForegroundNoti":Landroid/app/Notification;
    :try_start_1e
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v13, 0x0

    if-nez v0, :cond_113

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to start a foreground service ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") with a broken notification (no icon: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1049
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1048
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1050
    .local v0, "appName":Ljava/lang/CharSequence;
    if-nez v0, :cond_6b

    .line 1051
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_69} :catch_1b2

    move-object v0, v4

    goto :goto_6c

    .line 1050
    :cond_6b
    move-object v4, v0

    .line 1053
    .end local v0    # "appName":Ljava/lang/CharSequence;
    .local v4, "appName":Ljava/lang/CharSequence;
    :goto_6c
    const/4 v5, 0x0

    .line 1055
    .local v5, "ctx":Landroid/content/Context;
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6, v13, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    move-object v5, v0

    .line 1058
    new-instance v0, Landroid/app/Notification$Builder;

    .line 1059
    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1062
    .local v0, "notiBuilder":Landroid/app/Notification$Builder;
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1065
    const/16 v6, 0x40

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 1067
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v6, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v8, "package"

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1071
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0xc000000

    const/16 v18, 0x0

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1073
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 1071
    move-object/from16 v16, v6

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1074
    .local v8, "pi":Landroid/app/PendingIntent;
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1077
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104015a

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v4, v11, v13

    .line 1078
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1082
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040159

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v13

    .line 1083
    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1082
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1087
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1089
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7
    :try_end_10f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_10f} :catch_112
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_10f} :catch_1b2

    move-object v3, v7

    .line 1091
    .end local v0    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v6    # "runningIntent":Landroid/content/Intent;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    move-object v14, v3

    goto :goto_114

    .line 1090
    :catch_112
    move-exception v0

    .line 1093
    .end local v4    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "ctx":Landroid/content/Context;
    :cond_113
    move-object v14, v3

    .end local v3    # "localForegroundNoti":Landroid/app/Notification;
    .local v14, "localForegroundNoti":Landroid/app/Notification;
    :goto_114
    :try_start_114
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 1094
    invoke-virtual {v14}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-interface {v12, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_120
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_120} :catch_1af

    if-nez v0, :cond_164

    .line 1095
    const/16 v3, 0x1b

    .line 1097
    .local v3, "targetSdkVersion":I
    :try_start_124
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1098
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v4, v13, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1100
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_13e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_13e} :catch_140
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_13e} :catch_1af

    move v3, v4

    .line 1102
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_141

    .line 1101
    :catch_140
    move-exception v0

    .line 1103
    :goto_141
    const/16 v0, 0x1b

    if-ge v3, v0, :cond_146

    goto :goto_164

    .line 1104
    :cond_146
    :try_start_146
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid channel for service notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v12    # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .end local v14    # "localForegroundNoti":Landroid/app/Notification;
    .end local p0    # "this":Lcom/android/server/am/ServiceRecord$2;
    throw v0

    .line 1109
    .end local v3    # "targetSdkVersion":I
    .restart local v12    # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .restart local v14    # "localForegroundNoti":Landroid/app/Notification;
    .restart local p0    # "this":Lcom/android/server/am/ServiceRecord$2;
    :cond_164
    :goto_164
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_191

    .line 1117
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v7, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v3, v12

    move-object v4, v5

    move-object v10, v14

    invoke-interface/range {v3 .. v11}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 1121
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v14, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1123
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-static {v0, v3, v4, v5, v13}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V

    .line 1133
    goto :goto_1cb

    .line 1114
    :cond_191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v12    # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .end local v14    # "localForegroundNoti":Landroid/app/Notification;
    .end local p0    # "this":Lcom/android/server/am/ServiceRecord$2;
    throw v0
    :try_end_1af
    .catch Ljava/lang/RuntimeException; {:try_start_146 .. :try_end_1af} :catch_1af

    .line 1126
    .restart local v12    # "nm":Lcom/android/server/notification/NotificationManagerInternal;
    .restart local v14    # "localForegroundNoti":Landroid/app/Notification;
    .restart local p0    # "this":Lcom/android/server/am/ServiceRecord$2;
    :catch_1af
    move-exception v0

    move-object v3, v14

    goto :goto_1b3

    .end local v14    # "localForegroundNoti":Landroid/app/Notification;
    .local v3, "localForegroundNoti":Landroid/app/Notification;
    :catch_1b2
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1b3
    const-string v4, "Error showing notification for service"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    iget v6, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v7, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;I)V

    move-object v14, v3

    .line 1134
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "localForegroundNoti":Landroid/app/Notification;
    .restart local v14    # "localForegroundNoti":Landroid/app/Notification;
    :goto_1cb
    return-void
.end method
