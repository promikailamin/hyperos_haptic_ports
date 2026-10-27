.class Lcom/android/server/am/AppFGSTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppFGSTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppFGSTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CHECK_LONG_RUNNING_FGS:I = 0x4

.field static final MSG_FOREGROUND_SERVICES_CHANGED:I = 0x2

.field static final MSG_FOREGROUND_SERVICES_NOTIFICATION_UPDATED:I = 0x3

.field static final MSG_FOREGROUND_SERVICES_STARTED:I = 0x0

.field static final MSG_FOREGROUND_SERVICES_STOPPED:I = 0x1

.field static final MSG_NOTIFICATION_POSTED:I = 0x5

.field static final MSG_NOTIFICATION_REMOVED:I = 0x6


# instance fields
.field private final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/android/server/am/AppFGSTracker;

    .line 140
    iget-object v0, p1, Lcom/android/server/am/AppFGSTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    goto :goto_71

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleNotificationRemoved(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    goto :goto_71

    .line 169
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleNotificationPosted(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    .line 170
    goto :goto_71

    .line 166
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V

    .line 167
    goto :goto_71

    .line 160
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 161
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 162
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 161
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServiceNotificationUpdated(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 164
    goto :goto_71

    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    .line 158
    goto :goto_71

    .line 152
    :pswitch_53
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    .line 154
    goto :goto_71

    .line 148
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    .line 150
    nop

    .line 175
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_62
        :pswitch_53
        :pswitch_45
        :pswitch_28
        :pswitch_22
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method
