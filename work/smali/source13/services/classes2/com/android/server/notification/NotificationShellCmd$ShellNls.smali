.class Lcom/android/server/notification/NotificationShellCmd$ShellNls;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationShellCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationShellCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShellNls"
.end annotation


# static fields
.field private static sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;


# instance fields
.field isConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 770
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 768
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationShellCmd$ShellNls-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    .registers 1

    .line 785
    sget-object v0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    return-object v0
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 2

    .line 775
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 776
    sput-object p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 778
    return-void
.end method

.method public onListenerDisconnected()V
    .registers 2

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 782
    return-void
.end method
