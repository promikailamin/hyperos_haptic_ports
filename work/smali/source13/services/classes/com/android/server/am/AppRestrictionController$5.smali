.class Lcom/android/server/am/AppRestrictionController$5;
.super Landroid/app/IUidObserver$Stub;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController;

    .line 1467
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1489
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1490
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 1494
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1483
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1485
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1477
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1479
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1498
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1471
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1473
    return-void
.end method
