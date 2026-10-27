.class public Lcom/android/server/accessibility/SystemActionPerformer;
.super Ljava/lang/Object;
.source "SystemActionPerformer.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

.field public final mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

.field public final mRegisteredSystemActions:Ljava/util/Map;

.field public mScreenshotHelperSupplier:Ljava/util/function/Supplier;

.field public final mSystemActionLock:Ljava/lang/Object;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 124
    iput-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 126
    iput-object p4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 127
    iput-object p5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    .line 128
    iput-object p3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 130
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040125

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 134
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104011c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 138
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104012e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 142
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040129

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 146
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104012d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 150
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104012c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 154
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040126

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 158
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x104012f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x9

    invoke-direct {p2, p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final addLegacySystemActions(Ljava/util/List;)V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x4

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 232
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_48
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x5

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5a
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x6

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_6c
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x8

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 244
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_7f
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x9

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 248
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    return-void
.end method

.method public final expandNotifications()V
    .registers 4

    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 381
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    throw p0
.end method

.method public final expandQuickSettings()V
    .registers 4

    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 390
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 392
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_8
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 208
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 209
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 211
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_3b
    move-exception p0

    goto :goto_42

    .line 215
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->addLegacySystemActions(Ljava/util/List;)V

    .line 216
    monitor-exit v1

    return-object v0

    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_3b

    throw p0
.end method

.method public final lockScreen()Z
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 420
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    const/4 p0, 0x1

    return p0
.end method

.method public final openRecents()Z
    .registers 3

    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    :try_start_4
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1b

    if-nez p0, :cond_13

    .line 408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_13
    :try_start_13
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    .line 408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    throw p0
.end method

.method public performSystemAction(I)Z
    .registers 9

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_6d

    .line 259
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    invoke-interface {v3}, Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;->moveNonProxyTopFocusedDisplayToTopIfNeeded()V

    .line 262
    iget-object v3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_28

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4b

    .line 265
    :try_start_1c
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1c .. :try_end_23} :catch_2b
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    .line 266
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_28
    move-exception p0

    goto/16 :goto_fd

    :catch_2b
    move-exception p0

    .line 268
    :try_start_2c
    const-string p1, "SystemActionPerformer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for global action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {p1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_28

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 275
    :cond_4b
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_28

    const/16 v2, 0x301

    const/16 v3, 0x101

    packed-switch p1, :pswitch_data_104

    .line 345
    :pswitch_53
    :try_start_53
    const-string p0, "SystemActionPerformer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_6d
    move-exception p0

    goto/16 :goto_ff

    :pswitch_70
    const/16 p1, 0x55

    .line 340
    :try_start_72
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_79
    const/16 p1, 0x52

    .line 334
    :try_start_7b
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_82
    const/16 p1, 0x17

    .line 329
    :try_start_84
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_8b
    const/16 p1, 0x16

    .line 325
    :try_start_8d
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_94
    const/16 p1, 0x15

    .line 321
    :try_start_96
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_9d
    const/16 p1, 0x14

    .line 317
    :try_start_9f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_a6
    const/16 p1, 0x13

    .line 313
    :try_start_a8
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 307
    :pswitch_af
    :try_start_af
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_bc

    const/16 p1, 0x4f

    .line 308
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_bc
    .catchall {:try_start_af .. :try_end_bc} :catchall_6d

    .line 349
    :cond_bc
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 305
    :pswitch_c0
    :try_start_c0
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->takeScreenshot()Z

    move-result p0
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 303
    :pswitch_c8
    :try_start_c8
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->lockScreen()Z

    move-result p0
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 299
    :pswitch_d0
    :try_start_d0
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->showGlobalActions()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 295
    :pswitch_d7
    :try_start_d7
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandQuickSettings()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 291
    :pswitch_de
    :try_start_de
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandNotifications()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 289
    :pswitch_e5
    :try_start_e5
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->openRecents()Z

    move-result p0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_ed
    const/4 p1, 0x3

    .line 285
    :try_start_ee
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_f5
    const/4 p1, 0x4

    .line 281
    :try_start_f6
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_6d

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 275
    :goto_fd
    :try_start_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_28

    :try_start_fe
    throw p0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_6d

    .line 349
    :goto_ff
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    throw p0

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_ed
        :pswitch_e5
        :pswitch_de
        :pswitch_d7
        :pswitch_d0
        :pswitch_53
        :pswitch_c8
        :pswitch_c0
        :pswitch_af
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_a6
        :pswitch_9d
        :pswitch_94
        :pswitch_8b
        :pswitch_82
        :pswitch_79
        :pswitch_70
    .end packed-switch
.end method

.method public registerSystemAction(ILandroid/app/RemoteAction;)V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 177
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz p0, :cond_14

    .line 178
    invoke-interface {p0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 176
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final sendDownAndUpKeyEvents(II)V
    .registers 14

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 357
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    move-wide v8, v6

    move-object v3, p0

    move v4, p1

    move v10, p2

    .line 358
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJI)V

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v5, 0x1

    .line 359
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJI)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 362
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw p0
.end method

.method public final sendKeyEventIdentityCleared(IIJJI)V
    .registers 24

    move-object/from16 v0, p0

    .line 368
    iget-object v1, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    .line 370
    invoke-interface {v1}, Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;->getLastNonProxyTopFocusedDisplayId()I

    move-result v14

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    move/from16 v7, p1

    move/from16 v6, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move/from16 v13, p7

    .line 368
    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 371
    iget-object v0, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 373
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public final showGlobalActions()V
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    return-void
.end method

.method public final takeScreenshot()Z
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_b

    .line 426
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/ScreenshotHelper;

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 427
    :goto_13
    new-instance v0, Landroid/os/Handler;

    .line 429
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 427
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterSystemAction(I)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 195
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz p0, :cond_14

    .line 196
    invoke-interface {p0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 194
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
