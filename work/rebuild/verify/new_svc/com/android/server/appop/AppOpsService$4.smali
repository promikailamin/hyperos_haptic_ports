.class public Lcom/android/server/appop/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 1088
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1091
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3d

    .line 1095
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1096
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1098
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 1099
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monPackageRemoved(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V

    return-void

    .line 1100
    :cond_30
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1101
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monPackageReplaced(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V

    :cond_3d
    :goto_3d
    return-void
.end method
