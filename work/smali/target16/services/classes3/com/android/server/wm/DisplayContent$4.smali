.class public Lcom/android/server/wm/DisplayContent$4;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public behindTopWindow:Z

.field public final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V
    .registers 4

    .line 6828
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 6829
    :goto_c
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 6833
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 6834
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_c

    .line 6835
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    :cond_c
    return v2

    .line 6839
    :cond_d
    iget v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_19

    .line 6840
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p0

    if-nez p0, :cond_28

    return v2

    .line 6844
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 6845
    iget p0, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_30

    .line 6849
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_2f

    return v2

    :cond_2f
    return v1

    :cond_30
    :goto_30
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 6828
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$4;->test(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
