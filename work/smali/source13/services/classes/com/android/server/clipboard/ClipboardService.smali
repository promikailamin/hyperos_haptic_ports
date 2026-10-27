.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$LocalService;,
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final DEFAULT_MAX_CLASSIFICATION_LENGTH:I = 0x190

.field private static final IS_EMULATOR:Z

.field public static final PROPERTY_AUTO_CLEAR_ENABLED:Ljava/lang/String; = "auto_clear_enabled"

.field public static final PROPERTY_AUTO_CLEAR_TIMEOUT:Ljava/lang/String; = "auto_clear_timeout"

.field private static final PROPERTY_MAX_CLASSIFICATION_LENGTH:Ljava/lang/String; = "max_classification_length"

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private final mEmulatorClipboardMonitor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxClassificationLength:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShowAccessNotifications:Z

.field private final mUgm:Landroid/app/IUriGrantsManager;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUm:Landroid/os/IUserManager;

.field private final mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field private final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZZ)Z
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveActivePermissionOwnerForPackage(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->removeActivePermissionOwnerForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 117
    nop

    .line 118
    const-string/jumbo v0, "ro.boot.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 161
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 172
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 173
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 174
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 175
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 177
    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 179
    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IUserManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 181
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 182
    const-class v2, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 183
    const-string v2, "clipboard"

    invoke-interface {v0, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 184
    .local v0, "permOwner":Landroid/os/IBinder;
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 185
    sget-boolean v3, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz v3, :cond_96

    .line 186
    new-instance v3, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v3, v4}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_9d

    .line 193
    :cond_96
    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>()V

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    .line 196
    :goto_9d
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 197
    nop

    .line 198
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 197
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 200
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ClipboardService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 202
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    .line 204
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/clipboard/ClipboardServiceStub;->init(Landroid/content/Context;Landroid/app/AppOpsManager;)V

    .line 205
    return-void
.end method

.method private addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1029
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1030
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1031
    .local v1, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1033
    .local v2, "oldIdentity":J
    const-wide/16 v4, 0x0

    :try_start_e
    invoke-interface {v0, p2, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1034
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_42

    .line 1037
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_1f

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_61

    .line 1038
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1f
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not own package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "targetUserHandle":I
    .end local v2    # "oldIdentity":J
    .end local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .end local p1    # "uid":I
    .end local p2    # "pkg":Ljava/lang/String;
    throw v5

    .line 1035
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1    # "targetUserHandle":I
    .restart local v2    # "oldIdentity":J
    .restart local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .restart local p1    # "uid":I
    .restart local p2    # "pkg":Ljava/lang/String;
    :cond_42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "targetUserHandle":I
    .end local v2    # "oldIdentity":J
    .end local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .end local p1    # "uid":I
    .end local p2    # "pkg":Ljava/lang/String;
    throw v5
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5b} :catch_60
    .catchall {:try_start_e .. :try_end_5b} :catchall_5b

    .line 1044
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1    # "targetUserHandle":I
    .restart local v2    # "oldIdentity":J
    .restart local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .restart local p1    # "uid":I
    .restart local p2    # "pkg":Ljava/lang/String;
    :catchall_5b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    throw v4

    .line 1041
    :catch_60
    move-exception v4

    .line 1044
    :goto_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    nop

    .line 1046
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    .line 1047
    .local v4, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_99

    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 1048
    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    .line 1049
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_80
    if-ge v6, v5, :cond_94

    .line 1050
    iget-object v7, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v7, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 1051
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1050
    invoke-direct {p0, v7, v8, p2, v9}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    .line 1049
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 1053
    .end local v6    # "i":I
    :cond_94
    iget-object v6, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v5    # "N":I
    :cond_99
    return-void
.end method

.method private applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .registers 7
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p3, "links"    # Landroid/view/textclassifier/TextLinks;
    .param p4, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/view/textclassifier/TextLinks;",
            "Landroid/view/textclassifier/TextClassifier;",
            ")V"
        }
    .end annotation

    .line 928
    .local p2, "confidences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 929
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 930
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 931
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 933
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 934
    return-void
.end method

