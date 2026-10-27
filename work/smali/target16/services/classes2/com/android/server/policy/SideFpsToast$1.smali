.class public Lcom/android/server/policy/SideFpsToast$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SideFpsToast.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsToast;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsToast;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/policy/SideFpsToast$1;->this$0:Lcom/android/server/policy/SideFpsToast;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 82
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/policy/SideFpsToast$1;->this$0:Lcom/android/server/policy/SideFpsToast;

    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 85
    iget-object v0, p0, Lcom/android/server/policy/SideFpsToast$1;->this$0:Lcom/android/server/policy/SideFpsToast;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 87
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
