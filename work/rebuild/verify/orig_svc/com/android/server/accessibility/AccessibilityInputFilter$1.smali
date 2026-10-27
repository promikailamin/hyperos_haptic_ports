.class public Lcom/android/server/accessibility/AccessibilityInputFilter$1;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AccessibilityInputFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    .line 752
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 755
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$fgetmAms(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 763
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsToObserveMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v0

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    .line 768
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_23
    return-void
.end method
