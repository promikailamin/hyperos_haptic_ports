.class final Lcom/android/server/logcat/LogcatManagerService$BinderService;
.super Landroid/os/logcat/ILogcatManagerService$Stub;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Landroid/os/logcat/ILogcatManagerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/logcat/LogcatManagerService;Lcom/android/server/logcat/LogcatManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    return-void
.end method


# virtual methods
.method public finishThread(IIII)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .param p3, "pid"    # I
    .param p4, "fd"    # I

    .line 197
    new-instance v6, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIIILcom/android/server/logcat/LogcatManagerService$LogAccessRequest-IA;)V

    .line 201
    .local v0, "logAccessRequest":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 202
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v3}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 203
    return-void
.end method

.method public startThread(IIII)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .param p3, "pid"    # I
    .param p4, "fd"    # I

    .line 187
    new-instance v6, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIIILcom/android/server/logcat/LogcatManagerService$LogAccessRequest-IA;)V

    .line 191
    .local v0, "logAccessRequest":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 192
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {v3}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 193
    return-void
.end method
