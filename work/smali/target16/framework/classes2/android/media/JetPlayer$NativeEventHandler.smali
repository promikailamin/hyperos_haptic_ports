.class Landroid/media/JetPlayer$NativeEventHandler;
.super Landroid/os/Handler;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/JetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private greylist-max-o mJet:Landroid/media/JetPlayer;

.field final synthetic blacklist this$0:Landroid/media/JetPlayer;


# direct methods
.method public constructor blacklist <init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 406
    iput-object p1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    .line 407
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 408
    iput-object p2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    .line 409
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 413
    nop

    .line 414
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v0}, Landroid/media/JetPlayer;->-$$Nest$fgetmEventListenerLock(Landroid/media/JetPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 415
    :try_start_8
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    invoke-static {v0}, Landroid/media/JetPlayer;->-$$Nest$fgetmJetEventListener(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v0

    .line 416
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_82

    .line 417
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_86

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/JetPlayer;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 450
    return-void

    .line 444
    :pswitch_2d
    if-eqz v0, :cond_36

    .line 445
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Landroid/media/JetPlayer$OnJetEventListener;->onJetPauseUpdate(Landroid/media/JetPlayer;I)V

    .line 446
    :cond_36
    return-void

    .line 439
    :pswitch_37
    if-eqz v0, :cond_40

    .line 440
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Landroid/media/JetPlayer$OnJetEventListener;->onJetNumQueuedSegmentUpdate(Landroid/media/JetPlayer;I)V

    .line 442
    :cond_40
    return-void

    .line 434
    :pswitch_41
    if-eqz v0, :cond_4c

    .line 435
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Landroid/media/JetPlayer$OnJetEventListener;->onJetUserIdUpdate(Landroid/media/JetPlayer;II)V

    .line 437
    :cond_4c
    return-void

    .line 419
    :pswitch_4d
    if-eqz v0, :cond_81

    .line 422
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v0}, Landroid/media/JetPlayer;->-$$Nest$fgetmJetEventListener(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x18

    int-to-short v3, v0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/high16 v4, 0xfc0000

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x12

    int-to-byte v4, v0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const v5, 0x3c000

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x1

    int-to-byte v5, v0

    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit16 v0, v0, 0x3f80

    shr-int/lit8 v0, v0, 0x7

    int-to-byte v6, v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 p1, p1, 0x7f

    int-to-byte v7, p1

    invoke-interface/range {v1 .. v7}, Landroid/media/JetPlayer$OnJetEventListener;->onJetEvent(Landroid/media/JetPlayer;SBBBB)V

    .line 432
    :cond_81
    return-void

    .line 416
    :catchall_82
    move-exception v0

    move-object p1, v0

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_82

    throw p1

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_41
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method
