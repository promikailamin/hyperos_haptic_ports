.class public Lcom/android/server/accessibility/autoclick/AutoclickController$2;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitScrollMode()V
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->exitScrollMode()V

    return-void
.end method

.method public onHoverButtonChange(IZ)V
    .registers 3

    if-eqz p2, :cond_11

    .line 226
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_a

    goto :goto_1a

    :cond_a
    const/4 p2, 0x5

    if-eq p1, p2, :cond_1a

    .line 236
    invoke-static {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mstartContinuousScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    return-void

    .line 238
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    if-ne p2, p1, :cond_1a

    .line 242
    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mstopContinuousScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    :cond_1a
    :goto_1a
    return-void
.end method
