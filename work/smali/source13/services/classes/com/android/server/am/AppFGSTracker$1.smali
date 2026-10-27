.class Lcom/android/server/am/AppFGSTracker$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AppFGSTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppFGSTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppFGSTracker;

    .line 90
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$1;->this$0:Lcom/android/server/am/AppFGSTracker;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "fg"    # Z

    .line 93
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 97
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$1;->this$0:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, v0, Lcom/android/server/am/AppFGSTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 99
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$1;->this$0:Lcom/android/server/am/AppFGSTracker;

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/android/server/am/AppFGSTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_18
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 106
    return-void
.end method
