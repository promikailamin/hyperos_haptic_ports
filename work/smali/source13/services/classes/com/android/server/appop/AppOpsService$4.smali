.class Lcom/android/server/appop/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1987
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1990
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1992
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 1993
    .local v7, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetPackageManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1994
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1993
    const-wide/16 v3, 0x1000

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1995
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2, v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$misSamplingTarget(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1996
    monitor-enter p0

    .line 1997
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1998
    monitor-exit p0

    goto :goto_38

    :catchall_35
    move-exception v2

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v2

    .line 2000
    :cond_38
    :goto_38
    return-void
.end method
