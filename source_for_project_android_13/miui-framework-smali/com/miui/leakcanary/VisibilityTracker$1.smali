.class Lcom/miui/leakcanary/VisibilityTracker$1;
.super Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/leakcanary/VisibilityTracker;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/leakcanary/VisibilityTracker;


# direct methods
.method constructor blacklist <init>(Lcom/miui/leakcanary/VisibilityTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/leakcanary/VisibilityTracker;

    .line 26
    iput-object p1, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-direct {p0}, Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fputstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;I)V

    .line 29
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgethasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 30
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0, v2}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fputhasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;Z)V

    .line 31
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$mupdateVisible(Lcom/miui/leakcanary/VisibilityTracker;)V

    .line 33
    :cond_25
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 36
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I

    move-result v0

    if-lez v0, :cond_13

    .line 37
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fputstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;I)V

    .line 39
    :cond_13
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgethasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fgetstartedActivityCount(Lcom/miui/leakcanary/VisibilityTracker;)I

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_34

    .line 40
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$fputhasVisibleActivities(Lcom/miui/leakcanary/VisibilityTracker;Z)V

    .line 41
    iget-object v0, p0, Lcom/miui/leakcanary/VisibilityTracker$1;->this$0:Lcom/miui/leakcanary/VisibilityTracker;

    invoke-static {v0}, Lcom/miui/leakcanary/VisibilityTracker;->-$$Nest$mupdateVisible(Lcom/miui/leakcanary/VisibilityTracker;)V

    .line 43
    :cond_34
    return-void
.end method
