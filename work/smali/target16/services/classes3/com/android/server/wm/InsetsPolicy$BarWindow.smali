.class public final Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# instance fields
.field public final mId:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .registers 3

    .line 907
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 904
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 908
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    return-void
.end method


# virtual methods
.method public final setVisible(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    .line 918
    :goto_5
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v0, p1, :cond_26

    .line 919
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 920
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 923
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 924
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 923
    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    :cond_26
    return-void
.end method

.method public final updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 913
    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    return-void
.end method
