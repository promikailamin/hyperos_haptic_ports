.class final Landroid/view/View$CheckForLongPress;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private blacklist mClassification:I

.field private greylist-max-o mOriginalPressedState:Z

.field private greylist-max-o mOriginalWindowAttachCount:I

.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method private constructor greylist <init>(Landroid/view/View;)V
    .registers 2

    .line 30136
    iput-object p1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View$CheckForLongPress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o rememberPressedState()V
    .registers 2

    .line 30160
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    .line 30161
    return-void
.end method

.method public greylist-max-o rememberWindowAttachCount()V
    .registers 2

    .line 30156
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    iput v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 30157
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 30141
    iget-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_31

    iget v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mWindowAttachCount:I

    if-ne v0, v1, :cond_31

    .line 30143
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForLongPress;->mClassification:I

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$mrecordGestureClassification(Landroid/view/View;I)V

    .line 30144
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    iget v2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performLongClick(FF)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 30145
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$fputmHasPerformedLongPress(Landroid/view/View;Z)V

    .line 30148
    :cond_31
    return-void
.end method

.method public greylist-max-o setAnchor(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 30151
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    .line 30152
    iput p2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    .line 30153
    return-void
.end method

.method public blacklist setClassification(I)V
    .registers 2
    .param p1, "classification"    # I

    .line 30164
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mClassification:I

    .line 30165
    return-void
.end method
