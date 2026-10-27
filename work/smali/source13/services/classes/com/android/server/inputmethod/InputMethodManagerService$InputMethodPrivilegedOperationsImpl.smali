.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 6827
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 6828
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6829
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 6830
    return-void
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z

    .line 6969
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mapplyImeVisibility(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    .line 6970
    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6849
    move-object v0, p3

    .line 6851
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v1

    .line 6852
    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6851
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 6855
    goto :goto_15

    .line 6853
    :catchall_11
    move-exception v1

    .line 6854
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6856
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_15
    return-void
.end method

.method public hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6895
    move-object v0, p2

    .line 6897
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 6898
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 6901
    goto :goto_11

    .line 6899
    :catchall_d
    move-exception v1

    .line 6900
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6902
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

.method public notifyUserActionAsync()V
    .registers 3

    .line 6963
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mnotifyUserAction(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 6964
    return-void
.end method

.method public onStylusHandwritingReady(II)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "pid"    # I

    .line 6975
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monStylusHandwritingReady(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    .line 6976
    return-void
.end method

.method public reportFullscreenModeAsync(Z)V
    .registers 4
    .param p1, "fullscreen"    # Z

    .line 6861
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportFullscreenMode(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 6862
    return-void
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "startInputToken"    # Landroid/os/IBinder;

    .line 6841
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportStartInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 6842
    return-void
.end method

.method public resetStylusHandwriting(I)V
    .registers 3
    .param p1, "requestId"    # I

    .line 6981
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetStylusHandwriting(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 6982
    return-void
.end method

.method public sendKeyboardCaps()V
    .registers 3

    .line 6988
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 6989
    const-string v0, "InputMethodManagerService"

    const-string v1, "Send caps event from keyboard."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6991
    :cond_b
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->sendKeyboardCaps()V

    .line 6992
    return-void
.end method

.method public setImeWindowStatusAsync(II)V
    .registers 5
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 6835
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetImeWindowStatus(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 6836
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6868
    move-object v0, p2

    .line 6870
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 6871
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 6874
    goto :goto_11

    .line 6872
    :catchall_d
    move-exception v1

    .line 6873
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6875
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6882
    move-object v0, p3

    .line 6884
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6885
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 6888
    goto :goto_11

    .line 6886
    :catchall_d
    move-exception v1

    .line 6887
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6889
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6952
    move-object v0, p1

    .line 6954
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshouldOfferSwitchingToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 6957
    goto :goto_15

    .line 6955
    :catchall_11
    move-exception v1

    .line 6956
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6958
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_15
    return-void
.end method

.method public showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6908
    move-object v0, p2

    .line 6910
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 6911
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 6914
    goto :goto_11

    .line 6912
    :catchall_d
    move-exception v1

    .line 6913
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6915
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6940
    move-object v0, p2

    .line 6942
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 6945
    goto :goto_15

    .line 6943
    :catchall_11
    move-exception v1

    .line 6944
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6946
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_15
    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6927
    move-object v0, p1

    .line 6929
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 6932
    goto :goto_15

    .line 6930
    :catchall_11
    move-exception v1

    .line 6931
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6933
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_15
    return-void
.end method

.method public updateSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 7003
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->updateSessionId(I)V

    .line 7004
    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 6920
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateStatusIcon(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 6921
    return-void
.end method
