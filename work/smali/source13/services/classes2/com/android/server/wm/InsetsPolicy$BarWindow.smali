.class Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarWindow"
.end annotation


# instance fields
.field private final mId:I

.field private mState:I

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method static bridge synthetic -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .registers 3
    .param p2, "id"    # I

    .line 788
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 789
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 790
    return-void
.end method

.method private setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 798
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    .line 799
    .local v0, "state":I
    :goto_5
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v1, v0, :cond_26

    .line 800
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 801
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 803
    .local v1, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_26

    .line 804
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 805
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 804
    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    .line 808
    .end local v1    # "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_26
    return-void
.end method

.method private updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 4
    .param p1, "controlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I

    .line 794
    if-eqz p1, :cond_b

    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    .line 795
    return-void
.end method
