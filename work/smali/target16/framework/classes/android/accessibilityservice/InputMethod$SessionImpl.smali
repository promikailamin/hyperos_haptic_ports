.class final Landroid/accessibilityservice/InputMethod$SessionImpl;
.super Ljava/lang/Object;
.source "InputMethod.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionImpl"
.end annotation


# instance fields
.field blacklist mEnabled:Z

.field final synthetic blacklist this$0:Landroid/accessibilityservice/InputMethod;


# direct methods
.method private constructor blacklist <init>(Landroid/accessibilityservice/InputMethod;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accessibilityservice/InputMethod;Landroid/accessibilityservice/InputMethod-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/InputMethod$SessionImpl;-><init>(Landroid/accessibilityservice/InputMethod;)V

    return-void
.end method


# virtual methods
.method public blacklist finishInput()V
    .registers 2

    .line 503
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 504
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-virtual {v0}, Landroid/accessibilityservice/InputMethod;->doFinishInput()V

    .line 506
    :cond_9
    return-void
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 6

    .line 520
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {v0}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {v0}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    move-result-object v0

    .line 521
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_39

    .line 525
    :cond_19
    iget-object p2, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {p2}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmService(Landroid/accessibilityservice/InputMethod;)Landroid/accessibilityservice/AccessibilityService;

    move-result-object p2

    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 526
    iget-object p2, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    new-instance v0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {v1}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;I)V

    invoke-virtual {p2, v0, p1}, Landroid/accessibilityservice/InputMethod;->restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 528
    return-void

    .line 523
    :cond_39
    :goto_39
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 2

    .line 498
    iput-boolean p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    .line 499
    return-void
.end method

.method public blacklist updateSelection(IIIIII)V
    .registers 14

    .line 511
    iget-boolean p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    if-eqz p1, :cond_f

    .line 512
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    move v2, p2

    move v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/accessibilityservice/InputMethod;->onUpdateSelection(IIIIII)V

    .line 515
    :cond_f
    return-void
.end method
