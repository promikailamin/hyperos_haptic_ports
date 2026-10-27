.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field private static final MSG_BIND_INPUT:I = 0xc

.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_CREATE_IME_SESSION:I = 0xa

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6

.field private static final MSG_ON_SYSTEM_ACTIONS_CHANGED:I = 0x9

.field private static final MSG_SET_IME_SESSION_ENABLED:I = 0xb

.field private static final MSG_START_INPUT:I = 0xe

.field private static final MSG_UNBIND_INPUT:I = 0xd


# instance fields
.field private mIsSoftKeyboardCallbackEnabled:Z

.field private final mMagnificationCallbackState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2091
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 2092
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2087
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 2089
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 2093
    return-void
.end method


# virtual methods
.method public bindInputLocked()V
    .registers 2

    .line 2234
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2235
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2236
    return-void
.end method

.method public createImeSessionLocked()V
    .registers 2

    .line 2222
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2223
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2224
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 2097
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2098
    .local v0, "type":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_aa

    .line 2159
    :pswitch_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2150
    :pswitch_20
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 2151
    .local v1, "restarting":Z
    :goto_26
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 2152
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 2154
    .local v3, "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/EditorInfo;

    .line 2155
    .local v4, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v5, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2156
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2157
    goto/16 :goto_a8

    .line 2147
    .end local v1    # "restarting":Z
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v4    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :pswitch_3c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 2148
    goto/16 :goto_a8

    .line 2144
    :pswitch_43
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 2145
    goto :goto_a8

    .line 2138
    :pswitch_49
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    .line 2139
    .local v1, "enabled":Z
    :goto_4f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2141
    .local v2, "session":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v3, v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    .line 2142
    goto :goto_a8

    .line 2135
    .end local v1    # "enabled":Z
    .end local v2    # "session":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    :pswitch_59
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mcreateImeSessionInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 2136
    goto :goto_a8

    .line 2131
    :pswitch_5f
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 2132
    goto :goto_a8

    .line 2127
    :pswitch_65
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v2

    .line 2128
    .local v1, "available":Z
    :goto_6b
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 2129
    .end local v1    # "available":Z
    goto :goto_a8

    .line 2122
    :pswitch_71
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2123
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 2124
    .end local v1    # "displayId":I
    goto :goto_a8

    .line 2117
    :pswitch_79
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2118
    .local v1, "showState":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 2119
    .end local v1    # "showState":I
    goto :goto_a8

    .line 2108
    :pswitch_81
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2109
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 2110
    .local v2, "region":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/MagnificationConfig;

    .line 2111
    .local v3, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2112
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v5, v4, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 2113
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2114
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "region":Landroid/graphics/Region;
    .end local v3    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local v4    # "displayId":I
    goto :goto_a8

    .line 2104
    :pswitch_98
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 2105
    goto :goto_a8

    .line 2100
    :pswitch_9e
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 2101
    nop

    .line 2162
    :goto_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_98
        :pswitch_7
        :pswitch_7
        :pswitch_81
        :pswitch_79
        :pswitch_71
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_49
        :pswitch_43
        :pswitch_3c
        :pswitch_20
    .end packed-switch
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 2192
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2194
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 2216
    nop

    .line 2217
    const/4 v0, 0x0

    .line 2216
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2218
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2219
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2211
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2212
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2213
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 2166
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 2168
    monitor-exit v0

    return-void

    .line 2170
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23

    .line 2172
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2173
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2174
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2175
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2177
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2178
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2179
    return-void

    .line 2170
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4
    .param p1, "showState"    # I

    .line 2198
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    .line 2199
    return-void

    .line 2202
    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2203
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2204
    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 5
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 2228
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2230
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2231
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 2182
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2183
    if-eqz p2, :cond_12

    .line 2184
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 2186
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2188
    :goto_17
    monitor-exit v0

    .line 2189
    return-void

    .line 2188
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2207
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 2208
    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 2246
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2247
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2248
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2249
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {p0, v2, p3, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2250
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2251
    return-void
.end method

.method public unbindInputLocked()V
    .registers 2

    .line 2239
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2240
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2241
    return-void
.end method
