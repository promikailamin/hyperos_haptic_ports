.class public Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 1150
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1155
    iget-object v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_11

    goto :goto_4c

    .line 1158
    :cond_11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1163
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_4c

    .line 1166
    :cond_24
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppCategory(Lcom/android/server/display/AutomaticBrightnessController;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_4c

    .line 1169
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPackageManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppCategory(Lcom/android/server/display/AutomaticBrightnessController;I)V
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_42} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_42} :catch_4c

    .line 1175
    :catch_42
    :try_start_42
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmHandler(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    :goto_4c
    return-void
.end method
