.class public interface abstract Lcom/android/server/inputmethod/MiuiInputMethodStub;
.super Ljava/lang/Object;
.source "MiuiInputMethodStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/inputmethod/MiuiInputMethodStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MiuiInputMethodStub;

    return-object v0
.end method


# virtual methods
.method public filterMethodLocked(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 41
    .local p1, "methodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    return-object p1
.end method

.method public init(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 21
    return-void
.end method

.method public mayChangeInputMethodLocked(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onSwitchUserLocked(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .line 27
    return-void
.end method

.method public onSystemRunningLocked()V
    .registers 1

    .line 24
    return-void
.end method

.method public removeMethod(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    return-void
.end method

.method public shouldHideImeSwitcherLocked()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method
