.class public Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V
    .registers 2

    .line 1514
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1517
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$msendMotionEventsForClick(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;I)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHasOngoingDoubleClick(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1519
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;->this$1:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mresetInternalState(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V

    return-void
.end method
