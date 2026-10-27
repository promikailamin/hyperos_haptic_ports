.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public final mHasFocusedEditor:Z

.field public mImeDisplayId:I

.field public final mImeFocusChanged:Z

.field public final mIsStartInputByWindowGainFocus:Z

.field public mRequestImeToken:Landroid/os/IBinder;

.field public mRequestedImeVisible:Z

.field public final mSoftInputModeState:I

.field public final mToolType:I

.field public final mWindowFlags:I


# direct methods
.method public static bridge synthetic -$$Nest$msetImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setImeDisplayId(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setRequestedImeVisible(Z)V

    return-void
.end method

.method public constructor <init>(IIZZZI)V
    .registers 8

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 679
    iput v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    .line 623
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 624
    iput p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mWindowFlags:I

    .line 625
    iput-boolean p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    .line 626
    iput-boolean p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    .line 627
    iput-boolean p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByWindowGainFocus:Z

    .line 628
    iput p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mToolType:I

    return-void
.end method


# virtual methods
.method public getRequestImeToken()Landroid/os/IBinder;
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getSoftInputModeState()I
    .registers 1

    .line 685
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    return p0
.end method

.method public getWindowFlags()I
    .registers 1

    .line 691
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mWindowFlags:I

    return p0
.end method

.method public hasEditorFocused()Z
    .registers 1

    .line 701
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    return p0
.end method

.method public hasImeFocusChanged()Z
    .registers 1

    .line 696
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    return p0
.end method

.method public isRequestedImeVisible()Z
    .registers 1

    .line 722
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    return p0
.end method

.method public isStartInputByWindowGainFocus()Z
    .registers 1

    .line 706
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByWindowGainFocus:Z

    return p0
.end method

.method public final setImeDisplayId(I)V
    .registers 2

    .line 737
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    return-void
.end method

.method public setRequestImeToken(Landroid/os/IBinder;)V
    .registers 2

    .line 727
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    return-void
.end method

.method public final setRequestedImeVisible(Z)V
    .registers 2

    .line 717
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeTargetWindowState{ softInputModeState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 748
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " windowFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mWindowFlags:I

    .line 749
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imeFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasFocusedEditor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isStartInputByWindowGainFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByWindowGainFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " toolType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mToolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestedImeVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " requestImeToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imeDisplayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
