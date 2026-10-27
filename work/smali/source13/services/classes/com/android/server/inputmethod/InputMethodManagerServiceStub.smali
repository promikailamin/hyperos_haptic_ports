.class public interface abstract Lcom/android/server/inputmethod/InputMethodManagerServiceStub;
.super Ljava/lang/Object;
.source "InputMethodManagerServiceStub.java"


# static fields
.field public static final IME_LIST_VIEW_NOT_CHECKED:I = -0x1


# direct methods
.method public static getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public buildImeNotification(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification;
    .registers 4
    .param p1, "imeSwitcherNotification"    # Landroid/app/Notification$Builder;
    .param p2, "context"    # Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public dismissWithoutAnimation(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lmiuix/appcompat/app/AlertDialog;

    .line 109
    return-void
.end method

.method public enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .registers 3
    .param p2, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    return-void
.end method

.method public filterNotCustomziedInputMethodList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 67
    .local p1, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    return-object p1
.end method

.method public generateView(ZLjava/util/List;Lmiuix/appcompat/app/AlertDialog$Builder;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;)V
    .registers 7
    .param p1, "isNotContainsCustomizedInputMethod"    # Z
    .param p3, "builder"    # Lmiuix/appcompat/app/AlertDialog$Builder;
    .param p4, "noCustomziedImeListAdapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p5, "customziedImeListAdapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Lmiuix/appcompat/app/AlertDialog$Builder;",
            "Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;",
            "Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 79
    .local p2, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    return-void
.end method

.method public getMirrorInputState()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public getNoCustomizedCheckedItem()I
    .registers 2

    .line 94
    const/4 v0, -0x1

    return v0
.end method

.method public getNoCustomizedIms()[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public getNoCustomizedSubtypeIds()[I
    .registers 2

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public init(Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 31
    return-void
.end method

.method public init(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodBindingController;Landroid/content/Context;)V
    .registers 5
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;
    .param p4, "context"    # Landroid/content/Context;

    .line 35
    return-void
.end method

.method public initNoCustomizedInputMethodData(Ljava/util/List;Ljava/lang/String;II)V
    .registers 5
    .param p2, "lastInputMethodId"    # Ljava/lang/String;
    .param p3, "lastInputMethodSubtypeId"    # I
    .param p4, "NOT_A_SUBTYPE_ID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 73
    .local p1, "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    return-void
.end method

.method public isCustomizedInputMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodWindowInvisibleByRecentTask(I)Z
    .registers 3
    .param p1, "imeWindowVis"    # I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodWindowInvisibleByScreenOn(I)Z
    .registers 3
    .param p1, "imeWindowVis"    # I

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isPad()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedCustomizedDialog()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAcceptInput(II)Z
    .registers 4
    .param p1, "status"    # I
    .param p2, "displayId"    # I

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onMiuiTransact(ILandroid/os/Parcel;Landroid/os/Parcel;ILcom/android/internal/view/IInputContext;ILandroid/os/Handler;)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .param p5, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p6, "imeWindowVis"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onSwitchIME(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "curInputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "lastInputMethodId"    # Ljava/lang/String;
    .param p5, "inputMethodSettings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p4, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local p6, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    return-void
.end method

.method public removeCustomTitle(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/view/View;)V
    .registers 3
    .param p1, "builder"    # Lmiuix/appcompat/app/AlertDialog$Builder;
    .param p2, "switchingDialogTitleView"    # Landroid/view/View;

    .line 106
    return-void
.end method

.method public sendKeyboardCaps()V
    .registers 1

    .line 51
    return-void
.end method

.method public setDialogImmersive(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lmiuix/appcompat/app/AlertDialog;

    .line 82
    return-void
.end method

.method public setScreenOff(Z)V
    .registers 2
    .param p1, "inputMethodWindowDisplayed"    # Z

    .line 133
    return-void
.end method

.method public setScreenStatus(Z)V
    .registers 2
    .param p1, "screenStatus"    # Z

    .line 135
    return-void
.end method

.method public setWindowGainedbyRecentTask(Z)V
    .registers 2
    .param p1, "inputMethodWindowDisplayed"    # Z

    .line 126
    return-void
.end method

.method public shouldClearShowForcedFlag(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public synergyOperate()Z
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public updateImeAttrs(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "window"    # Landroid/view/Window;

    .line 147
    return-void
.end method

.method public updateItemView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/view/ViewGroup;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeName"    # Ljava/lang/CharSequence;
    .param p3, "subtypeName"    # Ljava/lang/CharSequence;
    .param p4, "position"    # I
    .param p5, "checkedItem"    # I
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .line 86
    return-void
.end method

.method public updateSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 143
    return-void
.end method
