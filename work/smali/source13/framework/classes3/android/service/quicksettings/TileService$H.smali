.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final greylist-max-o MSG_START_LISTENING:I = 0x1

.field private static final greylist-max-o MSG_START_SUCCESS:I = 0x7

.field private static final greylist-max-o MSG_STOP_LISTENING:I = 0x2

.field private static final greylist-max-o MSG_TILE_ADDED:I = 0x3

.field private static final greylist-max-o MSG_TILE_CLICKED:I = 0x5

.field private static final greylist-max-o MSG_TILE_REMOVED:I = 0x4

.field private static final greylist-max-o MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field private final blacklist mTileServiceName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 411
    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 412
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    .line 414
    return-void
.end method

.method private blacklist logMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Handler - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    goto/16 :goto_7f

    .line 463
    :pswitch_8
    :try_start_8
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmService(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmTileToken(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    .line 465
    goto :goto_7f

    .line 464
    :catch_18
    move-exception v0

    goto :goto_7f

    .line 456
    :pswitch_1a
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 457
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7f

    .line 451
    :pswitch_2c
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmToken(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)V

    .line 452
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 453
    goto :goto_7f

    .line 429
    :pswitch_3b
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 430
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    .line 431
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 433
    :cond_4d
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 434
    goto :goto_7f

    .line 425
    :pswitch_53
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 426
    goto :goto_7f

    .line 437
    :pswitch_59
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 438
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    .line 439
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_7f

    .line 444
    :pswitch_6c
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 445
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    .line 446
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 468
    :cond_7f
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_59
        :pswitch_53
        :pswitch_3b
        :pswitch_2c
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method
