.class Lcom/xiaomi/mirror/MirrorManager$2;
.super Lcom/xiaomi/mirror/IMirrorDelegate$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/mirror/MirrorManager;

    .line 578
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcceptableChanged(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "acceptable"    # Z

    .line 627
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 628
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 629
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 630
    if-eqz v1, :cond_13

    .line 631
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mirror/MirrorDelegate;->onAcceptableChanged(IZ)V

    .line 633
    :cond_13
    return-void

    .line 629
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onDelegatePermissionReleased(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 639
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 640
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 641
    if-eqz v1, :cond_13

    .line 642
    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onDelegatePermissionReleased(Ljava/util/List;)V

    .line 644
    :cond_13
    return-void

    .line 640
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onDragResult(Z)V
    .registers 4
    .param p1, "result"    # Z

    .line 605
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 606
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 607
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 608
    if-eqz v1, :cond_13

    .line 609
    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onDragResult(Z)V

    .line 611
    :cond_13
    return-void

    .line 607
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onDragStart(Landroid/content/ClipData;III)V
    .registers 7
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePid"    # I
    .param p4, "flags"    # I

    .line 582
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 583
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 584
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 585
    if-eqz v1, :cond_13

    .line 586
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xiaomi/mirror/MirrorDelegate;->onDragStart(Landroid/content/ClipData;III)V

    .line 588
    :cond_13
    return-void

    .line 584
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 5
    .param p1, "iconId"    # I
    .param p2, "customIcon"    # Landroid/view/PointerIcon;

    .line 660
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 661
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 662
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 663
    if-eqz v1, :cond_13

    .line 664
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mirror/MirrorDelegate;->onPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 666
    :cond_13
    return-void

    .line 662
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 5
    .param p1, "menu"    # Lcom/xiaomi/mirror/MirrorMenu;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 650
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 651
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 652
    if-eqz v1, :cond_13

    .line 653
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mirror/MirrorDelegate;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V

    .line 655
    :cond_13
    return-void

    .line 651
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist onShadowChanged(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "shadow"    # Landroid/graphics/Bitmap;

    .line 616
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 617
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 618
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 619
    if-eqz v1, :cond_13

    .line 620
    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onShadowChanged(Landroid/graphics/Bitmap;)V

    .line 622
    :cond_13
    return-void

    .line 618
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z
    .registers 6
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "data"    # Landroid/content/ClipData;

    .line 593
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 594
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    .line 595
    .local v1, "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    .line 596
    if-eqz v1, :cond_15

    .line 597
    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorDelegate;->tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z

    move-result v0

    return v0

    .line 599
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 595
    .end local v1    # "delegate":Lcom/xiaomi/mirror/MirrorDelegate;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method
