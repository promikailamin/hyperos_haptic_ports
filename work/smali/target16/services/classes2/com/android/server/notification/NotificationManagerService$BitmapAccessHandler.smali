.class public Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 3229
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public isAllowedToOpen(Landroid/net/Uri;II)Z
    .registers 10

    const/4 p1, 0x1

    if-ne p2, p3, :cond_4

    return p1

    .line 3235
    :cond_4
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x19

    const/4 v3, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_38

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1a

    goto :goto_38

    .line 3240
    :cond_1a
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/ManagedServices;->isUidAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_27

    return p1

    .line 3243
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_36

    return p1

    :cond_36
    const/4 p0, 0x0

    return p0

    :cond_38
    :goto_38
    return p1
.end method
