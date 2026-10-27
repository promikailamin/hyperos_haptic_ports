.class Lcom/android/server/am/AppRestrictionController$3;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


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

    .line 1441
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$3;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 1445
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$3;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    .line 1446
    nop

    .line 1445
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1447
    return-void
.end method
