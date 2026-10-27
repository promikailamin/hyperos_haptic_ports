.class Lcom/android/server/apphibernation/AppHibernationService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/apphibernation/AppHibernationService;

    .line 893
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 896
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 897
    .local v0, "userId":I
    if-ne v0, v1, :cond_b

    .line 898
    return-void

    .line 901
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    if-nez v3, :cond_1f

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 903
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 906
    return-void

    .line 909
    :cond_31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 910
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v2, v3, v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageAdded(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    goto :goto_55

    .line 911
    :cond_3d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 912
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v2, v3, v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageRemoved(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    .line 913
    const-string v2, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 914
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v2, v3}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$monPackageRemovedForAllUsers(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;)V

    .line 918
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void
.end method
