.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/Activity;

    .line 1042
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enterPictureInPictureModeIfPossible()V
    .registers 2

    .line 1061
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1062
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    .line 1064
    :cond_f
    return-void
.end method

.method public blacklist getWindowingMode()I
    .registers 5

    .line 1113
    const/4 v0, 0x0

    .line 1115
    .local v0, "mode":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v2}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move v0, v1

    .line 1118
    goto :goto_16

    .line 1116
    :catch_12
    move-exception v1

    .line 1117
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1119
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return v0
.end method

.method public blacklist isInSplitScreen()Z
    .registers 4

    .line 1096
    const/4 v0, 0x0

    .line 1098
    .local v0, "isInSplitScreen":Z
    :try_start_1
    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v2}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->isActivityInSplitScreen(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_1b

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v0, v1

    .line 1101
    goto :goto_1f

    .line 1099
    :catch_1b
    move-exception v1

    .line 1100
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1102
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    return v0
.end method

.method public blacklist isTaskRoot()Z
    .registers 4

    .line 1068
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    if-ltz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public blacklist toggleFreeformWindowingMode()V
    .registers 3

    .line 1051
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 1052
    return-void
.end method

.method public blacklist updateNavigationBarColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1088
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 1089
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1090
    return-void
.end method

.method public blacklist updateStatusBarColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1078
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 1079
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1080
    return-void
.end method
