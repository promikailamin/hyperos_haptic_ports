.class Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachApplicationHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private mApp:Lcom/android/server/wm/WindowProcessController;

.field private mHasActivityStarted:Z

.field private mRemoteException:Landroid/os/RemoteException;

.field private mTop:Lcom/android/server/wm/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 3862
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 3892
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    if-eqz v0, :cond_5

    .line 3893
    return-void

    .line 3895
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 3897
    return-void

    .line 3899
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 3900
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 3901
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 3862
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->accept(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method process(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3876
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 3877
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_a
    if-ltz v0, :cond_1f

    .line 3878
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3879
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    if-nez v1, :cond_1e

    .line 3877
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3880
    :cond_1e
    throw v1

    .line 3883
    .end local v0    # "displayNdx":I
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    if-nez v0, :cond_2a

    .line 3884
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3887
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    return v0
.end method

.method reset()V
    .registers 2

    .line 3869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    .line 3870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    .line 3871
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 3872
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 3873
    return-void
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3905
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v2, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 3907
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_6c

    .line 3912
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p1, :cond_43

    .line 3913
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_43

    move v4, v0

    goto :goto_44

    :cond_43
    move v4, v1

    .line 3912
    :goto_44
    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3915
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4e

    .line 3921
    :cond_4c
    nop

    .line 3922
    return v1

    .line 3917
    :catch_4e
    move-exception v1

    .line 3918
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3919
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    .line 3920
    return v0

    .line 3908
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 3862
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
