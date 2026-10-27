.class public Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public final synthetic val$downEvent:Landroid/view/MotionEvent;

.field public final synthetic val$pressEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 4

    .line 1536
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->val$downEvent:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->val$pressEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1540
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->val$downEvent:Landroid/view/MotionEvent;

    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mbuildMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0xc

    .line 1542
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v1, 0x0

    .line 1543
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 1545
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x1

    .line 1546
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1547
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 1549
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v4, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I

    move-result v3

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v4, v0, v0, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$801(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1551
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v4, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I

    move-result v3

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v4, v2, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$901(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1554
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->val$downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1555
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->val$pressEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1556
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1557
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1558
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1559
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mresetInternalState(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V

    return-void
.end method
