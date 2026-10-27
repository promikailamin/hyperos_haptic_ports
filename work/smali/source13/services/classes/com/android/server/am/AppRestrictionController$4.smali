.class Lcom/android/server/am/AppRestrictionController$4;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
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

    .line 1451
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$4;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 1455
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$4;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p4, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1457
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1461
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$4;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1463
    return-void
.end method
