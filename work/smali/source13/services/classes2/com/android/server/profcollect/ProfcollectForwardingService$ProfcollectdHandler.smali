.class Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;
.super Landroid/os/Handler;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfcollectdHandler"
.end annotation


# static fields
.field public static final MESSAGE_BINDER_CONNECT:I = 0x0

.field public static final MESSAGE_REGISTER_SCHEDULERS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 155
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 169
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mregisterObservers(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->schedule(Landroid/content/Context;)V

    .line 171
    goto :goto_33

    .line 166
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mconnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z

    .line 167
    nop

    .line 175
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
