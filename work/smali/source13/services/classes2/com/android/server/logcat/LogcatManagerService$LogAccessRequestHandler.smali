.class Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;
.super Landroid/os/Handler;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogAccessRequestHandler"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "service"    # Lcom/android/server/logcat/LogcatManagerService;

    .line 237
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    goto :goto_42

    .line 270
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 271
    .local v0, "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 272
    goto :goto_42

    .line 265
    .end local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 266
    .restart local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 267
    goto :goto_42

    .line 260
    .end local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 261
    .local v0, "request":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 262
    goto :goto_42

    .line 255
    .end local v0    # "request":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 256
    .local v0, "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 257
    goto :goto_42

    .line 250
    .end local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 251
    .restart local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 252
    goto :goto_42

    .line 245
    .end local v0    # "client":Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 246
    .local v0, "request":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 247
    nop

    .line 275
    .end local v0    # "request":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
