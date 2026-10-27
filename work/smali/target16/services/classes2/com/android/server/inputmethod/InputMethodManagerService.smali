.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAllowedImesByPolicyForTest:Ljava/util/ArrayList;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public final mClientController:Lcom/android/server/inputmethod/ClientController;

.field public final mConcurrentMultiUserModeEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentImeUserId:I

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field public final mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field public final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field public final mImeTargetWindowMap:Ljava/util/WeakHashMap;

.field public final mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

.field public final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mIoHandler:Landroid/os/Handler;

.field public mIsInteractive:Z

.field public mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field public final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field public final mNonPreemptibleInputMethods:[Ljava/lang/String;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPreventImeStartupUnlessTextEditor:Z

.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field public final mRes:Landroid/content/res/Resources;

.field public final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field public final mSlotIme:Ljava/lang/String;

.field public final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

.field public final mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStylusIds:Landroid/util/IntArray;

.field public mSystemReady:Z

.field public final mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field public mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceMethodMap:Landroid/util/SparseArray;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-KUHmDZeK77YTvYM92_UkCWA0Gk(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getEnabledInputMethodListInternal$5(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1XFj8YBhQc0QdixJMMoB5AEoETY(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V
    .registers 4

    .line 6247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      fallbackInputConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequestedForAccessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      selfReportedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2yaYCGdi-FTFk0U0SqmQylExNO8(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4Aug8LZn_v0QfoKTlp4Q2m8mkOo(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 3

    .line 4998
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ajy1LD49oef-aSSPQjitblYi7ZI(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C2zu8nRYvCA05BpSMD6nwa0r0W4(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$2(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Difd_uRXNtYZm-7bJ0RNXJm3vEQ(Lcom/android/server/inputmethod/ClientState;)V
    .registers 2

    .line 4685
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ho3-o973jA6Wd7FiZZ8wL-_qUh8(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$reportPerceptible$8(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$L51f0sWzvE8AkrdinehPgJR6LlM(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromSystem$12(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$QcH2A_8kWgDhp2Zhqky9uKku87A(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodWindowVisibleHeight$13(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R7oc2soOSNmD81BbQKMqg-hb-Ag(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 2

    .line 5544
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T_-mzFCw4waxIe878V2hXuKWPj0(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/ClientState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$clearClientSessionsLocked$7(ILcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZY6xRY701FQeF_yXqM9EhKFe-QA(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromClient$11(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZjULE-_7NHc0yneI3X842f5CBs(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodListInternal$4(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gUuYIKPPlwlLIwMAwSWOlzzj5eM(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j_4ULUH2-nnEUJ4ACtuIGEg1g0M(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V
    .registers 5

    .line 6267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      unlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasMainConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      isVisibleBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      boundToMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6273
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v1, "        "

    if-eqz v0, :cond_a2

    .line 6274
    const-string v0, "      curEditorInfo:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6275
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_a7

    .line 6277
    :cond_a2
    const-string v0, "      curEditorInfo: null"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6279
    :goto_a7
    const-string v0, "      imeBindingState:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6280
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      enabledSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      inFullscreenMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      imeDrawsNavBar="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6284
    const-string v0, "      switchingController:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6285
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLastEnabledInputMethodsStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      active computer control input connections on display ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mComputerControlInputConnectionMap:Ljava/util/Map;

    .line 6288
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6287
    invoke-interface {p0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rHrm_pyEFeIvEWTNCC2sivzRtvQ(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->discardHandwritingDelegationText()V

    return-void
.end method

.method public static synthetic $r8$lambda$rZiF3TWseKvZa5r35iPs7VLI8kE(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4

    .line 6740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sMRaRYoZUcwwAsuNw8q41Eh_oeI(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 2

    .line 4764
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$so2ZT356qWYzK6-Z5sL85Z4astI(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$onClientRemoved$6(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxslkWFGHE7cAhOqm-CI8ch6FAA(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$dumpAsStringNoCheck$19(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$va20A7s2rlMdMQjbc_2-74Wmj5g(Lcom/android/server/inputmethod/ClientState;)V
    .registers 2

    .line 4695
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdnbWT_jFVNFBqeEbZJuWk12sl0(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$registerImeRequestedChangedListener$3(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ClientController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedWindowPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLineageHardware(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserDataRepository(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/UserDataRepository;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mattachNewAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcreateAccessibilityInputMethodSessions(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetEnabledInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnabledInputMethodSubtypeListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZII)Ljava/util/List;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;III)Ljava/util/List;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monImeSwitchButtonClickLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStylusHandwritingReadyLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateResourceOverlay(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateResourceOverlay(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->publishLocalService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportFullscreenModeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStartInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetStylusHandwritingLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetStylusHandwritingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresolveImeUserIdFromWindowLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeWindowStatusLocked(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchHovering(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchPollingRate(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchPollingRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchSensitivity(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const v0, 0xf423f

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;)V"
        }
    .end annotation

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 426
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 428
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 432
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 504
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    .line 611
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    .line 634
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 637
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 647
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 657
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 661
    new-instance v1, Lcom/android/server/inputmethod/StartInputHistory;

    invoke-direct {v1}, Lcom/android/server/inputmethod/StartInputHistory;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 666
    new-instance v1, Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    invoke-direct {v1}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 6030
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1255
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1256
    :try_start_4f
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    .line 1257
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1260
    invoke-static {p3, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1261
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    .line 1262
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {p1, v3, p4}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->onStart(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;Landroid/os/Handler;)V

    .line 1263
    new-instance p4, Lcom/android/server/inputmethod/ImeTrackerService;

    invoke-direct {p4, v2}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 1265
    new-instance p4, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-direct {p4, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1266
    const-class p4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1267
    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1268
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1269
    const-class v3, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 1270
    new-instance v3, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v3}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 1271
    new-instance v3, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    invoke-direct {v3}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 1272
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const v3, 0x1040a53

    .line 1274
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1276
    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup;->values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1278
    invoke-virtual {p4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p4

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1280
    new-instance p4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1282
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1285
    new-instance v4, Lcom/android/server/inputmethod/UserDataRepository;

    if-eqz p5, :cond_dc

    goto :goto_dd

    :cond_dc
    move-object p5, p4

    .line 1287
    :goto_dd
    invoke-direct {v4, p5, v3}, Lcom/android/server/inputmethod/UserDataRepository;-><init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 1289
    new-instance p4, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p4}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>()V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 1291
    new-instance p4, Lcom/android/server/inputmethod/ClientController;

    invoke-direct {p4, v2}, Lcom/android/server/inputmethod/ClientController;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 1292
    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    invoke-direct {p5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {p4, p5}, Lcom/android/server/inputmethod/ClientController;->addClientControllerCallback(Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;)V

    const p4, 0x1110007

    .line 1294
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const p4, 0x10700af

    .line 1296
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    .line 1298
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1299
    new-instance p4, Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {p5, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-direct {p4, p1, p3, p5, p2}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerDeviceListenerAndCheckStylusSupport()V

    .line 1302
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    invoke-direct {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1303
    monitor-exit v1

    return-void

    :catchall_127
    move-exception p0

    monitor-exit v1
    :try_end_129
    .catchall {:try_start_4f .. :try_end_129} :catchall_127

    throw p0
.end method

.method public static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 3

    const/4 v0, 0x0

    .line 2297
    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result p0

    return p0
.end method

.method public static computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I
    .registers 4

    if-eq p0, p2, :cond_11

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    goto :goto_11

    .line 2327
    :cond_6
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->getDisplayImePolicy(I)I

    move-result p1

    if-nez p1, :cond_d

    return p0

    :cond_d
    const/4 p0, 0x2

    if-ne p1, p0, :cond_11

    return v0

    :cond_11
    :goto_11
    return p2
.end method

.method public static filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;
    .registers 14

    .line 5199
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5200
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    .line 5224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5202
    :goto_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d3

    .line 5203
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5204
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5205
    invoke-static {v4}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v6

    .line 5206
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "InputMethodManagerService"

    if-nez v7, :cond_4f

    .line 5207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": it does not require the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cf

    .line 5213
    :cond_4f
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v8, "Checking %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5216
    :try_start_5a
    new-instance v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5217
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v8, p1, v4, v10}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 5218
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_cf

    .line 5221
    :cond_68
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 5223
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_97

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 5224
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v10, 0x14

    if-ge v5, v10, :cond_8b

    goto :goto_97

    .line 5232
    :cond_8b
    const-string v4, "Found an input method, but ignored due threshold: %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cf

    :catch_95
    move-exception v4

    goto :goto_bb

    .line 5227
    :cond_97
    :goto_97
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5226
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5229
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5230
    const-string v4, "Found an input method %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_ba} :catch_95

    goto :goto_cf

    .line 5236
    :goto_bb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load input method "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 5239
    :cond_d3
    invoke-static {v1}, Lcom/android/server/inputmethod/RawInputMethodMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .line 4214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 3

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_b

    .line 1360
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0

    .line 1361
    :cond_b
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1362
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;
    .registers 8

    .line 4662
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4663
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_27

    aget v4, v1, v3

    .line 4664
    invoke-virtual {p0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 4665
    invoke-virtual {v5}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 4666
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_27
    return-object v0
.end method

.method public static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .registers 3

    .line 6568
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x2

    return p0

    .line 6572
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    .line 6575
    :cond_1c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static hasMultipleSubtypesForSwitcher(ZI)Z
    .registers 16

    .line 2692
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 2693
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2695
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v2, :cond_16

    return v3

    :cond_16
    const/4 v2, 0x0

    if-ge v1, v3, :cond_1a

    return v2

    :cond_1a
    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move-object v5, v4

    :goto_1f
    if-ge v6, v1, :cond_50

    .line 2703
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 2705
    invoke-virtual {p1, v9, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 2706
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_34

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_34
    move v11, v2

    :goto_35
    if-ge v11, v10, :cond_4d

    .line 2711
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2712
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v13

    if-nez v13, :cond_47

    add-int/lit8 v7, v7, 0x1

    move-object v4, v12

    goto :goto_4a

    :cond_47
    add-int/lit8 v8, v8, 0x1

    move-object v5, v12

    :goto_4a
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_50
    if-eqz p0, :cond_56

    if-le v7, v3, :cond_55

    return v3

    :cond_55
    return v2

    :cond_56
    if-gt v7, v3, :cond_88

    if-le v8, v3, :cond_5b

    goto :goto_88

    :cond_5b
    if-ne v7, v3, :cond_87

    if-ne v8, v3, :cond_87

    if-eqz v4, :cond_86

    if-eqz v5, :cond_86

    .line 2728
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    .line 2729
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-nez p0, :cond_7d

    .line 2730
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-eqz p0, :cond_86

    :cond_7d
    const-string p0, "TrySuppressingImeSwitcher"

    .line 2731
    invoke-virtual {v4, p0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_86

    return v2

    :cond_86
    return v3

    :cond_87
    return v2

    :cond_88
    :goto_88
    return v3
.end method

.method public static isFingerDevice(Landroid/view/InputDevice;)Z
    .registers 2

    const/16 v0, 0x1002

    .line 4563
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    return p0
.end method

.method public static isStylusDevice(Landroid/view/InputDevice;)Z
    .registers 2

    const/16 v0, 0x4002

    .line 4558
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_14

    const v0, 0xc002

    .line 4559
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public static parseUserIdFromDumpArgs([Ljava/lang/String;)I
    .registers 3

    .line 6155
    const-string v0, "--user"

    invoke-static {p0, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 6156
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_f

    goto :goto_18

    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 6159
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/16 p0, -0x2710

    return p0
.end method

.method public static queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;
    .registers 7

    .line 5169
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_8

    move-object v0, p0

    goto :goto_11

    .line 5171
    :cond_8
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 5183
    :goto_11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0xc8080

    .line 5185
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 5183
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v1

    .line 5190
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getEnabledInputMethodIdsForFiltering(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 5192
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object p0

    return-object p0
.end method

.method public static shouldEnableConcurrentMultiUserMode(Landroid/content/Context;)Z
    .registers 3

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 327
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 13

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2250
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v6

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v7

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v1

    .line 2256
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getLastBindTime()J

    move-result-wide v0

    .line 2257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    if-gez v0, :cond_41

    .line 2266
    new-instance v4, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v9

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v10

    const/4 v11, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v4

    .line 2273
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x7d00

    .line 2272
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 3296
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 3297
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not accept stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3301
    :cond_20
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_27

    return v1

    .line 3304
    :cond_27
    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    .line 3305
    :try_start_2a
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p2

    .line 3306
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p4}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegationUsingConnectionlessFlow()Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_4a

    .line 3307
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-nez p1, :cond_41

    .line 3309
    monitor-exit p3

    return v1

    :catchall_3f
    move-exception p0

    goto :goto_4f

    .line 3311
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->commitHandwritingDelegationTextIfAvailable()V

    .line 3312
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_4d

    .line 3314
    :cond_4a
    invoke-virtual {p0, p1, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 3316
    :goto_4d
    monitor-exit p3

    return p5

    :goto_4f
    monitor-exit p3
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_3f

    throw p0
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .registers 8

    .line 3279
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 3282
    :try_start_4
    invoke-interface {p6, p0}, Lcom/android/internal/inputmethod/IBooleanListener;->onResult(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p1, v0

    .line 3284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to report result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3285
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 11

    .line 1786
    const-string v0, "client must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1787
    const-string v0, "fallbackInputConnection must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1795
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1796
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    move-result-object v2

    .line 1797
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1798
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/ClientController;->addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)Lcom/android/server/inputmethod/ClientState;

    .line 1800
    monitor-exit p1

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_24

    throw p0
.end method

.method public final addStylusDeviceIdLocked(I)V
    .registers 4

    .line 4525
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-nez v0, :cond_c

    .line 4526
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    goto :goto_14

    .line 4527
    :cond_c
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    goto :goto_4f

    .line 4530
    :cond_14
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Stylus deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 4534
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 4535
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 4536
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 4537
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 9

    .line 4579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4580
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4581
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 4582
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    .line 4583
    const-string v3, "addVirtualStylusIdForTestSession"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 4585
    monitor-exit v6

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_40

    .line 4587
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_1c

    .line 4589
    :try_start_23
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Adding virtual stylus id for session"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4590
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3b

    .line 4592
    :try_start_36
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4594
    monitor-exit v6

    return-void

    :catchall_3b
    move-exception v0

    .line 4592
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4593
    throw v0

    .line 4594
    :goto_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_1c

    throw p0
.end method

.method public applyImeScreenshotVisibility(Landroid/os/IBinder;ZI)V
    .registers 5

    .line 5635
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 5636
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5637
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v0

    if-eqz p2, :cond_10

    .line 5639
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showImeScreenshot(Landroid/os/IBinder;II)V

    return-void

    .line 5641
    :cond_10
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeImeScreenshot(Landroid/os/IBinder;II)V

    return-void
.end method

.method public final attachNewAccessibilityLocked(IZI)V
    .registers 6

    .line 1973
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p3

    .line 1975
    iget-boolean v0, p3, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1976
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 1977
    iput-boolean v1, p3, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    :cond_12
    const/16 v0, 0xb

    if-eq p1, v0, :cond_29

    .line 1986
    iget-object p1, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V

    .line 1988
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p0

    iget-object p1, p3, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object p3, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    xor-int/2addr p2, v1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_29
    return-void
.end method

.method public attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v2, p3

    .line 1898
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v14

    .line 1899
    iget-object v15, v14, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1900
    iget-boolean v1, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    .line 1901
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 1902
    iput-boolean v3, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1905
    :cond_1c
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v10, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 1906
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1907
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v20, p2, 0x1

    move-object/from16 v17, v1

    .line 1909
    new-instance v1, Lcom/android/server/inputmethod/StartInputInfo;

    move v4, v3

    .line 1910
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v3

    move v5, v4

    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    move v6, v5

    .line 1911
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v7, v7, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 1912
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v9, v7, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget-object v11, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v12, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 1916
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v13

    move-object/from16 v23, v15

    move/from16 v7, v20

    move v15, v6

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/inputmethod/StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 1917
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/StartInputHistory;->addEntry(Lcom/android/server/inputmethod/StartInputInfo;)V

    .line 1924
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v2, v1, :cond_81

    .line 1925
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1926
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v5, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1925
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1931
    :cond_81
    invoke-virtual {v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v21

    .line 1932
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 1933
    invoke-virtual {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V

    .line 1934
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v5, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v14, Lcom/android/server/inputmethod/UserData;->mCurImeBackCallbackReceiver:Landroid/os/ResultReceiver;

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startInput(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;ZILandroid/os/ResultReceiver;)V

    .line 1943
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_c1

    if-eqz v10, :cond_c1

    .line 1944
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v6, "Attach new input asks to show input"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1946
    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v3, :cond_b7

    goto :goto_bc

    :cond_b7
    const/4 v3, 0x2

    .line 1947
    invoke-virtual {v0, v15, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 1949
    :goto_bc
    iput-object v5, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 1950
    invoke-virtual {v0, v10, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 1953
    :cond_c1
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v3

    .line 1954
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 1955
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_dc

    .line 1957
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v2

    if-eqz v2, :cond_dc

    move/from16 v31, v15

    goto :goto_de

    :cond_dc
    move/from16 v31, v4

    .line 1958
    :goto_de
    iget-object v2, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 1959
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v27

    .line 1961
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v2

    if-eqz v2, :cond_fc

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 1962
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v4, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-virtual {v2, v4}, Lcom/android/server/inputmethod/HandwritingModeController;->setInkWindowInitializer(Ljava/lang/Runnable;)V

    .line 1964
    :cond_fc
    new-instance v24, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1966
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_108

    invoke-virtual {v1}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v5

    :cond_108
    move-object/from16 v28, v5

    .line 1967
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v30

    const/16 v25, 0x0

    move-object/from16 v26, v0

    move-object/from16 v29, v3

    invoke-direct/range {v24 .. v31}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v24
.end method

.method public final canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z
    .registers 6

    .line 5563
    invoke-virtual {p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 5565
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodUtils;->convertIdToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    goto :goto_c

    :cond_b
    const/4 p4, 0x0

    :goto_c
    const/4 v0, 0x1

    if-eqz p4, :cond_1a

    .line 5567
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1a

    return v0

    .line 5570
    :cond_1a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .registers 9

    .line 4072
    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p5

    .line 4073
    iget-object v0, p5, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4074
    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_49

    .line 4078
    :cond_16
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_53

    .line 4083
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4084
    iget-object p5, p5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p5, p5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p0, p5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z

    move-result p0

    if-nez p0, :cond_49

    .line 4085
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring %s of uid %d : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4089
    :cond_49
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p4, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0

    .line 4080
    :cond_53
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4081
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown client "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .registers 6

    .line 4096
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4097
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4098
    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4099
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4100
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_1e

    return v2

    .line 4103
    :cond_1e
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_26

    return v1

    .line 4106
    :cond_26
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 4107
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4108
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4107
    invoke-static {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    return v2

    :cond_41
    return v1
.end method

.method public final chooseNewDefaultIMELocked(I)Z
    .registers 6

    .line 5155
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5157
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5156
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 5159
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "New default IME was selected: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5160
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 2506
    :goto_2
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 2507
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2509
    :cond_18
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2510
    iput-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    return-void
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .registers 4

    .line 2515
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v0, :cond_12

    .line 2517
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 2518
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    return-void
.end method

.method public clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V
    .registers 3

    .line 2499
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    const/4 p0, 0x0

    .line 2500
    iput-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p0, 0x0

    .line 2501
    iput-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    return-void
.end method

.method public clearClientSessionsLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 6

    .line 2560
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v0

    .line 2561
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 2562
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_41

    .line 2564
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 2574
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 2576
    iget-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    move p1, v2

    .line 2577
    :goto_1f
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_35

    .line 2578
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 2579
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2578
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_35
    const/4 p1, 0x0

    .line 2581
    iput-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2582
    iget-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    const/4 p1, -0x1

    .line 2583
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2585
    :cond_41
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 2586
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 2587
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    return-void
.end method

.method public final computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 2152
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_e

    .line 2153
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2155
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_13

    goto :goto_71

    .line 2159
    :cond_13
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2160
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 2161
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v1

    .line 2162
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v2

    .line 2163
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result v3

    if-eqz v3, :cond_47

    .line 2166
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v4, :cond_39

    .line 2167
    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2169
    :cond_39
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_47

    const/4 v3, 0x0

    .line 2175
    :cond_47
    invoke-virtual {p1, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    const/4 p1, 0x0

    if-nez v3, :cond_63

    if-nez v1, :cond_50

    goto :goto_71

    .line 2180
    :cond_50
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object p0

    .line 2181
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Restoring default device input method: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2183
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    return-object p0

    .line 2187
    :cond_63
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2188
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    :goto_71
    return-object p2

    .line 2190
    :cond_72
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 2191
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2191
    const-string v0, "Disabling IME on virtual device with id %s because its custom input method is not available: %s"

    invoke-static {p2, v0, p0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_8c
    if-nez v1, :cond_9c

    .line 2199
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Storing default device input method %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 2202
    :cond_9c
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 2202
    const-string v0, "Switching current input method from %s to device-specific one %s because the current display %s belongs to device with id %s"

    invoke-static {p1, v0, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public computeImeDisplayIdForVisibleBackgroundUserOnAutomotive(IILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 4

    .line 2315
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p0

    .line 2316
    invoke-static {p1, p3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result p0

    return p0
.end method

.method public final createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5

    .line 1997
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 1999
    :goto_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2000
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2001
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2000
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    return-object p0
.end method

.method public final createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 10

    .line 5983
    const-string/jumbo p0, "packageName must not be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5984
    const-string p0, "contentUri must not be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5985
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 5986
    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 5990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5991
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5992
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_25

    return-object v0

    .line 5998
    :cond_25
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_2c

    .line 5999
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    goto :goto_2d

    :cond_2c
    move-object p0, v0

    .line 6000
    :goto_2d
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 6001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring createInputContentUriTokenLocked mCurEditorInfo.packageName="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " packageName="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6006
    :cond_52
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 6008
    iget p0, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 6010
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 6017
    new-instance v0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    return-object v0

    .line 5987
    :cond_6b
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "contentUri must have content scheme"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 11

    .line 6837
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 6838
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p3, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p3, :cond_e

    .line 6839
    iget p3, p3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    :goto_c
    move v2, p3

    goto :goto_10

    :cond_e
    const/4 p3, -0x1

    goto :goto_c

    .line 6841
    :goto_10
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_18

    .line 6842
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_16
    move-object v1, p0

    goto :goto_30

    .line 6843
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "uid("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    .line 6845
    :goto_30
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p1, :cond_39

    const/4 p0, 0x1

    :goto_37
    move v3, p0

    goto :goto_3b

    :cond_39
    const/4 p0, 0x2

    goto :goto_37

    :goto_3b
    const/4 v4, 0x6

    const/4 v6, 0x0

    move v5, p2

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method public final discardHandwritingDelegationText()V
    .registers 2

    .line 1327
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1328
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->discardHandwritingDelegationText()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 1332
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 6103
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6105
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 13

    .line 6111
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->parseUserIdFromDumpArgs([Ljava/lang/String;)I

    move-result v0

    .line 6112
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6113
    const-string v2, "Input Method Manager Service state:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSystemReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mInteractive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mConcurrentMultiUserModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPreventImeStartupUnlessTextEditor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6119
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 6120
    :try_start_69
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurrentImeUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStylusIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v5, :cond_9a

    .line 6123
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9c

    :catchall_96
    move-exception v0

    move-object p0, v0

    goto/16 :goto_110

    :cond_9a
    const-string v5, ""

    :goto_9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6122
    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6124
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_69 .. :try_end_a7} :catchall_96

    .line 6126
    const-string v2, "  mMenuController:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6127
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    const-string v4, "    "

    invoke-virtual {v2, v1, v4}, Lcom/android/server/inputmethod/InputMethodMenuController;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6128
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpClientController(Landroid/util/Printer;)V

    .line 6129
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpUserRepository(Landroid/util/Printer;)V

    .line 6132
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 6133
    :try_start_bc
    const-string v2, "  mStartInputHistory:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6134
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    const-string v5, "    "

    invoke-virtual {v2, p2, v5}, Lcom/android/server/inputmethod/StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6136
    const-string v2, "  mSoftInputShowHideHistory:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6137
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    const-string v5, "    "

    invoke-virtual {v2, p2, v5}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6138
    monitor-exit v4
    :try_end_d5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_10c

    .line 6140
    const-string v2, "  mImeTrackerService#History:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6141
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6143
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const/16 v2, -0x2710

    if-eqz v1, :cond_f9

    if-ne v0, v2, :cond_f9

    .line 6144
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    return-void

    :cond_f9
    move v4, v2

    move-object v2, p0

    move p0, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    if-eq v0, p0, :cond_103

    goto :goto_104

    :cond_103
    move v0, v3

    .line 6148
    :goto_104
    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 6149
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :catchall_10c
    move-exception v0

    move-object p0, v0

    .line 6138
    :try_start_10e
    monitor-exit v4
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10c

    throw p0

    .line 6124
    :goto_110
    :try_start_110
    monitor-exit v2
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_96

    throw p0
.end method

.method public final dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 15

    .line 6166
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  UserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6170
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6171
    :try_start_1e
    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6172
    iget-object v3, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 6173
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 6174
    const-string v5, "    mBindingController:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6175
    const-string v5, "      "

    invoke-virtual {v2, p3, v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mCurClient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mFocusedWindowPerceptible="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6178
    const-string p0, "    mImeBindingState:"

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6179
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    const-string v2, "      "

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBoundToMethod="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEnabledSession="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6182
    const-string p0, "    mVisibilityStateComputer:"

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6183
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const-string v2, "      "

    invoke-virtual {p0, p3, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mInFullscreenMode="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6186
    iget p0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 6187
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object p0

    .line 6188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 6189
    const-string v5, "    Input Methods:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_c8
    if-ge v5, v2, :cond_f4

    .line 6191
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 6192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      InputMethod #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6193
    const-string v7, "        "

    invoke-virtual {v6, v0, v7}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    :catchall_f1
    move-exception p0

    goto/16 :goto_19c

    .line 6195
    :cond_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_1e .. :try_end_f5} :catchall_f1

    if-eqz p5, :cond_f9

    goto/16 :goto_199

    .line 6202
    :cond_f9
    const-string p0, ""

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_123

    .line 6204
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 6206
    :try_start_103
    iget-object p0, v3, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_10c} :catch_10d
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_10c} :catch_10d

    goto :goto_128

    :catch_10d
    move-exception p0

    .line 6208
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_128

    .line 6211
    :cond_123
    const-string p0, "No input method client."

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6213
    :goto_128
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    .line 6214
    :try_start_12b
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p1, :cond_16b

    if-eq v3, p1, :cond_16b

    .line 6216
    const-string p5, ""

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6217
    const-string p5, "Warning: Current input method client doesn\'t match the last focused window."

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6219
    const-string p5, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6220
    const-string p5, ""

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6221
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V
    :try_end_14a
    .catchall {:try_start_12b .. :try_end_14a} :catchall_154

    .line 6223
    :try_start_14a
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_153} :catch_156
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_153} :catch_156
    .catchall {:try_start_14a .. :try_end_153} :catchall_154

    goto :goto_16b

    :catchall_154
    move-exception p1

    goto :goto_19a

    :catch_156
    move-exception p1

    .line 6225
    :try_start_157
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client in focused window: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6228
    :cond_16b
    :goto_16b
    monitor-exit p0
    :try_end_16c
    .catchall {:try_start_157 .. :try_end_16c} :catchall_154

    .line 6230
    const-string p0, ""

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_194

    .line 6232
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 6234
    :try_start_176
    invoke-virtual {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_17d} :catch_17e
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_17d} :catch_17e

    goto :goto_199

    :catch_17e
    move-exception p0

    .line 6236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to dump input method service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_199

    .line 6239
    :cond_194
    const-string p0, "No input method service."

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_199
    return-void

    .line 6228
    :goto_19a
    :try_start_19a
    monitor-exit p0
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_154

    throw p1

    .line 6195
    :goto_19c
    :try_start_19c
    monitor-exit v1
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_f1

    throw p0
.end method

.method public final dumpClientController(Landroid/util/Printer;)V
    .registers 3

    .line 6244
    const-string v0, "  mClientController:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6246
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;-><init>(Landroid/util/Printer;)V

    .line 6258
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 6259
    :try_start_d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6260
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 4701
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4702
    :try_start_3
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 4703
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4704
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4705
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4706
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4707
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000001L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4708
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v6

    const-wide v7, 0x10500000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4709
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4710
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v6, p1, v7}, Lcom/android/server/inputmethod/ImeBindingState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 4711
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4712
    invoke-virtual {v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getLastImeTargetWindow()Landroid/os/IBinder;

    move-result-object v7

    .line 4711
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000005L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4713
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000006L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4715
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v6, :cond_70

    const-wide v7, 0x10b00000007L

    .line 4716
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_70

    :catchall_6d
    move-exception p0

    goto/16 :goto_100

    .line 4718
    :cond_70
    :goto_70
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000008L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4719
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4720
    iget-boolean p2, v1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    const-wide v6, 0x1080000000dL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4721
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide v6, 0x1090000000eL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4722
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p2

    const-wide v6, 0x1050000000fL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4723
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-wide v6, 0x10800000010L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4724
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result p2

    const-wide v6, 0x10800000012L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4725
    iget-boolean p2, v1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const-wide v6, 0x10800000013L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4726
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const-wide v6, 0x10800000014L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4727
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result p2

    const-wide v6, 0x10500000015L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4728
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result p2

    const-wide v1, 0x10500000016L

    invoke-virtual {p1, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4729
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const-wide v1, 0x10800000019L

    invoke-virtual {p1, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4730
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const-wide p2, 0x1080000001aL

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4731
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4732
    monitor-exit v0

    return-void

    :goto_100
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_3 .. :try_end_101} :catchall_6d

    throw p0
.end method

.method public final dumpUserRepository(Landroid/util/Printer;)V
    .registers 3

    .line 6264
    const-string v0, "  mUserDataRepository:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6266
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;-><init>(Landroid/util/Printer;)V

    .line 6290
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 6291
    :try_start_d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    .line 6292
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final enforceDevicePolicyLocked(ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/view/inputmethod/EditorInfo;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2547
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz p0, :cond_15

    .line 2549
    :try_start_6
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    .line 2551
    const-string v0, "InputMethodManagerService"

    const-string v1, "Session failed to close due to remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 p0, 0x0

    .line 2553
    iput-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    :cond_15
    return-void
.end method

.method public final finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6

    if-eqz p1, :cond_2c

    .line 2525
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2527
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishSession()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_21

    :catch_b
    move-exception v0

    .line 2529
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2530
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    .line 2531
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    const/4 v3, 0x0

    .line 2532
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2535
    :goto_21
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2537
    :cond_23
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz p0, :cond_2c

    .line 2538
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 2539
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    :cond_2c
    return-void
.end method

.method public getClientStateLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Lcom/android/server/inputmethod/ClientState;
    .registers 2

    .line 1848
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p0

    return-object p0
.end method

.method public getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 2

    .line 628
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .registers 5

    .line 1564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1565
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :cond_e
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 1571
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1572
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    .line 1573
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_27

    .line 1574
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0

    :catchall_27
    move-exception p0

    .line 1573
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 5

    .line 5528
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 5529
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5532
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5533
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 5535
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 5536
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 5

    .line 1603
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1604
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1608
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0

    .line 1610
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1614
    :try_start_23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    .line 1613
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    .line 1616
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    throw p0
.end method

.method public final getEnabledInputMethodListInternal(II)Ljava/util/List;
    .registers 6

    .line 1715
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1716
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1718
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .registers 5

    .line 1645
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1646
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1650
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1652
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1655
    :try_start_21
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 1657
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    throw p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .registers 7

    .line 1736
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_e

    .line 1737
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1745
    :try_start_16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    .line 1744
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 1748
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1749
    throw p0
.end method

.method public final getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;
    .registers 7

    .line 1754
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_11

    .line 1757
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1759
    :cond_11
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 1760
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1762
    :cond_1e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .registers 1

    .line 6824
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    return-object p0
.end method

.method public getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .registers 2

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 6

    .line 1582
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1583
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1587
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0

    .line 1589
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1592
    :try_start_23
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    .line 1595
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw p0
.end method

.method public final getInputMethodListInternal(III)Ljava/util/List;
    .registers 7

    .line 1700
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1701
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1702
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1703
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1701
    invoke-virtual {v1, v2, p2, v0}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p2

    .line 1704
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1708
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .registers 6

    .line 1625
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1626
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1630
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1632
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1635
    :try_start_21
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 1637
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw p0
.end method

.method public final getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I
    .registers 7

    .line 2641
    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2642
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2645
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    .line 2646
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_f

    goto :goto_10

    :cond_f
    move v1, v4

    .line 2647
    :goto_10
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->hasNavigationBar(I)Z

    move-result v1

    .line 2649
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_20

    if-eqz v1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    move p1, v4

    :goto_21
    const/4 v1, 0x3

    .line 2650
    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v4, 0x2

    :cond_29
    or-int p0, p1, v4

    return p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .registers 5

    .line 4447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4448
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4449
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4

    .line 4344
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 4345
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4348
    :cond_e
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    .line 4349
    :try_start_11
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    .line 4350
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final getProfileIds(I)[I
    .registers 4

    .line 4063
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public getUserData(I)Lcom/android/server/inputmethod/UserData;
    .registers 2

    .line 596
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .line 4941
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x40b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1a3

    const/16 v1, 0x442

    if-eq v0, v1, :cond_16c

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_fc

    const/16 v1, 0x456

    if-eq v0, v1, :cond_dd

    const/16 v1, 0x460

    if-eq v0, v1, :cond_ca

    const/16 v1, 0x46a

    if-eq v0, v1, :cond_af

    const/16 v1, 0xbd6

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x1392

    if-eq v0, v1, :cond_95

    const/16 v1, 0x1b58

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x424

    if-eq v0, v1, :cond_58

    const/16 v1, 0x425

    if-eq v0, v1, :cond_31

    return v2

    .line 4971
    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 4972
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4973
    :try_start_38
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 4974
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_52

    .line 4976
    :try_start_40
    iget-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne p1, v1, :cond_54

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p0, :cond_54

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_54

    .line 4979
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_51} :catch_54
    .catchall {:try_start_40 .. :try_end_51} :catchall_52

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_56

    .line 4983
    :catch_54
    :cond_54
    :goto_54
    :try_start_54
    monitor-exit v0

    return v3

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_52

    throw p0

    .line 4955
    :cond_58
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4957
    :try_start_5b
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 4958
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_77

    .line 4960
    :try_start_61
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_79

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v2, :cond_79

    .line 4962
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p0

    if-nez p0, :cond_79

    .line 4963
    iget-object p0, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_76} :catch_79
    .catchall {:try_start_61 .. :try_end_76} :catchall_77

    goto :goto_79

    :catchall_77
    move-exception p0

    goto :goto_7b

    .line 4967
    :catch_79
    :cond_79
    :goto_79
    :try_start_79
    monitor-exit v0

    return v3

    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_77

    throw p0

    .line 5004
    :cond_7d
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_8b

    .line 5005
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 5007
    :cond_8b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_94

    .line 5008
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    :cond_94
    return v3

    .line 4995
    :cond_95
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4996
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 4997
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return v3

    .line 4990
    :cond_a6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_ab

    move v2, v3

    :cond_ab
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    return v3

    .line 5030
    :cond_af
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5031
    :try_start_b2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5032
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 5033
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 5034
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5035
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5037
    monitor-exit v0

    return v3

    :catchall_c7
    move-exception p0

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_c7

    throw p0

    .line 5077
    :cond_ca
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 5078
    :try_start_cd
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_d9

    .line 5080
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    goto :goto_d9

    :catchall_d7
    move-exception p0

    goto :goto_db

    .line 5082
    :cond_d9
    :goto_d9
    monitor-exit p1

    return v3

    :goto_db
    monitor-exit p1
    :try_end_dc
    .catchall {:try_start_cd .. :try_end_dc} :catchall_d7

    throw p0

    .line 5069
    :cond_dd
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5070
    :try_start_e0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 5071
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_f8

    .line 5072
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->finishStylusHandwriting()V

    goto :goto_f8

    :catchall_f6
    move-exception p0

    goto :goto_fa

    .line 5074
    :cond_f8
    :goto_f8
    monitor-exit v0

    return v3

    :goto_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_e0 .. :try_end_fb} :catchall_f6

    throw p0

    .line 5040
    :cond_fc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    .line 5041
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5042
    :try_start_103
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetuserData(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 5043
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5044
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v5

    if-eqz v5, :cond_168

    .line 5045
    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-nez v6, :cond_116

    goto :goto_168

    .line 5048
    :cond_116
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetrequestId(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetpid(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v0

    .line 5052
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5049
    invoke-virtual {v6, v7, v0, v4, v2}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v0

    if-nez v0, :cond_14a

    .line 5055
    const-string p0, "InputMethodManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start handwriting session for requestId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    monitor-exit v1

    return v3

    :catchall_148
    move-exception p0

    goto :goto_16a

    .line 5060
    :cond_14a
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRequestId()I

    move-result p1

    .line 5061
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getHandwritingChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRecordedEvents()Ljava/util/List;

    move-result-object v0

    .line 5060
    invoke-virtual {v5, p1, v2, v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 5063
    const-string p1, "InputMethodManagerService"

    const-string v0, "Resetting handwriting mode."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5066
    :cond_166
    monitor-exit v1

    return v3

    .line 5046
    :cond_168
    :goto_168
    monitor-exit v1

    return v3

    .line 5066
    :goto_16a
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_103 .. :try_end_16b} :catchall_148

    throw p0

    .line 5014
    :cond_16c
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5015
    :try_start_16f
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5016
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 5017
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 5018
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_19a

    .line 5019
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 5020
    const-string v1, "InputMethodManagerService"

    const-string v2, "Initializing Handwriting Spy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 5022
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p1

    .line 5021
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_19f

    :catchall_198
    move-exception p0

    goto :goto_1a1

    .line 5024
    :cond_19a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 5026
    :goto_19f
    monitor-exit v0

    return v3

    :goto_1a1
    monitor-exit v0
    :try_end_1a2
    .catchall {:try_start_16f .. :try_end_1a2} :catchall_198

    throw p0

    .line 4943
    :cond_1a3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4944
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4945
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4946
    :try_start_1aa
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p1

    .line 4947
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 4948
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 4950
    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 4951
    monitor-exit v1

    return v3

    :catchall_1bb
    move-exception p0

    monitor-exit v1
    :try_end_1bd
    .catchall {:try_start_1aa .. :try_end_1bd} :catchall_1bb

    throw p0
.end method

.method public final handleSetInteractive(Z)V
    .registers 8

    .line 5099
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5101
    :try_start_3
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5102
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 5103
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5104
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_16

    .line 5106
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v4

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_60

    :cond_16
    const/4 v4, 0x0

    .line 5107
    :goto_17
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v5

    .line 5105
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 5109
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-nez v4, :cond_24

    .line 5110
    monitor-exit v0

    return-void

    .line 5112
    :cond_24
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 5113
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v3

    .line 5112
    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldUseSetInteractiveProtocol(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 5116
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 5117
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->shouldShowImeScreenshot(Landroid/os/IBinder;Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 5120
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5120
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeScreenshotVisibility(Landroid/os/IBinder;ZI)V

    .line 5124
    :cond_47
    iget-object p1, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v1, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p1, p0, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractive(ZZ)V

    goto :goto_5e

    .line 5128
    :cond_53
    iget-object p1, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v1, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p1, p0, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 5130
    :goto_5e
    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_14

    throw p0
.end method

.method public final handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 15

    .line 6532
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 6533
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 6535
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6536
    :try_start_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_46

    .line 6537
    :try_start_10
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_55

    .line 6538
    :try_start_13
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6539
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 6538
    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6540
    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_21
    if-ge v10, v8, :cond_3f

    aget v2, v0, v10

    .line 6541
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_2e

    move-object v1, p0

    move v4, p2

    goto :goto_37

    :cond_2e
    move-object v1, p0

    move v4, p2

    .line 6544
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr v11, p0

    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object p0, v1

    move p2, v4

    goto :goto_21

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_53

    .line 6547
    :cond_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3c

    if-eqz v6, :cond_49

    .line 6548
    :try_start_42
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_63

    :cond_49
    :goto_49
    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_4e
    if-eqz v11, :cond_52

    const/4 p0, -0x1

    return p0

    :cond_52
    return v9

    .line 6547
    :goto_53
    :try_start_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_3c

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    move-object p0, v0

    if-eqz v6, :cond_62

    .line 6535
    :try_start_59
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception v0

    move-object p1, v0

    :try_start_5f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_46

    :goto_63
    if-eqz v5, :cond_6e

    :try_start_65
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0
.end method

.method public final handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .registers 7

    .line 6596
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    if-eqz p3, :cond_51

    .line 6597
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 6598
    const-string p0, "Unknown input method "

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6599
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " cannot be enabled for user #"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\"ime enable "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" for user #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed due to its unrecognized IME ID."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6607
    :cond_51
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result p0

    .line 6608
    const-string p5, "Input method "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6609
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6610
    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne p3, p0, :cond_67

    .line 6611
    const-string p0, "already "

    goto :goto_6a

    :cond_67
    const-string/jumbo p0, "now "

    :goto_6a
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_72

    .line 6612
    const-string p0, "enabled"

    goto :goto_74

    :cond_72
    const-string p0, "disabled"

    :goto_74
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6613
    const-string p0, " for user #"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6614
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 13

    const/4 v0, 0x0

    const/4 v1, -0x2

    move v2, v0

    move v3, v2

    .line 6474
    :goto_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_8a

    .line 6492
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 6493
    :try_start_e
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6494
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 6493
    invoke-static {v1, v4, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 6495
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_87

    .line 6496
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 6497
    :try_start_1d
    array-length v4, v1

    move v6, v0

    :goto_1f
    if-ge v6, v4, :cond_76

    aget v7, v1, v6

    const/16 v8, 0x7d0

    if-eqz v2, :cond_2e

    .line 6499
    invoke-virtual {p0, v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v8

    goto :goto_32

    :catchall_2c
    move-exception p0

    goto :goto_7c

    .line 6501
    :cond_2e
    invoke-virtual {p0, v7, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v8

    .line 6502
    :goto_32
    array-length v9, v1

    if-le v9, v5, :cond_42

    .line 6503
    const-string v9, "User #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6504
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 6505
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6507
    :cond_42
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_5c

    .line 6509
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 6511
    :cond_5c
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6512
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6513
    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v9, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/io/PrintWriter;)V

    const-string v10, "  "

    invoke-virtual {v8, v9, v10}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_1d .. :try_end_72} :catchall_2c

    goto :goto_46

    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_76
    if-eqz p1, :cond_7b

    .line 6517
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_7b
    return v0

    :goto_7c
    if-eqz p1, :cond_86

    .line 6496
    :try_start_7e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw p0

    :catchall_87
    move-exception p0

    .line 6495
    :try_start_88
    monitor-exit v6
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    .line 6478
    :cond_8a
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_d6

    goto :goto_c1

    :sswitch_96
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    goto :goto_c1

    :cond_9f
    const/4 v7, 0x3

    goto :goto_c1

    :sswitch_a1
    const-string v6, "-u"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    goto :goto_c1

    :cond_aa
    const/4 v7, 0x2

    goto :goto_c1

    :sswitch_ac
    const-string v6, "-s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    goto :goto_c1

    :cond_b5
    move v7, v5

    goto :goto_c1

    :sswitch_b7
    const-string v6, "-a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c0

    goto :goto_c1

    :cond_c0
    move v7, v0

    :goto_c1
    packed-switch v7, :pswitch_data_e8

    goto/16 :goto_4

    .line 6487
    :pswitch_c6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_d0
    move v3, v5

    goto/16 :goto_4

    :pswitch_d3
    move v2, v5

    goto/16 :goto_4

    :sswitch_data_d6
    .sparse-switch
        0x5d4 -> :sswitch_b7
        0x5e6 -> :sswitch_ac
        0x5e8 -> :sswitch_a1
        0x4f7b216b -> :sswitch_96
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d0
        :pswitch_c6
        :pswitch_c6
    .end packed-switch
.end method

.method public final handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 15

    .line 6693
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 6694
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6695
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f1

    .line 6696
    :try_start_b
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6697
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 6696
    invoke-static {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6698
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_eb

    aget v6, v0, v5

    .line 6699
    invoke-virtual {p0, v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v7

    if-nez v7, :cond_24

    goto/16 :goto_e7

    .line 6703
    :cond_24
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_3b

    .line 6704
    const-string v8, "android.os.usertype.system.HEADLESS"

    iget-object v7, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto/16 :goto_e7

    :catchall_38
    move-exception p0

    goto/16 :goto_f5

    .line 6709
    :cond_3b
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v7

    .line 6710
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    const/16 v9, 0xf

    .line 6711
    invoke-virtual {p0, v4, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v9

    .line 6713
    invoke-virtual {p0, v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 6714
    iget-object v8, v8, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6715
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 6718
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v8

    .line 6719
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6720
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v10

    .line 6719
    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    .line 6721
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6722
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v4

    :goto_67
    if-ge v11, v10, :cond_79

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 6723
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    goto :goto_67

    .line 6725
    :cond_79
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v4

    :goto_7e
    const/4 v11, 0x1

    if-ge v10, v8, :cond_91

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v10, v10, 0x1

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 6726
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v11, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    goto :goto_7e

    .line 6729
    :cond_91
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v8

    if-nez v8, :cond_9b

    const/4 v8, 0x0

    .line 6730
    invoke-virtual {p0, v8, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    .line 6732
    :cond_9b
    invoke-virtual {p0, v11, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 6733
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6734
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 6735
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v9

    .line 6733
    invoke-static {v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 6736
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    .line 6737
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v7

    .line 6738
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset current and enabled IMEs for user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Selected: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6740
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v7, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_e7
    .catchall {:try_start_b .. :try_end_e7} :catchall_38

    :goto_e7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    :cond_eb
    if-eqz v2, :cond_f3

    .line 6742
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_f3

    :catchall_f1
    move-exception p0

    goto :goto_100

    .line 6743
    :cond_f3
    :goto_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_ed .. :try_end_f4} :catchall_f1

    return v4

    :goto_f5
    if-eqz v2, :cond_ff

    .line 6695
    :try_start_f7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_ff

    :catchall_fb
    move-exception p1

    :try_start_fc
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ff
    :goto_ff
    throw p0

    .line 6743
    :goto_100
    monitor-exit v1
    :try_end_101
    .catchall {:try_start_fc .. :try_end_101} :catchall_f1

    throw p0
.end method

.method public final handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 19

    move-object/from16 v0, p0

    .line 6627
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 6628
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 6630
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 6631
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_df

    .line 6632
    :try_start_12
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_ed

    .line 6633
    :try_start_15
    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6634
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 6633
    invoke-static {v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 6635
    array-length v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_22
    const/4 v10, -0x1

    if-ge v8, v6, :cond_d6

    aget v11, v1, v8

    move-object/from16 v12, p1

    .line 6636
    invoke-virtual {v0, v11, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v13

    if-nez v13, :cond_33

    const/16 v16, 0x0

    goto/16 :goto_d0

    .line 6639
    :cond_33
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result v10

    xor-int/lit8 v13, v10, 0x1

    if-nez v10, :cond_74

    .line 6642
    const-string v10, "Unknown input method "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6643
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6644
    const-string v10, " cannot be selected for user #"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6645
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6647
    const-string v10, "InputMethodManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"ime set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\" for user #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " failed due to its unrecognized IME ID."

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    const/16 v16, 0x0

    goto :goto_cf

    :catchall_71
    move-exception v0

    goto/16 :goto_eb

    .line 6650
    :cond_74
    const-string v10, "Input method "

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6651
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6652
    const-string v10, " selected for user #"

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6653
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6657
    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v10

    .line 6658
    invoke-virtual {v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v11

    .line 6659
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v11

    if-nez v11, :cond_97

    .line 6662
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v14

    goto :goto_9b

    .line 6664
    :cond_97
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object v14

    .line 6666
    :goto_9b
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6e

    .line 6667
    const-string v15, "InputMethodManagerService"

    const/16 v16, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEFAULT_INPUT_METHOD="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not updated. Fixing it up to "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " See b/354782333."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_cc

    .line 6671
    invoke-virtual {v10, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    goto :goto_cf

    .line 6673
    :cond_cc
    invoke-virtual {v10, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :goto_cf
    or-int/2addr v9, v13

    :goto_d0
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_22

    :cond_d6
    const/16 v16, 0x0

    .line 6679
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_15 .. :try_end_d9} :catchall_71

    if-eqz v4, :cond_e2

    .line 6680
    :try_start_db
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e2

    :catchall_df
    move-exception v0

    move-object v1, v0

    goto :goto_fa

    :cond_e2
    :goto_e2
    if-eqz v3, :cond_e7

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_e7
    if-eqz v9, :cond_ea

    return v10

    :cond_ea
    return v16

    .line 6679
    :goto_eb
    :try_start_eb
    monitor-exit v5
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_71

    :try_start_ec
    throw v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_f9

    .line 6630
    :try_start_f1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception v0

    :try_start_f6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f9
    :goto_f9
    throw v1
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_df

    :goto_fa
    if-eqz v3, :cond_104

    :try_start_fc
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_100

    goto :goto_104

    :catchall_100
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_104
    :goto_104
    throw v1
.end method

.method public final handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I
    .registers 6

    .line 6769
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 6770
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 6771
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x174ab7ac

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5f

    const v2, 0x360802

    if-eq v1, v2, :cond_30

    const v2, 0x68ac462

    if-eq v1, v2, :cond_1d

    goto :goto_75

    :cond_1d
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 6773
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    goto :goto_40

    :catchall_2e
    move-exception p0

    goto :goto_9d

    .line 6771
    :cond_30
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 6776
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_2e

    :goto_40
    if-eqz p1, :cond_45

    .line 6790
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 6791
    :cond_45
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p1

    .line 6792
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6794
    :try_start_50
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6802
    monitor-exit v0

    return v3

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5c

    throw p0

    .line 6771
    :cond_5f
    :try_start_5f
    const-string/jumbo p0, "save-for-bugreport"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 6779
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_2e

    if-eqz p1, :cond_74

    .line 6790
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_74
    return v3

    .line 6783
    :cond_75
    :goto_75
    :try_start_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6784
    const-string p0, "Input method trace options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6785
    const-string p0, "  start: Start tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6786
    const-string p0, "  stop: Stop tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_75 .. :try_end_98} :catchall_2e

    .line 6790
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p0, -0x1

    return p0

    :goto_9d
    if-eqz p1, :cond_a7

    .line 6770
    :try_start_9f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    throw p0
.end method

.method public final hasSupportedStylusLocked()Z
    .registers 1

    .line 4568
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 12

    .line 3092
    const-string v0, "IMMS.hideCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3093
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#hideSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3095
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3096
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 3097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_34

    .line 3099
    :try_start_1d
    sget-object v6, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v7, "Client requesting input be hidden"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x4

    .line 3100
    invoke-virtual {p0, p1, p2, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_36

    .line 3103
    :try_start_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3104
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    goto :goto_3e

    :catchall_36
    move-exception p0

    .line 3103
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3104
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3105
    throw p0

    .line 3106
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_34

    throw p0
.end method

.method public final hideCurrentInputLocked(Landroid/os/IBinder;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 3491
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3492
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)Z

    move-result p0

    return p0
.end method

.method public final hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)Z
    .registers 11

    .line 3499
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p4

    .line 3500
    iget-object v0, p4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3501
    iget-object v1, p4, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3511
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 3513
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1f

    .line 3514
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v3

    .line 3516
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p1, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    const/16 v2, 0xa

    if-eqz v4, :cond_31

    .line 3522
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3523
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILcom/android/server/inputmethod/UserData;)V

    goto :goto_38

    .line 3525
    :cond_31
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3527
    :goto_38
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodNotVisible()V

    .line 3528
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 3530
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 p2, 0x8

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    .line 3532
    iput-object p0, p4, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v4
.end method

.method public final hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .registers 5

    .line 4808
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4810
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public hideSoftInputFromServerForTest()V
    .registers 5

    .line 3479
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3480
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3481
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    .line 3482
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 3483
    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;II)Z

    .line 3485
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final hideStatusBarIconLocked(I)V
    .registers 3

    .line 2630
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, v0, :cond_9

    goto :goto_13

    .line 2633
    :cond_9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_13

    .line 2634
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method public initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 7

    .line 2339
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2340
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2339
    const-string v2, "Sending attach of token: %s for display: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2341
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result p3

    .line 2342
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p3

    .line 2343
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    .line 2345
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    .line 2343
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;I)V

    return-void
.end method

.method public final isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z
    .registers 5

    .line 3581
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v0, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v1, p2, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget p2, p2, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isImeTraceEnabled()Z
    .registers 1

    .line 4676
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 1

    .line 4162
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final isShowRequestedForCurrentWindow(I)Z
    .registers 2

    .line 1887
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 1888
    iget-object p1, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1889
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .registers 7

    .line 1664
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1665
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1670
    :try_start_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 1671
    monitor-exit v0

    return v2

    :catchall_1c
    move-exception p0

    goto :goto_5b

    .line 1675
    :cond_1e
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_38

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_36

    if-eqz p2, :cond_35

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_35
    move v2, v3

    :cond_36
    monitor-exit v0

    return v2

    .line 1681
    :cond_38
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p0

    .line 1682
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 1684
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_59

    if-eqz p2, :cond_58

    .line 1685
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_59

    :cond_58
    move v2, v3

    :cond_59
    monitor-exit v0

    return v2

    .line 1686
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_1c

    throw p0
.end method

.method public final isStylusHandwritingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 1692
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    .line 1693
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "stylus_handwriting_enabled"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$clearClientSessionsLocked$7(ILcom/android/server/inputmethod/ClientState;)V
    .registers 4

    .line 2566
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_e

    iget v0, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 2568
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2570
    :cond_e
    :goto_e
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2571
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public final synthetic lambda$dumpAsStringNoCheck$19(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .registers 7

    move-object v0, p2

    move-object p2, p1

    move-object p1, p5

    move p5, p4

    move-object p4, p3

    move-object p3, v0

    .line 6145
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$getEnabledInputMethodListInternal$5(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 5

    .line 1719
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$getInputMethodListInternal$4(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 5

    .line 1709
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$getInputMethodWindowVisibleHeight$13(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .registers 12

    .line 4451
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4452
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v7

    .line 4453
    const-string v5, "getInputMethodWindowVisibleHeight"

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    .line 4455
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_31

    .line 4457
    :cond_1d
    invoke-virtual {v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 4460
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p0

    .line 4461
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_1a

    .line 4462
    iget-object p1, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4461
    :goto_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1a

    throw p0
.end method

.method public final synthetic lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .registers 3

    .line 1280
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    return-object v0
.end method

.method public final synthetic lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .registers 3

    .line 1283
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-object v0
.end method

.method public final synthetic lambda$onClientRemoved$6(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 1809
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public final synthetic lambda$registerImeRequestedChangedListener$3(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    if-eqz p2, :cond_6

    .line 1553
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 1555
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public final synthetic lambda$reportPerceptible$8(Landroid/os/IBinder;Z)V
    .registers 7

    .line 3354
    const-string/jumbo v0, "windowToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3355
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3356
    :try_start_9
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 3357
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 3358
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 3359
    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v3, p1, :cond_38

    if-eqz v1, :cond_2a

    .line 3360
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_2a

    goto :goto_38

    :catchall_28
    move-exception p0

    goto :goto_3a

    .line 3363
    :cond_2a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 3365
    monitor-exit v0

    return-void

    .line 3361
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    .line 3365
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_28

    throw p0
.end method

.method public final synthetic lambda$showInputMethodPickerFromClient$11(III)V
    .registers 5

    .line 4135
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4136
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4137
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$showInputMethodPickerFromSystem$12(II)V
    .registers 5

    .line 4150
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4151
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4152
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4153
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$systemRunning$2(Ljava/lang/String;II)V
    .registers 4

    .line 1512
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p2

    .line 1513
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSecureSettingsChangedLocked(Ljava/lang/String;I)V

    .line 1514
    monitor-exit p2

    return-void

    :catchall_8
    move-exception p0

    monitor-exit p2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final maybeReportToolType(I)V
    .registers 5

    .line 3455
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerInternal;->getLastUsedInputDeviceId()I

    move-result v0

    .line 3456
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_13

    goto :goto_19

    .line 3460
    :cond_13
    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 3465
    :cond_1a
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x2

    goto :goto_2b

    .line 3467
    :cond_22
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isFingerDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 3473
    :goto_2b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateEditorToolTypeLocked(II)V

    return-void
.end method

.method public final notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    .line 2965
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    move-object p3, v0

    :goto_b
    if-eqz p3, :cond_11

    .line 2968
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

    .line 2970
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 2976
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    .line 2977
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, p2, :cond_20

    return-void

    .line 2980
    :cond_20
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public final notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 4738
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Got the notification of a user action."

    invoke-static {p0, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4739
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4740
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 4742
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    :cond_1b
    return-void
.end method

.method public onActionLocaleChanged(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 11

    .line 758
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "onActionLocaleChanged prev=%s new=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 760
    :try_start_f
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez p2, :cond_17

    .line 761
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    goto :goto_59

    .line 763
    :cond_17
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_20
    if-ge v2, v0, :cond_57

    aget v3, p2, v2

    .line 767
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 768
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v5

    .line 769
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v6

    .line 770
    iget-object v7, v4, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 771
    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 773
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    .line 771
    invoke-virtual {v6, v5, v1, v4}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    .line 774
    invoke-static {v4, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    .line 775
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    const/4 v4, 0x1

    .line 777
    invoke-virtual {p0, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 779
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    .line 780
    invoke-virtual {p0, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 782
    :cond_57
    monitor-exit p1

    return-void

    :goto_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_f .. :try_end_5a} :catchall_15

    throw p0
.end method

.method public final onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V
    .registers 3

    .line 1805
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1806
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1808
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V

    .line 1810
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .registers 6

    .line 1820
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 1821
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p1, :cond_39

    .line 1822
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;II)Z

    .line 1824
    iget-boolean p0, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 1825
    iput-boolean v0, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1826
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1832
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 1835
    :cond_28
    iput-boolean v0, p2, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 p0, 0x0

    .line 1836
    iput-object p0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1837
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-ne p0, p1, :cond_39

    .line 1838
    invoke-static {}, Lcom/android/server/inputmethod/ImeBindingState;->newEmptyState()Lcom/android/server/inputmethod/ImeBindingState;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 1841
    :cond_39
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mComputerControlInputConnectionMap:Ljava/util/Map;

    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .registers 4

    .line 4170
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4171
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4172
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4174
    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    .line 4175
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V
    .registers 5

    .line 4188
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    const/4 v1, 0x1

    .line 4189
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 4190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    return-void

    .line 4192
    :cond_e
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public final onSecureSettingsChangedLocked(Ljava/lang/String;I)V
    .registers 8

    .line 678
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_a8

    goto :goto_46

    :sswitch_10
    const-string v0, "enabled_input_methods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_46

    :cond_19
    const/4 v4, 0x4

    goto :goto_46

    :sswitch_1b
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_46

    :cond_25
    const/4 v4, 0x3

    goto :goto_46

    :sswitch_27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_46

    :cond_2e
    const/4 v4, 0x2

    goto :goto_46

    :sswitch_30
    const-string v0, "default_input_method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_46

    :cond_39
    move v4, v2

    goto :goto_46

    :sswitch_3b
    const-string/jumbo v0, "stylus_handwriting_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_45
    move v4, v3

    :goto_46
    packed-switch v4, :pswitch_data_be

    goto :goto_84

    .line 680
    :pswitch_4a
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 680
    invoke-static {p1, v1, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 683
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 684
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 685
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setA11yRequestNoSoftKeyboard(I)V

    .line 687
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p1

    if-eqz p1, :cond_75

    const/16 p1, 0x10

    .line 688
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 690
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 691
    :cond_75
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p1

    if-eqz p1, :cond_84

    const/16 p1, 0x9

    .line 692
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 694
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    :cond_84
    :goto_84
    return-void

    .line 708
    :pswitch_85
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p1

    .line 710
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 711
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 712
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    goto :goto_9d

    :cond_9c
    move v2, v3

    .line 715
    :goto_9d
    invoke-virtual {p0, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    return-void

    .line 699
    :pswitch_a1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 701
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    return-void

    :sswitch_data_a8
    .sparse-switch
        -0x6cf7725e -> :sswitch_3b
        -0x69f07bcc -> :sswitch_30
        0x15ab4237 -> :sswitch_27
        0x472be455 -> :sswitch_1b
        0x7ebbf7bf -> :sswitch_10
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_85
        :pswitch_4a
        :pswitch_85
        :pswitch_85
    .end packed-switch
.end method

.method public onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    .registers 16

    .line 2376
    const-string v0, "IMMS.onSessionCreated"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2378
    :try_start_7
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_68

    .line 2379
    :try_start_a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_19

    .line 2382
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2383
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 2409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    .line 2385
    :cond_19
    :try_start_19
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2386
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2387
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    if-eqz v4, :cond_5f

    if-eqz p1, :cond_5f

    .line 2389
    invoke-virtual {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_5f

    .line 2390
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v4, :cond_5f

    .line 2391
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2392
    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V

    iput-object v5, v6, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p1, 0x1

    const/16 p2, 0xa

    .line 2394
    invoke-virtual {p0, p2, p1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p3

    .line 2396
    invoke-virtual {p0, p2, p1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    .line 2398
    iget-object p0, p3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_5a

    .line 2399
    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 2401
    :cond_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_16

    .line 2409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5f
    move-object v9, p3

    .line 2404
    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_16

    .line 2407
    :try_start_61
    invoke-virtual {v9}, Landroid/view/InputChannel;->dispose()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_68

    .line 2409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    .line 2404
    :goto_6b
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_16

    :try_start_6c
    throw p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_68

    .line 2409
    :goto_6d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2410
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .registers 16

    .line 6301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_40

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_40

    if-eqz p6, :cond_11

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 6308
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6310
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " args="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6312
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6313
    invoke-static {v0}, Landroid/os/Process;->isCoreUid(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 6315
    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6318
    :cond_3a
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6320
    :cond_40
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v1, p7

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v14, p5

    .line 4782
    invoke-virtual {v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 4783
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-object/from16 v4, p2

    .line 4784
    invoke-virtual {v3, v4, v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v3

    .line 4786
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4787
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 4790
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    move/from16 v7, p1

    .line 4788
    invoke-virtual {v5, v7, v6, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object v15

    .line 4791
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    new-instance v4, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    iget-object v5, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    move-object v6, v3

    iget-object v3, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    move-object v7, v4

    iget-object v4, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v8, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mFocusedWindowName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    iget-boolean v2, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    iget-object v9, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mRequestWindowName:Ljava/lang/String;

    iget-object v10, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeLayeringTargetName:Ljava/lang/String;

    iget-object v11, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeInputTargetName:Ljava/lang/String;

    iget-object v12, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeControlTargetName:Ljava/lang/String;

    iget-object v13, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeSurfaceParentName:Ljava/lang/String;

    move-object v1, v6

    move v6, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move/from16 v7, p3

    invoke-direct/range {v2 .. v14}, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;)V

    if-eqz p4, :cond_56

    .line 4800
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v1, v15, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mRequestWindowName:Ljava/lang/String;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/ImeTrackerService;->onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method public final onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V
    .registers 6

    .line 5094
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;-><init>(IILcom/android/server/inputmethod/UserData;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    const/16 p1, 0x44c

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5095
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUpdateEditorToolTypeLocked(II)V
    .registers 3

    .line 1320
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->updateEditorToolType(I)V

    :cond_d
    return-void
.end method

.method public final onUpdateResourceOverlay(I)V
    .registers 8

    .line 5332
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 5333
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5334
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v0

    .line 5335
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object p1

    .line 5336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5337
    array-length v3, p1

    :goto_19
    if-ge v2, v3, :cond_2c

    aget v4, p1, v2

    .line 5338
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 5339
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5340
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5342
    :cond_2c
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 5343
    :try_start_2f
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5344
    monitor-exit p1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public onUserReadyLocked(I)V
    .registers 4

    .line 1534
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1538
    :cond_9
    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1541
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 1542
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    const/4 v0, 0x1

    .line 1544
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 1545
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1546
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object p1

    .line 1545
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    return-void
.end method

.method public performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILcom/android/server/inputmethod/UserData;)V
    .registers 13

    .line 3547
    iget-object v0, p4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3548
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 3554
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3556
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3554
    const-string v3, "Calling %s.hideSoftInput(%s) for reason: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3558
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->hideSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3559
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_42

    .line 3561
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 3562
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3563
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 3564
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d02

    .line 3560
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_42
    const/4 v3, 0x0

    .line 3568
    iget v7, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_4c
    return-void
.end method

.method public performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILcom/android/server/inputmethod/UserData;)V
    .registers 13

    .line 3429
    iget-object v0, p4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3430
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 3432
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3434
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3432
    const-string v3, "Calling %s.showSoftInput(%s) for reason: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3436
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->showSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3437
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_42

    .line 3439
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 3440
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3441
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 3442
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d01

    .line 3438
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_42
    const/4 v3, 0x1

    .line 3446
    iget v7, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_4c
    return-void
.end method

.method public postInputMethodSettingUpdatedLocked(ZI)V
    .registers 14

    .line 5245
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 5245
    const-string v2, "--- re-buildInputMethodList reset = %s \n ------ caller=%s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5247
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_21

    .line 5248
    const-string p0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5252
    :cond_21
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_68

    .line 5259
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 5260
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v3

    move v7, v6

    :goto_33
    if-ge v6, v5, :cond_56

    .line 5262
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5263
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 5265
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v7

    if-nez v7, :cond_52

    move v4, v2

    move v7, v4

    goto :goto_57

    :cond_52
    move v7, v2

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_56
    move v4, v3

    :goto_57
    if-nez v7, :cond_6a

    .line 5272
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "All the enabled IMEs are gone. Reset default enabled IMEs."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5275
    const-string p1, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    move p1, v2

    :cond_68
    move v4, v3

    goto :goto_76

    :cond_6a
    if-nez v4, :cond_68

    .line 5277
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v5, "All the enabled non-Aux IMEs are gone. Do partial reset."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v2

    :goto_76
    if-nez p1, :cond_7a

    if-eqz v4, :cond_7d

    .line 5283
    :cond_7a
    invoke-virtual {p0, v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->reenableImesLocked(ZLcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5286
    :cond_7d
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 5287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 5288
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 5289
    const-string p1, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5290
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 5291
    invoke-virtual {p0, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    goto :goto_a3

    .line 5295
    :cond_a0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5299
    :cond_a3
    :goto_a3
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateDefaultVoiceImeIfNeededLocked(I)V

    .line 5301
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 5302
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5304
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 5307
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object p1

    .line 5308
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1392

    invoke-virtual {p0, v0, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5309
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .registers 4

    const/4 v0, 0x1

    .line 2237
    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 2239
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p0, :cond_e

    .line 2240
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    :cond_e
    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3256
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3257
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not prepare stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3261
    :cond_1f
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3262
    :try_start_22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 3267
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 3268
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_41

    .line 3264
    :cond_31
    :try_start_31
    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "prepareStylusHandwritingDelegation() fail"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Delegator doesn\'t match Uid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3267
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_2f

    throw p0
.end method

.method public final publishLocalService()V
    .registers 2

    .line 5680
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public reRequestCurrentClientSessionLocked(I)V
    .registers 4

    .line 2436
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2437
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_1a

    .line 2438
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2439
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2440
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2441
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    :cond_1a
    return-void
.end method

.method public final reenableImesLocked(ZLcom/android/server/inputmethod/InputMethodSettings;)V
    .registers 9

    .line 5378
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5379
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 5381
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_31

    .line 5383
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5384
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "--- enable ime = %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5385
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_31
    return-void
.end method

.method public final registerDeviceListenerAndCheckStylusSupport()V
    .registers 5

    .line 4474
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 4475
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;

    move-result-object v1

    .line 4476
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_26

    .line 4477
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4478
    :try_start_17
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 4479
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 4480
    monitor-exit v2

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw p0

    .line 4482
    :cond_26
    :goto_26
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerImeRequestedChangedListener()V
    .registers 3

    .line 1550
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V

    return-void
.end method

.method public removeImeScreenshot(Landroid/os/IBinder;II)V
    .registers 10

    .line 5672
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeImeScreenshot(I)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    .line 5673
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_12
    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .registers 3

    .line 4470
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x425

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeStylusDeviceIdLocked(I)V
    .registers 4

    .line 4542
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_44

    .line 4546
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 4547
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stylus deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " removed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    :cond_34
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_44

    .line 4552
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 4553
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleRemoveStylusHandwritingWindow()V

    :cond_44
    :goto_44
    return-void
.end method

.method public final removeVirtualStylusIdForTestSessionLocked()V
    .registers 2

    .line 4658
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    return-void
.end method

.method public final reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 6024
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p0, :cond_b

    .line 6025
    iput-boolean p1, p2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 6026
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenMode(Z)V

    :cond_b
    return-void
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 4

    .line 3353
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 2782
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_f

    .line 2784
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->updateImeTargetWindow(Landroid/os/IBinder;)V

    .line 2786
    :cond_f
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setLastImeTargetWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .registers 4

    .line 2486
    iget-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    if-nez p0, :cond_37

    .line 2487
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Creating new accessibility sessions for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 2488
    iput-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2489
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    .line 2490
    :goto_18
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 2491
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2493
    :cond_30
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    :cond_37
    return-void
.end method

.method public requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .registers 6

    .line 2447
    iget-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    if-nez v0, :cond_3c

    .line 2448
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Creating new session for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2451
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2452
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 2453
    aget-object v0, v0, v2

    .line 2455
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 2457
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 2458
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    .line 2459
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V

    .line 2473
    :try_start_2c
    invoke-virtual {p1, v0, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_35

    if-eqz v0, :cond_3c

    .line 2478
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_35
    move-exception p0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2480
    :cond_3b
    throw p0

    :cond_3c
    return-void
.end method

.method public resetCurrentMethodAndClientLocked(II)V
    .registers 5

    .line 2426
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    const/4 v1, 0x0

    .line 2427
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2431
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    return-void
.end method

.method public final resetDefaultImeLocked(Landroid/content/Context;I)V
    .registers 6

    .line 1337
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 1339
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    .line 1340
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 1341
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1342
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 1346
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1345
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1347
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1348
    const-string p0, "InputMethodManagerService"

    const-string p1, "No default found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1351
    :cond_33
    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1352
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Default found, using %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1353
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V
    .registers 9

    .line 5495
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    const/4 v1, -0x1

    .line 5496
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    const/4 v2, 0x0

    .line 5497
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    .line 5499
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v3, 0x0

    .line 5500
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 5502
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 5505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 5506
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 5510
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5509
    invoke-static {v3, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_4a

    :catch_33
    move-exception v0

    .line 5512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "InputMethodManagerService"

    invoke-static {v4, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5516
    :cond_4a
    :goto_4a
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resetStylusHandwritingLocked(I)V
    .registers 4

    .line 4749
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    .line 4750
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 4751
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IME requested to finish handwriting with a mismatched requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeVirtualStylusIdForTestSessionLocked()V

    .line 4755
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    return-void
.end method

.method public resetSystemUiLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 3

    const/4 v0, 0x0

    .line 2418
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2419
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2420
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public final resolveImeUserIdFromDisplayIdLocked(I)I
    .registers 3

    .line 354
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_b

    .line 355
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_b
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I
    .registers 3

    .line 367
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_11

    .line 368
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result p1

    .line 369
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    .line 371
    :cond_11
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdLocked(I)I
    .registers 3

    .line 342
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_5

    return p1

    :cond_5
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public scheduleNotifyImeUidToAudioService(I)V
    .registers 4

    .line 2368
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2369
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2370
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2356
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p2, 0x46a

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2358
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleRemoveStylusHandwritingWindow()V
    .registers 2

    .line 2363
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x460

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleResetStylusHandwriting()V
    .registers 2

    .line 2350
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x442

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .registers 6

    .line 1229
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_10

    .line 1230
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, p1, :cond_b

    .line 1231
    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void

    .line 1234
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1238
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 1239
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 1241
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 1242
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1244
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1245
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V
    .registers 3

    .line 5321
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5322
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 5327
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onNavButtonFlagsChanged(I)V

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .registers 13

    .line 4356
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_e

    .line 4357
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4360
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    if-nez p2, :cond_1c

    goto/16 :goto_b5

    .line 4365
    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4366
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_5b

    aget-object v3, p2, v2

    .line 4367
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 4368
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 4370
    :cond_32
    const-string v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4371
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4370
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 4374
    :cond_5b
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 4375
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4376
    :try_start_62
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_6b

    .line 4377
    monitor-exit v2

    return-void

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto :goto_b3

    .line 4380
    :cond_6b
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v6

    .line 4381
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4382
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p1

    if-eq v6, p1, :cond_b1

    .line 4386
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 4385
    invoke-static {p3, p1, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 4387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_68

    .line 4389
    :try_start_87
    iget-object p1, p2, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 4390
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4391
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    .line 4389
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    .line 4392
    invoke-static {p1, p3}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 4393
    invoke-static {p3, p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 4394
    invoke-virtual {p0, v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V
    :try_end_a7
    .catchall {:try_start_87 .. :try_end_a7} :catchall_ab

    .line 4396
    :try_start_a7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b1

    :catchall_ab
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4397
    throw p0

    .line 4399
    :cond_b1
    :goto_b1
    monitor-exit v2

    return-void

    :goto_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_68

    throw p0

    :cond_b5
    :goto_b5
    return-void
.end method

.method public setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
    .registers 9

    .line 4631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 4632
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 4633
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4634
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result p1

    .line 4635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_27

    .line 4637
    :try_start_13
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Setting mAllowedImesByPolicyForTest"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_2b

    const/4 p1, 0x0

    .line 4639
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAllowedImesByPolicyForTest:Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_29

    .line 4651
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception p0

    goto :goto_67

    :catchall_29
    move-exception p0

    goto :goto_63

    .line 4643
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p1

    .line 4644
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAllowedImesByPolicyForTest:Ljava/util/ArrayList;

    .line 4645
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4646
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 4647
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAllowedImesByPolicyForTest:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_29

    goto :goto_42

    .line 4651
    :cond_5e
    :try_start_5e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4653
    monitor-exit v0

    return-void

    .line 4651
    :goto_63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4652
    throw p0

    .line 4653
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_27

    throw p0
.end method

.method public setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V
    .registers 7

    .line 4844
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 4845
    :goto_7
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 4846
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 4847
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 4848
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v2, :cond_30

    .line 4850
    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4855
    :cond_33
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_40

    .line 4856
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4859
    :cond_40
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 4860
    :goto_45
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 4861
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_68

    .line 4862
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v1, :cond_68

    .line 4864
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 4868
    :cond_6b
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 4869
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4872
    :cond_79
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    return-void
.end method

.method public setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V
    .registers 6

    .line 4824
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq p0, p1, :cond_5a

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 4825
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_2e

    .line 4826
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4827
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 4830
    :cond_2e
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_5a

    .line 4831
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_5a

    .line 4832
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4833
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    :cond_5a
    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .registers 8

    .line 4405
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_e

    .line 4406
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4409
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz p1, :cond_18

    .line 4411
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_18
    if-eqz v1, :cond_5e

    .line 4412
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4413
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4412
    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4417
    const-string/jumbo v0, "subtypeHashCodes must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4421
    :try_start_30
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_59

    .line 4422
    :try_start_33
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4423
    invoke-virtual {v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_44

    .line 4424
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_42

    .line 4432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception p0

    goto :goto_57

    .line 4427
    :cond_44
    :try_start_44
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 4428
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4429
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 4430
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_42

    .line 4432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4430
    :goto_57
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_42

    :try_start_58
    throw p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    .line 4432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4433
    throw p0

    .line 4414
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Calling UID="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not belong to imeId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 4

    .line 6750
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p0, :cond_d

    .line 6751
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    const/4 p0, 0x1

    return p0

    .line 6755
    :cond_d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x39

    invoke-interface {p0, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V
    .registers 7

    .line 2744
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2746
    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2747
    iget-object p3, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2752
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v2

    if-eq v2, v0, :cond_13

    if-eqz v2, :cond_13

    return-void

    .line 2756
    :cond_13
    invoke-virtual {p3, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2757
    invoke-virtual {p3, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2758
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v1, 0x2

    if-eq p2, v1, :cond_26

    and-int/2addr p1, v1

    if-eqz p1, :cond_27

    :cond_26
    move p3, v0

    .line 2773
    :cond_27
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    return-void
.end method

.method public final setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .registers 8

    .line 4221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4222
    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4223
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 4224
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 4226
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4225
    invoke-virtual {p0, v3, v0, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_29

    .line 4230
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p2

    invoke-static {v2, p2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p2

    goto :goto_2a

    :cond_29
    const/4 p2, -0x1

    .line 4232
    :goto_2a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    return-void

    .line 4227
    :cond_2e
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z
    .registers 8

    .line 5407
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1f

    .line 5409
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p0

    .line 5410
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5412
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v2

    .line 5417
    :cond_1b
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    return v1

    .line 5422
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object p2

    .line 5423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5424
    invoke-virtual {v0, v3, p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 5426
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p2

    .line 5427
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result p2

    if-nez p2, :cond_55

    .line 5429
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p2

    .line 5430
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p1

    if-nez p1, :cond_72

    .line 5431
    const-string p1, "InputMethodManagerService"

    const-string p2, "Can\'t find new IME, unsetting the current input method."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    const-string p1, ""

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    goto :goto_72

    .line 5434
    :cond_55
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_72

    .line 5439
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object p0

    .line 5438
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-nez p0, :cond_6b

    const/4 p0, 0x0

    goto :goto_6f

    .line 5441
    :cond_6b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    .line 5440
    :goto_6f
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return v2

    :cond_73
    return v1
.end method

.method public setInputMethodLocked(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 2986
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    return-void
.end method

.method public setInputMethodLocked(Ljava/lang/String;III)V
    .registers 13

    .line 2991
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2992
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 2997
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 2999
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_70

    .line 3000
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-gtz p1, :cond_28

    const/4 p1, 0x0

    .line 3002
    invoke-virtual {p0, p4, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    .line 3005
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p3

    if-ltz p2, :cond_35

    if-ge p2, p1, :cond_35

    .line 3008
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    goto :goto_51

    .line 3014
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    if-eqz p2, :cond_4d

    :goto_3b
    if-ge v4, p1, :cond_4d

    .line 3017
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move-object p1, p2

    move p2, v4

    goto :goto_51

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_4d
    const/4 p1, -0x1

    move-object v7, p2

    move p2, p1

    move-object p1, v7

    .line 3024
    :goto_51
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6f

    const/4 p3, 0x1

    .line 3025
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3026
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 3028
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result p3

    .line 3029
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v0

    .line 3028
    invoke-virtual {p0, p3, v0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 3030
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_6f
    return-void

    .line 3037
    :cond_70
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v3

    if-eqz v3, :cond_7c

    if-nez p3, :cond_7c

    .line 3043
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    return-void

    .line 3046
    :cond_7c
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p3

    if-eqz p3, :cond_85

    .line 3048
    invoke-virtual {p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    .line 3050
    :cond_85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3052
    :try_start_89
    invoke-virtual {p0, v1, p2, v4, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3056
    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 3058
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 3059
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x20000000

    .line 3060
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3061
    const-string p3, "input_method_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3062
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b2

    :catchall_b0
    move-exception p0

    goto :goto_bd

    .line 3064
    :cond_b2
    :goto_b2
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 p1, 0x2

    .line 3065
    invoke-virtual {p0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V
    :try_end_b9
    .catchall {:try_start_89 .. :try_end_b9} :catchall_b0

    .line 3067
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_bd
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3068
    throw p0

    .line 2994
    :cond_c1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V
    .registers 6

    .line 4761
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 4762
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;)V

    .line 4763
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4764
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_35

    .line 4765
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested IME is not enabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4767
    :cond_35
    :goto_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4769
    :try_start_39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_40

    .line 4771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4772
    throw p0
.end method

.method public final setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V
    .registers 9

    .line 5456
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5457
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5458
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    .line 5459
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 5458
    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v2, -0x1

    if-eqz p1, :cond_2d

    if-gez p2, :cond_19

    goto :goto_2d

    .line 5468
    :cond_19
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-ge p2, v3, :cond_28

    .line 5469
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    .line 5470
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    goto :goto_2e

    .line 5477
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p2, 0x0

    .line 5480
    :goto_2e
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedSubtype(I)V

    .line 5481
    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5482
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    if-nez p3, :cond_49

    if-eqz p1, :cond_44

    .line 5486
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_44
    const-string p1, ""

    :goto_46
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5489
    :cond_49
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onInputMethodSubtypeChanged()V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .registers 11

    .line 4608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4609
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4610
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 4611
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    .line 4612
    const-string/jumbo v3, "setStylusWindowIdleTimeoutForTest"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_20

    .line 4614
    monitor-exit v6

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_40

    .line 4616
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_1d

    .line 4618
    :try_start_24
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Setting stylus window idle timeout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4619
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_3a

    .line 4621
    :try_start_35
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4623
    monitor-exit v6

    return-void

    :catchall_3a
    move-exception v0

    move-object p2, v0

    .line 4621
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4622
    throw p2

    .line 4623
    :goto_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_1d

    throw p0
.end method

.method public final shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .registers 10

    .line 4331
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4332
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_a

    return v7

    .line 4336
    :cond_a
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4337
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4336
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNext(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZIZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v7
.end method

.method public final shouldPreventImeStartupLocked(Ljava/lang/String;III)Z
    .registers 7

    .line 2216
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2219
    :cond_6
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 2222
    :cond_d
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result p2

    if-eqz p2, :cond_14

    return v1

    .line 2225
    :cond_14
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    .line 2226
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_23

    return v1

    .line 2230
    :cond_23
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .registers 4

    .line 4203
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4204
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4205
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    const/4 v2, 0x3

    .line 4206
    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_12
    move-exception p0

    .line 4208
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final shouldShowImeSwitcherLocked(II)Z
    .registers 6

    .line 2662
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 2666
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2667
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v2

    .line 2668
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    .line 2667
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 2671
    :cond_1d
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2672
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v1

    :cond_2e
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_3c

    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_37

    goto :goto_3c

    .line 2680
    :cond_37
    invoke-static {v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result p0

    return p0

    :cond_3c
    :goto_3c
    return v1
.end method

.method public showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 12

    .line 3073
    const-string v0, "IMMS.showCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3074
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#showSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3076
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3077
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 3078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_34

    .line 3080
    :try_start_1d
    sget-object v6, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v7, "Client requesting input be shown"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    .line 3081
    invoke-virtual {p0, p1, p2, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_36

    .line 3084
    :try_start_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3085
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    goto :goto_3e

    :catchall_36
    move-exception p0

    .line 3084
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3085
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3086
    throw p0

    .line 3087
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_34

    throw p0
.end method

.method public final showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)Z
    .registers 13

    .line 3373
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 3374
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3375
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isAllowedByAccessibilityAndDisplayPolicy()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 3376
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v3

    .line 3380
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x5

    if-nez v2, :cond_23

    .line 3381
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v3

    .line 3384
    :cond_23
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3386
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3388
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 p3, 0x4f

    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3390
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeReportToolType(I)V

    return v3

    :cond_3d
    const/4 v2, 0x1

    .line 3393
    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    .line 3396
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3397
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodVisible()V

    .line 3398
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 3399
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v7, 0x8

    invoke-interface {v5, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    if-eqz v4, :cond_75

    .line 3401
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v4, :cond_75

    iget-object v4, v4, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v4, :cond_75

    .line 3404
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v3, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v3, 0x0

    .line 3405
    iput-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3407
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeReportToolType(I)V

    .line 3408
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILcom/android/server/inputmethod/UserData;)V

    .line 3409
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    return v2

    .line 3412
    :cond_75
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3413
    iput-object p2, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v3
.end method

.method public showImeScreenshot(Landroid/os/IBinder;II)V
    .registers 10

    .line 5655
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->showImeScreenshot(Landroid/os/IBinder;I)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    .line 5656
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_12
    return-void
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .registers 7

    .line 4117
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_d

    .line 4118
    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "showInputMethodPickerFromClient is not enabled on automotive"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4121
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4122
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4123
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    .line 4124
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v2

    if-nez v2, :cond_44

    .line 4125
    const-string p0, "InputMethodManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4125
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    monitor-exit v1

    return-void

    :catchall_42
    move-exception p0

    goto :goto_5c

    .line 4129
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 4132
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p1, :cond_4f

    .line 4133
    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    goto :goto_50

    :cond_4f
    const/4 p1, 0x0

    .line 4134
    :goto_50
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4139
    monitor-exit v1

    return-void

    :goto_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_42

    throw p0
.end method

.method public showInputMethodPickerFromSystem(II)V
    .registers 5

    .line 4149
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showInputMethodPickerLocked(III)V
    .registers 16

    .line 4878
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 4880
    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_28

    if-eq p1, v3, :cond_26

    const/4 v4, 0x2

    if-eq p1, v4, :cond_24

    .line 4891
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown subtype picker mode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    move p1, v2

    goto :goto_2e

    :cond_26
    move p1, v3

    goto :goto_2e

    .line 4885
    :cond_28
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p1

    .line 4895
    :goto_2e
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4896
    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v4

    if-eqz v4, :cond_40

    move v9, v3

    goto :goto_41

    :cond_40
    move v9, v2

    :goto_41
    if-eqz p1, :cond_46

    if-nez v9, :cond_46

    move v2, v3

    .line 4901
    :cond_46
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    .line 4902
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4904
    invoke-virtual {v4, v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v5

    .line 4906
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4907
    invoke-virtual {v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getItems(ZZ)Ljava/util/List;

    move-result-object v6

    .line 4908
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 4909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Show switching menu failed, items is empty, showAuxSubtypes: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isScreenLocked: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4916
    :cond_83
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 4918
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v7, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 4916
    const-string v1, "Show IME switcher menu, showAuxSubtypes=%s displayId=%s preferredInputMethodId=%s preferredInputMethodSubtypeIndex=%s"

    invoke-static {v0, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-ne v5, p1, :cond_bb

    .line 4923
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 4924
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 4926
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p1

    .line 4927
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 4929
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    .line 4928
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    :cond_bb
    move v8, v5

    .line 4933
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    move v10, p2

    move v11, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodMenuController;->show(Ljava/util/List;Ljava/lang/String;IZII)V

    return-void
.end method

.method public final showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .registers 5

    .line 4817
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4819
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 16

    move-object v5, p6

    .line 3121
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3122
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v3

    .line 3123
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_2b

    .line 3124
    const-string v0, "InputMethodManagerService"

    const-string v2, "Connectionless stylus handwriting mode unsupported by IME."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 3126
    :try_start_16
    invoke-interface {p6, v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1d
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_28

    :catchall_1a
    move-exception v0

    goto/16 :goto_8e

    :catch_1d
    move-exception v0

    .line 3128
    :try_start_1e
    const-string v2, "InputMethodManagerService"

    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3129
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3131
    :goto_28
    monitor-exit v1

    goto/16 :goto_8d

    .line 3133
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_1a

    if-eqz p4, :cond_31

    if-eqz p5, :cond_31

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    const/4 v7, 0x2

    if-eqz v6, :cond_71

    .line 3138
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3139
    :try_start_38
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v3, p1, p5}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 3149
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_4d

    .line 3150
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    move-object v8, v5

    move-object v3, v0

    goto :goto_73

    :catchall_4d
    move-exception v0

    goto :goto_6f

    :cond_4f
    move-object v8, v5

    .line 3140
    :try_start_50
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v2, "startConnectionlessStylusHandwriting() fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 3142
    :try_start_58
    invoke-interface {p6, v7}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_4d

    goto :goto_67

    :catch_5c
    move-exception v0

    .line 3144
    :try_start_5d
    const-string v2, "InputMethodManagerService"

    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3145
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3147
    :goto_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Delegator doesn\'t match UID"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3149
    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_4d

    throw v0

    :cond_71
    move-object v8, v5

    move-object v3, v8

    :goto_73
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, v6

    .line 3168
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 3171
    :try_start_7e
    invoke-interface {p6, v7}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception v0

    .line 3173
    const-string v1, "InputMethodManagerService"

    const-string v2, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3174
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_8d
    :goto_8d
    return-void

    .line 3133
    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_1a

    throw v0
.end method

.method public startImeTrace()V
    .registers 3

    .line 4683
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 4684
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4685
    :try_start_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4686
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw p0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 17

    move/from16 v0, p15

    .line 3598
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusWithResult(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p1

    .line 3603
    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    .line 3604
    :try_start_9
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 3606
    iget-object p4, p2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p4, p1, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 3608
    iget p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    const/4 p4, 0x1

    if-ne p1, p4, :cond_47

    .line 3609
    invoke-virtual {p0, p2, p12}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 3610
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    goto :goto_47

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 3614
    :cond_29
    const-string p0, "InputMethodManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Client that requested startInputOrWindowGainedFocus is no longer bound. InputBindResult: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for startInputSeq: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_47
    :goto_47
    monitor-exit p3

    return-void

    :goto_49
    monitor-exit p3
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_26

    throw p0
.end method

.method public final startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/os/ResultReceiver;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 3876
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3888
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3889
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3890
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v8

    .line 3891
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3892
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v6, p7

    move-object/from16 v5, p8

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    filled-new-array/range {v3 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    move-object v4, v6

    .line 3876
    const-string/jumbo v5, "startInputOrWindowGainedFocusInternalLocked: reason=%s client=%s inputContext=%s editorInfo=%s startInputFlags=%s softInputMode=%s windowFlags=#%s unverifiedTargetSdkVersion=%s bindingController=%s imeBackCallbackReceiver=%s cs=%s imeRequestedVisible=%s"

    invoke-static {v1, v5, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3894
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v10

    .line 3895
    invoke-virtual {v0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v11

    move-object/from16 v9, p11

    .line 3896
    invoke-virtual {v0, v10, v9, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->enforceDevicePolicyLocked(ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/view/inputmethod/EditorInfo;)V

    .line 3898
    iget-object v3, v11, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v3, v2, :cond_4e

    move v3, v13

    goto :goto_4f

    :cond_4e
    move v3, v12

    :goto_4f
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_56

    move/from16 v18, v13

    goto :goto_58

    :cond_56
    move/from16 v18, v12

    :goto_58
    and-int/lit8 v5, p4, 0x8

    if-eqz v5, :cond_5f

    move/from16 v19, v13

    goto :goto_61

    :cond_5f
    move/from16 v19, v12

    :goto_61
    if-eqz v4, :cond_6a

    .line 3903
    invoke-virtual {v4}, Landroid/view/inputmethod/EditorInfo;->getInitialToolType()I

    move-result v5

    move/from16 v20, v5

    goto :goto_6c

    :cond_6a
    move/from16 v20, v12

    .line 3907
    :goto_6c
    new-instance v14, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    xor-int/lit8 v17, v3, 0x1

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZI)V

    .line 3910
    iget-object v6, v11, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3911
    invoke-virtual {v6, v2, v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    if-eqz v3, :cond_c1

    if-eqz v18, :cond_c1

    .line 3918
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p2

    filled-new-array {v5, v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3914
    const-string v3, "Window already focused, ignoring focus gain of: %s editorInfo=%s, token=%s, startInputReason=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_a4

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v8, p12

    move-object/from16 v1, p13

    .line 3920
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/os/ResultReceiver;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 3925
    :cond_a4
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p0, v0

    move/from16 p6, v1

    move/from16 p7, v2

    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v0

    :cond_c1
    move/from16 v8, p4

    move-object v7, v0

    .line 3930
    new-instance v0, Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v1

    move/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v4, p13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(ILandroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, v11, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 3932
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p10

    .line 3943
    invoke-static {v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    move/from16 v2, p14

    .line 3941
    invoke-virtual {v6, v14, v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;ZZ)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_149

    .line 3947
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_100

    const/4 v2, 0x7

    if-eq v1, v2, :cond_100

    const/16 v2, 0x8

    if-eq v1, v2, :cond_100

    const/16 v2, 0x17

    if-eq v1, v2, :cond_100

    move-object v0, v7

    move v13, v12

    goto :goto_120

    :cond_100
    if-eqz p7, :cond_11a

    move-object v1, v7

    move v7, v0

    move-object v0, v1

    move/from16 v6, p1

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v9, p11

    move-object/from16 v1, p13

    move v5, v8

    move-object/from16 v8, p12

    .line 3955
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/os/ResultReceiver;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v15

    move v12, v13

    goto :goto_120

    :cond_11a
    move-object v0, v7

    move/from16 v21, v13

    move v13, v12

    move/from16 v12, v21

    .line 3966
    :goto_120
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 3968
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v2, v11, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 3969
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_145

    move-object/from16 v1, p13

    .line 3975
    iget v2, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_147

    .line 3976
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    goto :goto_147

    :cond_145
    move-object/from16 v1, p13

    :cond_147
    :goto_147
    move v12, v13

    goto :goto_14c

    :cond_149
    move-object/from16 v1, p13

    move-object v0, v7

    :goto_14c
    if-nez v12, :cond_168

    if-eqz p7, :cond_165

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v8, p12

    .line 3982
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/os/ResultReceiver;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 3987
    :cond_165
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_168
    return-object v15
.end method

.method public startInputOrWindowGainedFocusWithResult(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move/from16 v1, p12

    .line 3632
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v4, "startInputOrWindowGainedFocus: userId=%d callingUserId=%d editorInfo=%s"

    .line 3634
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 3632
    invoke-static {v2, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq v4, v1, :cond_59

    .line 3636
    const-string/jumbo v4, "startInputOrWindowGainedFocus callingUserId != userid (%d != %d)"

    .line 3638
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 3636
    invoke-static {v2, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3639
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_51

    .line 3642
    iget-object v4, v7, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v4, :cond_51

    .line 3643
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, v1, :cond_51

    goto :goto_59

    .line 3644
    :cond_51
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "EditorInfo#targetInputMethodUser must also be specified for cross-user startInputOrWindowGainedFocus()"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    :goto_59
    if-nez v3, :cond_66

    .line 3649
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3653
    :cond_66
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 3658
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3661
    :cond_8c
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    const-wide/16 v5, 0x20

    .line 3663
    :try_start_92
    const-string v8, "IMMS.startInputOrWindowGainedFocus"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3665
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v8

    const-string v9, "InputMethodManagerService#startInputOrWindowGainedFocus"

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3668
    const-class v15, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v15
    :try_end_a5
    .catchall {:try_start_92 .. :try_end_a5} :catchall_287

    .line 3669
    :try_start_a5
    iget-object v11, v4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3671
    iget-boolean v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v8, :cond_d8

    .line 3672
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 3675
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v1

    .line 3676
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p1, v4

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    monitor-exit v15
    :try_end_cf
    .catchall {:try_start_a5 .. :try_end_cf} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_d3
    move-exception v0

    move-wide/from16 v18, v5

    goto/16 :goto_285

    .line 3679
    :cond_d8
    :try_start_d8
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v13

    if-eqz v13, :cond_268

    .line 3698
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_e8
    .catchall {:try_start_d8 .. :try_end_e8} :catchall_d3

    .line 3701
    :try_start_e8
    iget-boolean v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v8, :cond_132

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v8, :cond_132

    .line 3703
    iget v2, v8, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, v2, :cond_108

    .line 3705
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3706
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_fb
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_103

    .line 3771
    :try_start_fb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_103
    move-exception v0

    move-wide/from16 v18, v5

    goto/16 :goto_264

    .line 3708
    :cond_108
    :try_start_108
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getProfileIds(I)[I

    move-result-object v2

    .line 3709
    array-length v3, v2

    const/4 v4, 0x0

    :goto_110
    if-ge v4, v3, :cond_128

    aget v7, v2, v4

    if-ne v7, v1, :cond_125

    .line 3711
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3712
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_11d
    .catchall {:try_start_108 .. :try_end_11d} :catchall_103

    .line 3771
    :try_start_11d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_121
    .catchall {:try_start_11d .. :try_end_121} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_125
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 3715
    :cond_128
    :try_start_128
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_12a
    .catchall {:try_start_128 .. :try_end_12a} :catchall_103

    .line 3771
    :try_start_12a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_12e
    .catchall {:try_start_12a .. :try_end_12e} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3720
    :cond_132
    :try_start_132
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v9, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v10, v13, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget v12, v13, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v8, v3, v9, v10, v12}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v8

    const/4 v9, -0x3

    if-eq v8, v9, :cond_258

    const/4 v9, -0x2

    if-eq v8, v9, :cond_244

    const/4 v9, -0x1

    if-eq v8, v9, :cond_221

    .line 3742
    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v2, :cond_189

    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq v1, v2, :cond_189

    .line 3743
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getProfileIds(I)[I

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 3746
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3747
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_160
    .catchall {:try_start_132 .. :try_end_160} :catchall_103

    .line 3771
    :try_start_160
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3749
    :cond_168
    :try_start_168
    const-string v2, "InputMethodManagerService"

    const-string v3, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    const-string v2, "InputMethodManagerService"

    const-string v3, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    iget-object v2, v4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;II)Z

    .line 3755
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_181
    .catchall {:try_start_168 .. :try_end_181} :catchall_103

    .line 3771
    :try_start_181
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_185
    .catchall {:try_start_181 .. :try_end_185} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_189
    if-eqz v7, :cond_1c3

    .line 3758
    :try_start_18b
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget-object v4, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    .line 3760
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_1bb
    .catchall {:try_start_18b .. :try_end_1bb} :catchall_103

    .line 3771
    :try_start_1bb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_1bf
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_d3

    .line 3785
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_1c3
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v12, p13

    move/from16 v14, p14

    move-wide/from16 v18, v5

    move/from16 v5, p5

    move/from16 v6, p6

    .line 3765
    :try_start_1d9
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/os/ResultReceiver;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_1dd
    .catchall {:try_start_1d9 .. :try_end_1dd} :catchall_21f

    .line 3771
    :try_start_1dd
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3773
    monitor-exit v15
    :try_end_1e1
    .catchall {:try_start_1dd .. :try_end_1e1} :catchall_21d

    if-nez v0, :cond_219

    .line 3776
    :try_start_1e3
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3777
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3778
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3776
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_213
    .catchall {:try_start_1e3 .. :try_end_213} :catchall_217

    .line 3785
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_217
    move-exception v0

    goto :goto_28a

    :cond_219
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_21d
    move-exception v0

    goto :goto_285

    :catchall_21f
    move-exception v0

    goto :goto_264

    :cond_221
    move-wide/from16 v18, v5

    .line 3733
    :try_start_223
    const-string v0, "Focus gain on non-focused client %s (uid=%s pid=%s)"

    iget-object v1, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v3, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 3735
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v13, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 3733
    invoke-static {v2, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3736
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_23c
    .catchall {:try_start_223 .. :try_end_23c} :catchall_21f

    .line 3771
    :try_start_23c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_240
    .catchall {:try_start_23c .. :try_end_240} :catchall_21d

    .line 3785
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_244
    move-wide/from16 v18, v5

    .line 3724
    :try_start_246
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_250
    .catchall {:try_start_246 .. :try_end_250} :catchall_21f

    .line 3771
    :try_start_250
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_254
    .catchall {:try_start_250 .. :try_end_254} :catchall_21d

    .line 3785
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_258
    move-wide/from16 v18, v5

    .line 3738
    :try_start_25a
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_25c
    .catchall {:try_start_25a .. :try_end_25c} :catchall_21f

    .line 3771
    :try_start_25c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_260
    .catchall {:try_start_25c .. :try_end_260} :catchall_21d

    .line 3785
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3771
    :goto_264
    :try_start_264
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3772
    throw v0

    :cond_268
    move-wide/from16 v18, v5

    .line 3681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3773
    :goto_285
    monitor-exit v15
    :try_end_286
    .catchall {:try_start_264 .. :try_end_286} :catchall_21d

    :try_start_286
    throw v0
    :try_end_287
    .catchall {:try_start_286 .. :try_end_287} :catchall_217

    :catchall_287
    move-exception v0

    move-wide/from16 v18, v5

    .line 3785
    :goto_28a
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 3786
    throw v0
.end method

.method public final startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/os/ResultReceiver;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 22

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    .line 2025
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v3

    .line 2026
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 2027
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2031
    iget-object v6, v4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 2034
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2036
    :cond_1d
    iget v7, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 2038
    invoke-virtual {v5, v6, v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I

    move-result v6

    move-object/from16 v7, p9

    .line 2037
    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    .line 2042
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    .line 2044
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v8

    .line 2043
    invoke-virtual {p0, v8, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_3f

    .line 2046
    invoke-virtual {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    goto :goto_4e

    .line 2047
    :cond_3f
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    const/4 v6, -0x1

    .line 2049
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v10

    .line 2048
    invoke-virtual {p0, v8, v6, v10, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    move-object v6, v8

    .line 2053
    :cond_4e
    :goto_4e
    invoke-virtual {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 2054
    iget-object p1, v4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;II)Z

    .line 2056
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    :cond_64
    if-nez v6, :cond_69

    .line 2061
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2064
    :cond_69
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eq v5, p1, :cond_70

    .line 2065
    invoke-virtual {p0, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2068
    :cond_70
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    const/4 v8, 0x0

    if-eqz v5, :cond_77

    move v5, v9

    goto :goto_78

    :cond_77
    move v5, v8

    .line 2071
    :goto_78
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->advanceSequenceNumber()V

    .line 2073
    iput-object p1, v4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2074
    iput-object p2, v4, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 2075
    iput-object p3, v4, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-object/from16 v10, p8

    .line 2076
    iput-object v10, v4, Lcom/android/server/inputmethod/UserData;->mCurImeBackCallbackReceiver:Landroid/os/ResultReceiver;

    .line 2078
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v10, :cond_93

    .line 2079
    const-class v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2081
    :cond_93
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v10, :cond_a5

    iget-object v11, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-nez v11, :cond_a5

    .line 2082
    iget v11, p1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v10, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPreferredLocaleListForUid(I)Landroid/os/LocaleList;

    move-result-object v10

    if-eqz v10, :cond_a5

    .line 2084
    iput-object v10, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 2087
    :cond_a5
    iput-object v0, v4, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2090
    iget-object v0, v4, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v0, :cond_ad

    move v0, v9

    goto :goto_ae

    :cond_ad
    move v0, v8

    :goto_ae
    if-eq v0, v5, :cond_b5

    .line 2092
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerInternal;->notifyInputMethodConnectionActive(Z)V

    :cond_b5
    move/from16 v0, p7

    .line 2096
    invoke-virtual {p0, v6, v1, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldPreventImeStartupLocked(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2098
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Avoiding IME startup and unbinding current input method."

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2099
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->invalidateAutofillSession()V

    .line 2100
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2101
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2107
    :cond_cf
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v0

    .line 2108
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v4

    if-eqz v0, :cond_10c

    .line 2109
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 2110
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v0

    if-ne v4, v0, :cond_10c

    .line 2111
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_105

    .line 2119
    iput-boolean v8, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2120
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_f8

    move v0, v9

    goto :goto_f9

    :cond_f8
    move v0, v8

    .line 2123
    :goto_f9
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    if-eqz p1, :cond_ff

    goto :goto_100

    :cond_ff
    move v9, v8

    .line 2125
    :goto_100
    invoke-virtual {p0, v2, v9, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0

    .line 2129
    :cond_105
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    if-eqz p0, :cond_10c

    return-object p0

    .line 2135
    :cond_10c
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2136
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 3

    const/4 v0, 0x0

    .line 3112
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3180
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z
    .registers 17

    .line 3186
    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3188
    :try_start_7
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3191
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3192
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_e9

    .line 3193
    :try_start_1d
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v10

    if-nez p2, :cond_2d

    .line 3195
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_2d

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e7

    .line 3197
    :cond_2d
    :goto_2d
    const-string/jumbo v8, "startStylusHandwriting"

    const/4 v9, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3f

    .line 3199
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3201
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result p1

    if-nez p1, :cond_51

    .line 3202
    const-string p0, "InputMethodManagerService"

    const-string p1, "No supported Stylus hardware found on device. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3206
    :cond_51
    :try_start_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_29

    .line 3208
    :try_start_55
    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 3209
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3210
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_6e

    .line 3241
    :try_start_66
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :catchall_6e
    move-exception v0

    move-object p0, v0

    goto :goto_e3

    .line 3215
    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    .line 3216
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 3217
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_6e

    .line 3241
    :try_start_84
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3220
    :cond_8c
    :try_start_8c
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v4

    if-nez v4, :cond_a3

    .line 3221
    const-string p0, "InputMethodManagerService"

    const-string p1, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_6e

    .line 3241
    :try_start_9b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3225
    :cond_a3
    :try_start_a3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->hasOngoingStylusHandwritingSession()Z

    move-result p0

    if-eqz p0, :cond_ba

    .line 3227
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting session is already ongoing. Ignoring startStylusHandwriting()."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_6e

    .line 3241
    :try_start_b2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3232
    :cond_ba
    :try_start_ba
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting Stylus Handwriting to be started"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3233
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_db

    .line 3235
    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    move/from16 p2, p5

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    :try_end_d2
    .catchall {:try_start_ba .. :try_end_d2} :catchall_6e

    .line 3241
    :try_start_d2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 3241
    :cond_db
    :try_start_db
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_29

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3241
    :goto_e3
    :try_start_e3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3242
    throw p0

    .line 3243
    :goto_e7
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_29

    :try_start_e8
    throw p0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    move-object p0, v0

    .line 3245
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3246
    throw p0
.end method

.method public stopImeTrace()V
    .registers 3

    .line 4693
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 4694
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4695
    :try_start_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4696
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V
    .registers 15

    .line 5581
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 5582
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 5584
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5585
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5586
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v4

    .line 5585
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    if-nez v6, :cond_18

    goto/16 :goto_8c

    .line 5590
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 5591
    iget-object v5, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 p2, 0x0

    if-lez p1, :cond_24

    const/4 p1, 0x1

    move v11, p1

    goto :goto_25

    :cond_24
    move v11, p2

    :goto_25
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNext(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZIZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    if-nez p1, :cond_36

    .line 5595
    const-string p0, "InputMethodManagerService"

    const-string p1, "Hardware keyboard switching shortcut, next input method and subtype not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5600
    :cond_36
    iget v2, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-le v2, v4, :cond_43

    .line 5601
    iget-object v5, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v3

    .line 5602
    :goto_44
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p1

    .line 5603
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-nez v1, :cond_59

    goto :goto_8c

    .line 5608
    :cond_59
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-nez v2, :cond_71

    .line 5610
    invoke-static {v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 5611
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    return-void

    :cond_71
    :goto_71
    if-ge p2, v2, :cond_8c

    .line 5618
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v3

    .line 5617
    invoke-virtual {p1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 5619
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    return-void

    :cond_89
    add-int/lit8 p2, p2, 0x1

    goto :goto_71

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final switchToInputMethodLocked(Ljava/lang/String;II)Z
    .registers 6

    .line 5542
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5543
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5544
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 5547
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z
    .registers 12

    .line 4312
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4313
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v2, :cond_a

    return v8

    .line 4317
    :cond_a
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4318
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    move v4, p1

    .line 4317
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNext(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZIZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    if-nez p1, :cond_1b

    return v8

    .line 4323
    :cond_1b
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    iget p2, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .registers 16

    .line 4238
    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4239
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4240
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 4241
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodAndSubtype()Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 4244
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v3

    .line 4248
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v2, :cond_4e

    if-eqz v4, :cond_4e

    .line 4252
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 4253
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v8

    .line 4252
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 4254
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v5, :cond_3e

    move v9, v6

    goto :goto_42

    .line 4256
    :cond_3e
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_42
    if-eqz v7, :cond_46

    if-eq v8, v9, :cond_4e

    .line 4260
    :cond_46
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 4261
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6

    .line 4265
    :cond_4e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_bc

    .line 4266
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 4270
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v5, :cond_75

    .line 4274
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_75

    .line 4275
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    goto :goto_81

    .line 4277
    :cond_75
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_81
    move v10, v9

    :goto_82
    if-ge v10, v7, :cond_bc

    .line 4280
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 4281
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v12

    if-lez v12, :cond_b9

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 4284
    invoke-static {v11}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "keyboard"

    .line 4283
    invoke-static {v12, v13, v5, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v12

    if-eqz v12, :cond_b9

    .line 4287
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 4289
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v6

    .line 4288
    invoke-static {v11, v6}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6

    .line 4290
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b9

    goto :goto_bc

    :cond_b9
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 4298
    :cond_bc
    :goto_bc
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 4299
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4300
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v2, p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 4299
    const-string v2, "Switch to: %s, %s, from: %s, %s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4301
    invoke-virtual {p0, v3, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    return v8

    :cond_df
    return v9
.end method

.method public final switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .registers 10

    .line 1368
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1369
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1369
    const-string v3, "Switching user stage 1/3. newUserId=%s prevUserId=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 1377
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 v2, 0x6

    .line 1379
    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1386
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 1388
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1389
    const-string v2, "default_input_method"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1392
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Switching user stage 2/3. newUserId=%s defaultImiId=%s"

    invoke-static {v1, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1400
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1402
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 1403
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1405
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1408
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    :cond_58
    const/4 v4, 0x1

    .line 1410
    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 1417
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    if-eqz v4, :cond_6d

    .line 1419
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, p1, v6, v4}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_6d
    if-eqz v2, :cond_7c

    .line 1424
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1425
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1426
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1424
    invoke-static {v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1429
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchPollingRate()V

    .line 1431
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    .line 1433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1434
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1433
    const-string v2, "Switching user stage 3/3. newUserId=%s selectedIme=%s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_b0

    if-eqz p2, :cond_b0

    .line 1437
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p0

    if-nez p0, :cond_a9

    goto :goto_b0

    .line 1442
    :cond_a9
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p1, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessary(Z)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public systemRunning()V
    .registers 12

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->waitForUserInitialization()V

    .line 1482
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1483
    :try_start_6
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "--- systemReady"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1484
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_a5

    const/4 v0, 0x1

    .line 1485
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1486
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1489
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchPollingRate()V

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    .line 1495
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1496
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1497
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 1498
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 1499
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v4

    .line 1500
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    .line 1499
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 1503
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverForAllUsers()V

    .line 1504
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_soft_keyboard_mode"

    const-string v5, "default_input_method"

    const-string v7, "enabled_input_methods"

    const-string/jumbo v8, "selected_input_method_subtype"

    const-string/jumbo v9, "stylus_handwriting_enabled"

    filled-new-array {v4, v5, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V

    .line 1517
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1518
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1519
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1523
    invoke-static {}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->startWriterThread()V

    .line 1525
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_98
    if-ge v3, v2, :cond_a5

    aget v4, v0, v3

    .line 1526
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    :catchall_a2
    move-exception v0

    move-object p0, v0

    goto :goto_a7

    .line 1529
    :cond_a5
    monitor-exit v1

    return-void

    :goto_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_6 .. :try_end_a8} :catchall_a2

    throw p0
.end method

.method public unbindCurrentClientLocked(II)V
    .registers 8

    .line 1853
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1854
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_5f

    .line 1855
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1856
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1855
    const-string/jumbo v3, "unbindCurrentInputLocked: client=%s"

    invoke-static {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1857
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1858
    iget-boolean v2, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    .line 1859
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1860
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1862
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1865
    :cond_2c
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    .line 1870
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 1872
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethod(II)V

    .line 1874
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iput-boolean v3, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 1875
    iput-boolean v3, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    const/4 p1, 0x0

    .line 1876
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1877
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1879
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 1881
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->hide(II)V

    :cond_5f
    return-void
.end method

.method public final updateDefaultVoiceImeIfNeededLocked(I)V
    .registers 7

    .line 5349
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5350
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104002e

    .line 5351
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5352
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getDefaultVoiceInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5354
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5353
    invoke-static {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->chooseSystemVoiceIme(Lcom/android/server/inputmethod/InputMethodMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-nez v1, :cond_31

    .line 5356
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Found no valid default Voice IME. If the user is still locked, this may be expected."

    invoke-static {p0, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5360
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 5361
    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    return-void

    .line 5367
    :cond_31
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_3b
    return-void

    .line 5370
    :cond_3c
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 5370
    const-string v4, "Enabling the default Voice IME: %s userId: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5372
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5373
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final updateImeWindowStatusLocked(ZI)V
    .registers 4

    .line 2791
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p2

    if-eqz p1, :cond_13

    .line 2793
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    const/4 v0, 0x0

    .line 2794
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void

    .line 2796
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    return-void
.end method

.method public updateInputMethodsFromSettingsLocked(ZI)V
    .registers 13

    .line 2856
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_51

    .line 2858
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2861
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 2862
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_51

    .line 2865
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2868
    :try_start_20
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x8000

    .line 2869
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v8

    .line 2868
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-object v7, v2

    :goto_31
    if-eqz v7, :cond_4e

    .line 2873
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v7, v1, :cond_4e

    .line 2875
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2876
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 2875
    const-string v9, "Update state(%s): DISABLED_UNTIL_USED -> DEFAULT"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2877
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v4, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 2884
    :cond_51
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 2885
    iget-object v3, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2886
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v3

    if-nez v3, :cond_86

    .line 2887
    const-string v3, "default_input_method"

    invoke-static {v3, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2889
    const-string v5, "default_device_input_method"

    invoke-static {v5, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_86

    .line 2891
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    .line 2892
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2895
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v8, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2892
    const-string v8, "Current input method %s differs from the stored default device input method for user %s - restoring %s"

    invoke-static {v7, v8, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    invoke-static {v3, v6, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2898
    invoke-static {v5, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2907
    :cond_86
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 2909
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 2910
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 2912
    :cond_9a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 2914
    :try_start_a0
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_a7} :catch_a8

    goto :goto_c7

    :catch_a8
    move-exception v1

    .line 2916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    .line 2917
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    goto :goto_c7

    .line 2921
    :cond_c4
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    .line 2924
    :goto_c7
    iget-object p2, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public final updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .registers 13

    .line 2595
    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2598
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_b

    goto :goto_5d

    :cond_b
    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 2602
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "hide the small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2603
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    return-void

    :cond_1b
    if-eqz p1, :cond_5d

    .line 2605
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v2, "show a small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2606
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2607
    invoke-static {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2611
    :try_start_30
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    .line 2610
    invoke-virtual {p3, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-object v0, v2

    :goto_3a
    if-eqz v0, :cond_41

    .line 2615
    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_42

    :cond_41
    move-object p3, v2

    .line 2617
    :goto_42
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v3, :cond_5d

    .line 2618
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    if-eqz p3, :cond_4e

    .line 2620
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4e
    move-object v8, v2

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    .line 2618
    invoke-interface/range {v3 .. v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2621
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public updateSystemUiLocked(I)V
    .registers 4

    .line 2803
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2804
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v1

    .line 2805
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v0

    .line 2804
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public final updateSystemUiLocked(III)V
    .registers 12

    .line 2813
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_9

    goto :goto_15

    .line 2816
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2817
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2818
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_16

    :goto_15
    return-void

    .line 2822
    :cond_16
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v2

    .line 2823
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-int/lit8 v5, p1, 0x1

    .line 2824
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 v6, p1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2825
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 2823
    const-string v5, "IME window vis: %s active: %s visible: %s displayId: %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2826
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v0, :cond_48

    .line 2828
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 2832
    :goto_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v0, :cond_5a

    .line 2834
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5a

    and-int/lit8 p1, p1, -0x3

    goto :goto_5a

    :catchall_58
    move-exception p0

    goto :goto_80

    .line 2838
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v0

    .line 2839
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v1

    .line 2838
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    :cond_70
    const/4 p2, 0x3

    .line 2844
    :cond_71
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p3

    .line 2845
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_7c

    .line 2846
    invoke-interface {p0, v2, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setImeWindowStatus(IIIZ)V
    :try_end_7c
    .catchall {:try_start_4f .. :try_end_7c} :catchall_58

    .line 2850
    :cond_7c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_80
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2851
    throw p0
.end method

.method public final updateTouchHovering()V
    .registers 6

    .line 2951
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2955
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 2956
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "feature_touch_hovering"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    move v4, v2

    .line 2958
    :cond_24
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final updateTouchPollingRate()V
    .registers 6

    .line 2929
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2933
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 2934
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_touch_polling_rate_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    move v4, v2

    .line 2936
    :cond_24
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final updateTouchSensitivity()V
    .registers 6

    .line 2940
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2944
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 2945
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_touch_sensitivity_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    move v4, v2

    .line 2947
    :cond_24
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .registers 4

    .line 6813
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 6815
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public final verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 3325
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_17

    .line 3327
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not belong to the same user. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    monitor-exit v0

    return v1

    :catchall_15
    move-exception p0

    goto :goto_54

    :cond_17
    const/4 p1, 0x1

    and-int/2addr p4, p1

    if-eqz p4, :cond_1d

    move p4, p1

    goto :goto_1e

    :cond_1d
    move p4, v1

    .line 3334
    :goto_1e
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatorPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3d

    if-eqz p4, :cond_34

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 3336
    invoke-virtual {p3}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegatorFromDefaultHomePackage()Z

    move-result p3

    if-nez p3, :cond_3d

    .line 3337
    :cond_34
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegator package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    monitor-exit v0

    return v1

    .line 3341
    :cond_3d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    .line 3342
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    monitor-exit v0

    return v1

    .line 3346
    :cond_52
    monitor-exit v0

    return p1

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_15

    throw p0
.end method

.method public final waitForUserInitialization()V
    .registers 13

    .line 1447
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xbb8

    .line 1449
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    .line 1452
    :try_start_14
    array-length v4, v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_62

    move v5, v3

    :goto_16
    if-ge v3, v4, :cond_58

    :try_start_18
    aget v6, v0, v3

    .line 1453
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_50

    .line 1458
    :goto_20
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v8, v1, v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1459
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_32} :catch_56
    .catchall {:try_start_20 .. :try_end_32} :catchall_50

    if-nez v7, :cond_53

    .line 1466
    :try_start_34
    const-string v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timed out for user#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to be initialized"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_50

    goto :goto_53

    :catchall_50
    move-exception p0

    move v3, v5

    goto :goto_63

    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :catch_56
    const/4 v5, 0x1

    goto :goto_20

    :cond_58
    if-eqz v5, :cond_61

    .line 1471
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_61
    return-void

    :catchall_62
    move-exception p0

    :goto_63
    if-eqz v3, :cond_6c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1473
    :cond_6c
    throw p0
.end method
