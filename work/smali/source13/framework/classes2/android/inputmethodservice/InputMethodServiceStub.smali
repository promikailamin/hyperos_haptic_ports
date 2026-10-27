.class public interface abstract Landroid/inputmethodservice/InputMethodServiceStub;
.super Ljava/lang/Object;
.source "InputMethodServiceStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/inputmethodservice/InputMethodServiceStub;
    .registers 1

    .line 18
    const-class v0, Landroid/inputmethodservice/InputMethodServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addMiuiBottomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public abstract blacklist afterComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public blacklist isNeedKeepPortrait(ILandroid/content/res/Resources;)Z
    .registers 4
    .param p1, "internalImeOptions"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isSplitIMESupport(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onDestroy(Landroid/content/Context;)V
.end method

.method public abstract blacklist onWindowHidden(Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public abstract blacklist onWindowShown(Landroid/inputmethodservice/InputMethodService;)V
.end method
