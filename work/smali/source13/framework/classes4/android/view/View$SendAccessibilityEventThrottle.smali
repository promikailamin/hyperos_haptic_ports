.class Landroid/view/View$SendAccessibilityEventThrottle;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventThrottle"
.end annotation


# instance fields
.field private blacklist mAccessibilityEvent:Landroid/view/accessibility/AccessibilityEvent;

.field public volatile blacklist mIsPending:Z

.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .registers 2

    .line 31301
    iput-object p1, p0, Landroid/view/View$SendAccessibilityEventThrottle;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View$SendAccessibilityEventThrottle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$SendAccessibilityEventThrottle;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist post(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 31306
    invoke-virtual {p0, p1}, Landroid/view/View$SendAccessibilityEventThrottle;->updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 31307
    iget-boolean v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mIsPending:Z

    if-nez v0, :cond_13

    .line 31308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mIsPending:Z

    .line 31309
    iget-object v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->this$0:Landroid/view/View;

    .line 31310
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    .line 31309
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31312
    :cond_13
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 31327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mIsPending:Z

    .line 31328
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mAccessibilityEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 31329
    return-void
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 31316
    iget-object v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 31317
    iget-object v0, p0, Landroid/view/View$SendAccessibilityEventThrottle;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mAccessibilityEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$mrequestParentSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 31319
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View$SendAccessibilityEventThrottle;->reset()V

    .line 31320
    return-void
.end method

.method public blacklist updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 31323
    iput-object p1, p0, Landroid/view/View$SendAccessibilityEventThrottle;->mAccessibilityEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 31324
    return-void
.end method