.method private checkDataOwner(Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .line 980
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 981
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 982
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 984
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private checkItemOwner(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .line 970
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 971
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 973
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 974
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 975
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 977
    :cond_20
    return-void
.end method

.method private checkUriOwner(Landroid/net/Uri;I)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 955
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 957
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 960
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    .line 961
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    .line 963
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 960
    move v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2c

    .line 965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    nop

    .line 967
    return-void

    .line 965
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    throw v2

    .line 955
    .end local v0    # "ident":J
    :cond_31
    :goto_31
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;II)Z
    .registers 11
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I

    .line 1093
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;IIZ)Z
    .registers 13
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "shouldNoteOp"    # Z

    .line 1099
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZZ)Z

    move-result v0

    return v0
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;IIZZ)Z
    .registers 15
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "shouldNoteOp"    # Z
    .param p6, "ignoreAsk"    # Z

    .line 1104
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZZZ)Z

    move-result v0

    return v0
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;IIZZZ)Z
    .registers 14
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "shouldNoteOp"    # Z
    .param p6, "ignoreAsk"    # Z
    .param p7, "ignoreDeny"    # Z

    .line 1113
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const-string v1, "ClipboardService"

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {v0, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clipboard access denied to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " within a virtual device session"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v2

    .line 1123
    :cond_39
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 1125
    const/4 v0, 0x1

    .local v0, "allowed":Z
    goto :goto_49

    .line 1128
    .end local v0    # "allowed":Z
    :cond_45
    invoke-direct {p0, p4, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    .line 1131
    .restart local v0    # "allowed":Z
    :goto_49
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_e8

    .line 1169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown clipboard appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1166
    :pswitch_66
    const/4 v0, 0x1

    .line 1167
    goto :goto_9b

    .line 1138
    :pswitch_68
    if-nez v0, :cond_87

    .line 1139
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v4

    if-nez v4, :cond_85

    .line 1142
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 1143
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/clipboard/ClipboardServiceStub;->isUidFocused(I)Z

    move-result v4

    if-eqz v4, :cond_83

    goto :goto_85

    :cond_83
    move v4, v2

    goto :goto_86

    :cond_85
    :goto_85
    move v4, v3

    :goto_86
    move v0, v4

    .line 1145
    :cond_87
    if-nez v0, :cond_91

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v4, :cond_91

    .line 1152
    invoke-virtual {v4, p3, p4}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    .line 1154
    :cond_91
    if-nez v0, :cond_9b

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v4, :cond_9b

    .line 1161
    invoke-virtual {v4, p3, p4}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    .line 1171
    :cond_9b
    :goto_9b
    if-nez v0, :cond_be

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denying clipboard access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", application is not in focus nor is it a system service for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return v2

    .line 1185
    :cond_be
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 1186
    .local v1, "appOpsResult":I
    const/4 v4, 0x5

    if-eqz p5, :cond_db

    .line 1187
    const/16 v5, 0x1d

    if-ne p1, v5, :cond_d4

    if-eqz p6, :cond_cf

    if-eq v1, v4, :cond_d3

    :cond_cf
    if-eqz p7, :cond_d4

    if-ne v1, v3, :cond_d4

    .line 1190
    :cond_d3
    return v3

    .line 1192
    :cond_d4
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    goto :goto_e4

    .line 1195
    :cond_db
    if-eqz p6, :cond_df

    if-eq v1, v4, :cond_e3

    :cond_df
    if-eqz p7, :cond_e4

    if-ne v1, v3, :cond_e4

    .line 1197
    :cond_e3
    return v3

    .line 1201
    :cond_e4
    :goto_e4
    if-nez v1, :cond_e7

    move v2, v3

    :cond_e7
    return v2

    :pswitch_data_e8
    .packed-switch 0x1d
        :pswitch_68
        :pswitch_66
    .end packed-switch
.end method

.method private createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .registers 5
    .param p1, "userId"    # I

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 1333
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationManager;

    return-object v1
.end method

.method private doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .registers 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p4, "userId"    # I

    .line 880
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v5

    .line 881
    .local v5, "request":Landroid/view/textclassifier/TextLinks$Request;
    invoke-interface {v3, v5}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v6

    .line 884
    .local v6, "links":Landroid/view/textclassifier/TextLinks;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v0

    .line 885
    .local v7, "confidences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 886
    .local v8, "link":Landroid/view/textclassifier/TextLinks$TextLink;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_30
    invoke-virtual {v8}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v10

    if-ge v9, v10, :cond_5b

    .line 887
    invoke-virtual {v8, v9}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v10

    .line 888
    .local v10, "entity":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v11

    .line 889
    .local v11, "conf":F
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_58

    .line 890
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .end local v10    # "entity":Ljava/lang/String;
    .end local v11    # "conf":F
    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 893
    .end local v8    # "link":Landroid/view/textclassifier/TextLinks$TextLink;
    .end local v9    # "i":I
    :cond_5b
    goto :goto_23

    .line 895
    :cond_5c
    iget-object v8, v1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 896
    :try_start_5f
    invoke-direct {v1, v4}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 897
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v9, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_a0

    move-object/from16 v10, p2

    if-ne v9, v10, :cond_9e

    .line 898
    :try_start_69
    invoke-direct {v1, v0, v7, v6, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 902
    invoke-virtual {v1, v4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v9

    .line 903
    .local v9, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v9, :cond_9e

    .line 904
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 905
    .local v11, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_77
    if-ge v12, v11, :cond_9e

    .line 906
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    .line 907
    .local v13, "id":I
    if-eq v13, v4, :cond_9b

    .line 908
    const-string/jumbo v14, "no_sharing_into_profile"

    invoke-direct {v1, v14, v13}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    .line 910
    .local v14, "canCopyIntoProfile":Z
    if-eqz v14, :cond_9b

    .line 911
    invoke-direct {v1, v13}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v15

    .line 912
    .local v15, "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v1, v15, v2}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9b

    .line 913
    invoke-direct {v1, v15, v7, v6, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 905
    .end local v13    # "id":I
    .end local v14    # "canCopyIntoProfile":Z
    .end local v15    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_9b
    add-int/lit8 v12, v12, 0x1

    goto :goto_77

    .line 921
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v9    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "size":I
    .end local v12    # "i":I
    :cond_9e
    monitor-exit v8

    .line 922
    return-void

    .line 921
    :catchall_a0
    move-exception v0

    move-object/from16 v10, p2

    :goto_a3
    monitor-exit v8
    :try_end_a4
    .catchall {:try_start_69 .. :try_end_a4} :catchall_a5

    throw v0

    :catchall_a5
    move-exception v0

    goto :goto_a3
.end method

.method private getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 4
    .param p1, "userId"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 685
    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_15

    .line 686
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    move-object v0, v1

    .line 687
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    :cond_15
    return-object v0
.end method

.method private getIntendingUid(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result v0

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 344
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method private getIntendingUserId(Ljava/lang/String;I)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 323
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 324
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_27

    if-ne v1, p2, :cond_11

    goto :goto_27

    .line 328
    :cond_11
    move v2, v1

    .line 329
    .local v2, "intendingUserId":I
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 329
    const-string v9, "checkClipboardServiceCallingUser"

    move v6, p2

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 333
    return v2

    .line 325
    .end local v2    # "intendingUserId":I
    :cond_27
    :goto_27
    return v1
.end method

.method private grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .registers 7
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 1018
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1019
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1021
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1022
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1023
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1025
    :cond_20
    return-void
.end method

.method private grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 988
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_7c

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    move-object/from16 v15, p3

    goto/16 :goto_7e

    .line 990
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 992
    .local v3, "ident":J
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->isEnabled()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_34

    .line 993
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    move-object/from16 v15, p3

    invoke-interface {v0, v2, v15}, Lcom/xiaomi/mirror/MirrorServiceStub;->isGrantAllowed(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v5

    goto :goto_37

    .line 992
    :cond_34
    move-object/from16 v15, p3

    .line 993
    :cond_36
    move v0, v6

    :goto_37
    move/from16 v16, v0

    .line 994
    .local v16, "allowGrant":Z
    if-eqz v16, :cond_42

    .line 995
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/xiaomi/mirror/MirrorServiceStub;->setAllowGrant(Z)V

    .line 999
    :cond_42
    :try_start_42
    iget-object v7, v1, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v8, v1, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1000
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    .line 1002
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v13

    .line 999
    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v14, p4

    invoke-interface/range {v7 .. v14}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5c} :catch_6d
    .catchall {:try_start_42 .. :try_end_5c} :catchall_5f

    .line 1008
    if-eqz v16, :cond_77

    .line 1009
    goto :goto_70

    .line 1008
    :catchall_5f
    move-exception v0

    if-eqz v16, :cond_69

    .line 1009
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/xiaomi/mirror/MirrorServiceStub;->setAllowGrant(Z)V

    .line 1012
    :cond_69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1013
    throw v0

    .line 1004
    :catch_6d
    move-exception v0

    .line 1008
    if-eqz v16, :cond_77

    .line 1009
    :goto_70
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/xiaomi/mirror/MirrorServiceStub;->setAllowGrant(Z)V

    .line 1012
    :cond_77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1013
    nop

    .line 1014
    return-void

    .line 988
    .end local v3    # "ident":J
    .end local v16    # "allowGrant":Z
    :cond_7c
    move-object/from16 v15, p3

    :goto_7e
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 712
    :catch_7
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClipboardService"

    const-string v2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    const/4 v1, 0x1

    return v1
.end method

.method private hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 938
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 939
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 940
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 938
    :goto_20
    return v1
.end method

.method private isDefaultIme(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "defaultIme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1208
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "imePkg":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1211
    .end local v1    # "imePkg":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private isDeviceLocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 946
    .local v0, "token":J
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 948
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 950
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    return v3

    .line 950
    .end local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    throw v2
.end method

.method private isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 294
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 295
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static isText(Landroid/content/ClipData;)Z
    .registers 5
    .param p0, "data"    # Landroid/content/ClipData;

    .line 1280
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    .line 1281
    return v2

    .line 1283
    :cond_9
    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1285
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_24

    .line 1286
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    .line 1285
    :goto_25
    return v1
.end method

.method static synthetic lambda$new$1(Landroid/content/ClipData;)V
    .registers 1
    .param p0, "clip"    # Landroid/content/ClipData;

    .line 193
    return-void
.end method

.method static synthetic lambda$notifyTextClassifierLocked$5(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V
    .registers 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1318
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 1321
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 1325
    const-string/jumbo v2, "source_package"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1324
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 1326
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object v0

    .line 1327
    .local v0, "pasteEvent":Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
    invoke-interface {p2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 1328
    return-void
.end method

.method private notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .registers 8
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 1293
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    .line 1294
    return-void

    .line 1296
    :cond_5
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1297
    .local v0, "item":Landroid/content/ClipData$Item;
    if-nez v0, :cond_f

    .line 1298
    return-void

    .line 1300
    :cond_f
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1301
    return-void

    .line 1303
    :cond_18
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1305
    .local v1, "textClassifier":Landroid/view/textclassifier/TextClassifier;
    if-nez v1, :cond_1d

    .line 1306
    return-void

    .line 1309
    :cond_1d
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1310
    return-void

    .line 1313
    :cond_26
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1314
    return-void

    .line 1316
    :cond_2f
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1317
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1, v1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1329
    return-void
.end method

.method private removeActivePermissionOwnerForPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1390
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 1391
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1392
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_17

    .line 1394
    :cond_12
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1396
    :goto_17
    return-void
.end method

.method private revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I

    .line 1072
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1073
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1075
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1076
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1077
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1079
    :cond_20
    return-void
.end method

.method private revokeUriPermission(Landroid/net/Uri;I)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 1058
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 1060
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1062
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1063
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 1065
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 1062
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2c

    .line 1067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    nop

    .line 1069
    return-void

    .line 1067
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    throw v2

    .line 1058
    .end local v0    # "ident":J
    :cond_31
    :goto_31
    return-void
.end method

.method private revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 6
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 1082
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    .line 1083
    return-void

    .line 1085
    :cond_5
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 1086
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 1087
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1089
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 14
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 823
    .local v0, "ident":J
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 825
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_44

    .line 827
    :try_start_d
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 828
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 830
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    const/16 v6, 0x1d

    iget-object v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget v5, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 833
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 830
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZZ)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 834
    iget-object v5, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    .line 835
    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_35} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_35} :catch_40
    .catchall {:try_start_d .. :try_end_35} :catchall_36

    .line 840
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_35
    goto :goto_41

    .line 843
    .end local v3    # "i":I
    :catchall_36
    move-exception v3

    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 844
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    throw v3

    .line 837
    .restart local v3    # "i":I
    :catch_40
    move-exception v4

    .line 825
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 843
    .end local v3    # "i":I
    :cond_44
    iget-object v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 844
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    nop

    .line 846
    return-void
.end method

.method private setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 13
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "sourcePackage"    # Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 730
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 733
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 737
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_6d

    .line 738
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 739
    .local v2, "size":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_6d

    .line 740
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-direct {p0, v4, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 744
    .local v4, "canCopy":Z
    if-nez v4, :cond_29

    .line 745
    const/4 p1, 0x0

    goto :goto_4b

    .line 746
    :cond_29
    if-nez p1, :cond_2c

    goto :goto_4b

    .line 755
    :cond_2c
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    move-object p1, v5

    .line 756
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_37
    if-ltz v5, :cond_48

    .line 757
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 756
    add-int/lit8 v5, v5, -0x1

    goto :goto_37

    .line 759
    .end local v5    # "i":I
    :cond_48
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 761
    :goto_4b
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4c
    if-ge v5, v2, :cond_6d

    .line 762
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 763
    .local v6, "id":I
    if-eq v6, v0, :cond_6a

    .line 764
    const-string/jumbo v7, "no_sharing_into_profile"

    invoke-direct {p0, v7, v6}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 766
    .local v7, "canCopyIntoProfile":Z
    if-eqz v7, :cond_6a

    .line 767
    nop

    .line 768
    invoke-direct {p0, v6}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v8

    .line 767
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 761
    .end local v6    # "id":I
    .end local v7    # "canCopyIntoProfile":Z
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 774
    .end local v2    # "size":I
    .end local v4    # "canCopy":Z
    .end local v5    # "i":I
    :cond_6d
    return-void
.end method

.method private setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 6
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 786
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 787
    .local v0, "userId":I
    if-eqz p2, :cond_9

    .line 788
    invoke-direct {p0, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;I)V

    .line 791
    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 792
    return-void
.end method

.method private setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 8
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 797
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 798
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 799
    if-nez p2, :cond_f

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_f

    .line 800
    return-void

    .line 802
    :cond_f
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 803
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 804
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 805
    if-eqz p2, :cond_22

    .line 806
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 807
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_29

    .line 809
    :cond_22
    const/16 v0, 0x270f

    iput v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 810
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 812
    :goto_29
    if-eqz p2, :cond_38

    .line 813
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 814
    .local v0, "description":Landroid/content/ClipDescription;
    if-eqz v0, :cond_38

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 818
    .end local v0    # "description":Landroid/content/ClipDescription;
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 819
    return-void
.end method

.method private showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 1223
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    .line 1224
    return-void

    .line 1226
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1228
    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 1226
    const-string v2, "clipboard_show_access_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    .line 1229
    return-void

    .line 1232
    :cond_18
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1233
    return-void

    .line 1236
    :cond_21
    invoke-direct {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1237
    return-void

    .line 1239
    :cond_28
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_33

    .line 1240
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1241
    return-void

    .line 1243
    :cond_33
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v0, :cond_3e

    .line 1244
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1245
    return-void

    .line 1247
    :cond_3e
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    .line 1249
    return-void

    .line 1252
    :cond_49
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1253
    return-void

    .line 1255
    :cond_52
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1257
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1271
    return-void
.end method

.method private startClassificationLocked(Landroid/content/ClipData;I)V
    .registers 13
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "userId"    # I

    .line 850
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_11
    move-object v3, v0

    .line 851
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_6b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_22

    goto :goto_6b

    .line 857
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 859
    .local v7, "ident":J
    :try_start_26
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 862
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-direct {v2, v4, v5}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    .line 860
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v5
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_66

    .line 867
    .local v5, "classifier":Landroid/view/textclassifier/TextClassifier;
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    nop

    .line 869
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v5}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    if-le v0, v2, :cond_57

    .line 870
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    .line 872
    return-void

    .line 874
    :cond_57
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    return-void

    .line 867
    .end local v5    # "classifier":Landroid/view/textclassifier/TextClassifier;
    :catchall_66
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    throw v0

    .line 852
    .end local v7    # "ident":J
    :cond_6b
    :goto_6b
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    .line 854
    return-void
.end method

.method private updateConfig()V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 228
    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 696
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 701
    .local v2, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    nop

    .line 703
    return-object v2

    .line 701
    .end local v2    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_10
    move-exception v2

    goto :goto_30

    .line 697
    :catch_12
    move-exception v2

    .line 698
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v3, "ClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception calling UserManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_10

    .line 699
    const/4 v3, 0x0

    .line 701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    return-object v3

    .line 701
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    throw v2
.end method

.method synthetic lambda$new$0$com-android-server-clipboard-ClipboardService(Landroid/content/ClipData;)V
    .registers 6
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 187
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$new$2$com-android-server-clipboard-ClipboardService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 198
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method synthetic lambda$showAccessNotificationLocked$4$com-android-server-clipboard-ClipboardService(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 1260
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1259
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1261
    .local v0, "callingAppLabel":Ljava/lang/CharSequence;
    nop

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040681

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ClipboardService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    nop

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 1264
    invoke-static {v2, v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1266
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_35} :catch_36

    .line 1269
    .end local v0    # "callingAppLabel":Ljava/lang/CharSequence;
    .end local v1    # "message":Ljava/lang/String;
    goto :goto_37

    .line 1267
    :catch_36
    move-exception v0

    .line 1270
    :goto_37
    return-void
.end method

.method synthetic lambda$startClassificationLocked$3$com-android-server-clipboard-ClipboardService(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p4, "userId"    # I

    .line 874
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 209
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl-IA;)V

    const-string v2, "clipboard"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 211
    const-class v0, Lcom/android/server/clipboard/ClipboardManagerInternal;

    new-instance v2, Lcom/android/server/clipboard/ClipboardService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/clipboard/ClipboardService$LocalService;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/clipboard/ClipboardService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 217
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .registers 5
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .line 720
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    .line 722
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 780
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method
