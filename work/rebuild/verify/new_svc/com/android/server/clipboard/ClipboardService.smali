.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# static fields
.field public static final CLIP_DATA_TYPES_UNKNOWN:[I

.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L


# instance fields
.field public mAllowVirtualDeviceSilos:Z

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public final mClipboardMonitor:Ljava/util/function/Consumer;

.field public final mClipboards:Landroid/util/SparseArrayMap;

.field public final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public mMaxClassificationLength:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mShowAccessNotifications:Z

.field public final mSuppressAccessNotification:Landroid/util/SparseLongArray;

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUm:Landroid/os/IUserManager;

.field public final mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

.field public final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-iVajhu1BdDLwVL21Gia1rYVqHs(Landroid/content/ClipData;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$5ztocsQ0UcPtrhccM09yKp3YwrI(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$0(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KoTDMHoMReNv9FaUWUQ84N8AqY(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-TpVE8l_CLZQqJ0xPbAIb9y5rw(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V
    .registers 6

    .line 1673
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object p0

    .line 1676
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const-string/jumbo v0, "source_package"

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 1680
    invoke-static {v0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1679
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 1681
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object p0

    .line 1682
    invoke-interface {p2, p0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJFv3zAvb_A-0-b2Lx2yX-CeeW8(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGs07o6FG9mH9YmtAW6YKrtG7Ng(Lcom/android/server/clipboard/ClipboardService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$scheduleWriteClipDataStats$8(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjkWPqxIFXcn85FolUIVmCDrYVA(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7_APSHIm3pbFwhRmsfO8bONIik(Lcom/android/server/clipboard/ClipboardService;IILandroid/util/IntArray;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->lambda$scheduleWriteClipDataStats$7(IILandroid/util/IntArray;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1KAIyB809nPOPX3NCfiDWMeAGE(Lcom/android/server/clipboard/ClipboardService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClipboards(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuppressAccessNotification(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mSuppressAccessNotification:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingDeviceId(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleWriteClipDataStats(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->scheduleWriteClipDataStats(Landroid/content/ClipData;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 158
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/clipboard/ClipboardService;->CLIP_DATA_TYPES_UNKNOWN:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 187
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mSuppressAccessNotification:Landroid/util/SparseLongArray;

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 193
    iput-boolean p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    const/16 p1, 0x190

    .line 197
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 200
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 208
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 209
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 210
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 211
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 213
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_53

    const/4 v0, 0x0

    goto :goto_5f

    .line 214
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    :goto_5f
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 216
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 217
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 219
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 220
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 221
    const-string v0, "clipboard"

    invoke-interface {p1, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 222
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 223
    sget-boolean p1, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz p1, :cond_b1

    .line 224
    new-instance p1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_c9

    .line 233
    :cond_b1
    sget-boolean p1, Landroid/os/Build;->IS_ARC:Z

    if-eqz p1, :cond_c2

    .line 234
    new-instance p1, Lcom/android/server/clipboard/ArcClipboardMonitor;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v1}, Lcom/android/server/clipboard/ArcClipboardMonitor;-><init>(Ljava/util/function/BiConsumer;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_c9

    .line 238
    :cond_c2
    new-instance p1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 241
    :goto_c9
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 243
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 242
    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 245
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ClipboardService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 247
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isText(Landroid/content/ClipData;)Z
    .registers 4

    .line 1635
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    return v1

    .line 1638
    :cond_9
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    .line 1640
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_24

    .line 1641
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_24

    return v2

    :cond_24
    return v1
.end method

.method public static mimeTypeToClipDataType(Ljava/lang/String;)I
    .registers 2

    .line 1692
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    goto :goto_58

    :sswitch_8
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_58

    :sswitch_e
    const-string/jumbo v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x1

    return p0

    :sswitch_19
    const-string v0, "application/vnd.android.shortcut"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x6

    return p0

    :sswitch_23
    const-string/jumbo v0, "text/vnd.android.intent"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x4

    return p0

    :sswitch_2e
    const-string/jumbo v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x2

    return p0

    :sswitch_39
    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x5

    return p0

    :sswitch_43
    const-string/jumbo v0, "text/uri-list"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x3

    return p0

    :sswitch_4e
    const-string v0, "application/vnd.android.task"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x7

    return p0

    :cond_58
    :goto_58
    const/4 p0, 0x0

    return p0

    :sswitch_data_5a
    .sparse-switch
        -0x7c0f397b -> :sswitch_4e
        -0x7035d0ff -> :sswitch_43
        -0x50a9fbf1 -> :sswitch_39
        -0x4081b8b3 -> :sswitch_2e
        -0x3d8f0761 -> :sswitch_23
        -0x26012ba -> :sswitch_19
        0x30b78e68 -> :sswitch_e
        0x463e3f9d -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final addActiveOwnerLocked(IILjava/lang/String;)V
    .registers 13

    .line 1289
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1290
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-wide/16 v3, 0x0

    move v5, p1

    move-object v2, p3

    .line 1293
    :try_start_15
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;JII)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_74

    if-eqz p1, :cond_55

    .line 1297
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1299
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 1300
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p2, :cond_54

    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 1301
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    .line 1302
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_3b
    if-ge p3, p2, :cond_4f

    .line 1304
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1305
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1304
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3b

    .line 1307
    :cond_4f
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_54
    return-void

    .line 1294
    :cond_55
    :try_start_55
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not own package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    move-object p0, v0

    .line 1297
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    throw p0
.end method

.method public final applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .registers 5

    .line 1200
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1201
    iget-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 1202
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 1203
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1205
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    return-void
.end method

.method public final checkDataOwner(Landroid/content/ClipData;I)V
    .registers 6

    .line 1252
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1254
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public final checkItemOwner(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 1242
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1243
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 1245
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1246
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1247
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method public final checkUriOwner(Landroid/net/Uri;I)V
    .registers 12

    if-eqz p1, :cond_31

    .line 1227
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 1229
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1232
    :try_start_13
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1233
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1235
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v4, p2

    .line 1232
    invoke-interface/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2b

    .line 1237
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    throw p0

    :cond_31
    :goto_31
    return-void
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1352
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .registers 13

    .line 1368
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p4, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 1370
    const-string v1, "ClipboardService"

    const/4 v2, 0x0

    if-ne p6, v0, :cond_2d

    .line 1371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Clipboard access denied to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to invalid device id"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1377
    :cond_2d
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3a

    move v0, v3

    goto :goto_3e

    .line 1382
    :cond_3a
    invoke-virtual {p0, p5, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    :goto_3e
    const/16 v4, 0x1d

    if-eq p1, v4, :cond_5f

    const/16 p6, 0x1e

    if-ne p1, p6, :cond_48

    :goto_46
    move v0, v3

    goto :goto_9b

    .line 1427
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown clipboard appop "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    if-nez v0, :cond_77

    .line 1393
    invoke-virtual {p0, p6, p4}, Lcom/android/server/clipboard/ClipboardService;->isDefaultDeviceAndUidFocused(II)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1394
    invoke-virtual {p0, p6, p4}, Lcom/android/server/clipboard/ClipboardService;->isVirtualDeviceAndUidFocused(II)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1395
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_76

    :cond_74
    move v0, v2

    goto :goto_77

    :cond_76
    :goto_76
    move v0, v3

    :cond_77
    :goto_77
    if-nez v0, :cond_81

    .line 1397
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v4, :cond_81

    .line 1404
    invoke-virtual {v4, p4, p5}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    :cond_81
    if-nez v0, :cond_8b

    .line 1406
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v4, :cond_8b

    .line 1413
    invoke-virtual {v4, p4, p5}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    :cond_8b
    if-nez v0, :cond_9b

    if-eqz p6, :cond_9b

    .line 1418
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_9a

    .line 1419
    invoke-virtual {v0, p6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result p6

    if-ne p6, p4, :cond_9a

    goto :goto_46

    :cond_9a
    move v0, v2

    :cond_9b
    :goto_9b
    if-nez v0, :cond_ba

    .line 1430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Denying clipboard access to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", application is not in focus nor is it a system service for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_ba
    if-eqz p7, :cond_c8

    move-object p5, p3

    move p3, p4

    move-object p4, p2

    move p2, p1

    .line 1438
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 p6, 0x0

    invoke-virtual/range {p1 .. p6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_d1

    :cond_c8
    move p3, p4

    move-object p4, p2

    move p2, p1

    .line 1440
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p0

    :goto_d1
    if-nez p0, :cond_d4

    return v3

    :cond_d4
    return v2
.end method

.method public final createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .registers 3

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1688
    const-class p1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    return-object p0
.end method

.method public final deviceUsesDefaultClipboard(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 483
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez p0, :cond_8

    goto :goto_12

    :cond_8
    const/4 v1, 0x4

    .line 486
    invoke-virtual {p0, p1, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result p0

    if-ne p0, v0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    return v0
.end method

.method public final doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .registers 14

    .line 1148
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    .line 1149
    invoke-interface {p3, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    .line 1152
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1153
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 1154
    :goto_27
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 1155
    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v5

    .line 1156
    invoke-virtual {v3, v5}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x0

    .line 1157
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4f

    .line 1158
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1163
    :cond_52
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1164
    :try_start_55
    invoke-virtual {p0, p4, p5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v3

    if-nez v3, :cond_5f

    .line 1166
    monitor-exit v2

    return-void

    :catchall_5d
    move-exception p0

    goto :goto_99

    .line 1168
    :cond_5f
    iget-object v5, v3, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-ne v5, p2, :cond_97

    .line 1169
    invoke-virtual {p0, v3, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 1173
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_97

    .line 1175
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_70
    if-ge v4, v3, :cond_97

    .line 1177
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p4, :cond_94

    .line 1179
    const-string/jumbo v6, "no_sharing_into_profile"

    invoke-virtual {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_94

    .line 1182
    invoke-virtual {p0, v5, p5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 1184
    invoke-virtual {p0, v5, p1}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1185
    invoke-virtual {p0, v5, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 1193
    :cond_97
    monitor-exit v2

    return-void

    :goto_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_55 .. :try_end_9a} :catchall_5d

    throw p0
.end method

.method public final getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .registers 6

    .line 923
    const-string v0, "ClipboardService"

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    if-nez v1, :cond_74

    const/4 v1, 0x0

    .line 926
    :try_start_11
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v2, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClipboardLocked called with not running userId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception p0

    goto :goto_60

    :cond_30
    if-eqz p2, :cond_51

    .line 934
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v2, :cond_51

    .line 935
    invoke-virtual {v2, p2}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v2

    if-nez v2, :cond_51

    .line 936
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClipboardLocked called with invalid (possibly released) deviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 940
    :cond_51
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    invoke-direct {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService$Clipboard;-><init>(II)V

    .line 941
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 931
    :goto_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException calling UserManager: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-object v1
.end method

.method public final getIntendingDeviceId(II)I
    .registers 8

    .line 427
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 431
    :cond_6
    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 433
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 434
    :try_start_d
    iget-boolean v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    const/4 v4, -0x1

    if-nez v3, :cond_1e

    .line 435
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz p1, :cond_1e

    .line 436
    :cond_1a
    monitor-exit v2

    return v4

    :catchall_1c
    move-exception p0

    goto :goto_7c

    .line 438
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1c

    .line 443
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 444
    invoke-virtual {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v3

    if-nez v3, :cond_23

    move v2, v1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x1

    :goto_3c
    if-nez p1, :cond_42

    if-eqz v2, :cond_41

    return v1

    :cond_41
    return v4

    .line 461
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v3, v1

    goto :goto_4b

    :cond_4a
    move v3, p1

    .line 465
    :goto_4b
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v4

    if-eq v4, p2, :cond_7b

    .line 466
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    if-nez v3, :cond_62

    if-eqz v2, :cond_62

    goto :goto_7b

    .line 473
    :cond_62
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_69

    return v1

    .line 478
    :cond_69
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result p0

    if-eqz p0, :cond_7a

    return v1

    :cond_7a
    return p1

    :cond_7b
    :goto_7b
    return v3

    .line 438
    :goto_7c
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_1c

    throw p0
.end method

.method public final getIntendingUid(Ljava/lang/String;I)I
    .registers 3

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    .line 413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 412
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public final getIntendingUserId(Ljava/lang/String;I)I
    .registers 13

    .line 390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 391
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 392
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_26

    if-ne v0, p2, :cond_11

    goto :goto_26

    .line 397
    :cond_11
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x2

    const-string v8, "checkClipboardServiceCallingUser"

    const/4 v6, 0x0

    move-object v9, p1

    move v5, p2

    .line 397
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public getRelatedProfiles(I)Ljava/util/List;
    .registers 6

    .line 948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 950
    :try_start_4
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v2, 0x1

    invoke-interface {p0, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_2d

    :catch_11
    move-exception p0

    .line 952
    :try_start_12
    const-string p1, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception calling UserManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    .line 955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw p0
.end method

.method public final getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;
    .registers 8

    .line 1583
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1584
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v1, :cond_b

    if-nez p2, :cond_12

    .line 1588
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_12
    if-nez p2, :cond_18

    .line 1591
    iget p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz p1, :cond_9a

    :cond_18
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez p1, :cond_1e

    goto/16 :goto_9a

    .line 1599
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1600
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1601
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v2

    .line 1603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1604
    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_52
    const/4 v2, 0x0

    .line 1611
    :goto_53
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 1612
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1617
    :cond_77
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getToastContexts Couldn\'t find any VirtualDisplays for VirtualDevice "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClipboardService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9a
    :goto_9a
    return-object v0
.end method

.method public final grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .registers 6

    .line 1278
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1279
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1281
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1282
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1283
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_20
    return-void
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16

    if-eqz p1, :cond_37

    .line 1260
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_37

    .line 1262
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1264
    :try_start_13
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1265
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1267
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    const/4 v8, 0x1

    move v5, p2

    move-object v6, p3

    move v10, p4

    .line 1264
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_34
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2e

    .line 1272
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw p0

    .line 1272
    :catch_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_37
    :goto_37
    return-void
.end method

.method public final hasRestriction(Ljava/lang/String;I)Z
    .registers 3

    .line 965
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 967
    const-string p1, "ClipboardService"

    const-string p2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z
    .registers 4

    .line 1210
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 1211
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    if-lez p0, :cond_1d

    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1212
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public final isDefaultDeviceAndUidFocused(II)Z
    .registers 3

    if-nez p1, :cond_c

    .line 1447
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultIme(ILjava/lang/String;)Z
    .registers 4

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_25

    .line 1463
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1c

    return v0

    .line 1467
    :cond_1c
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1468
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_25
    return v0
.end method

.method public final isDeviceLocked(II)Z
    .registers 6

    .line 1216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1218
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1c

    .line 1220
    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto :goto_21

    :cond_1c
    const/4 p0, 0x0

    .line 1222
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    throw p0
.end method

.method public final isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    .line 362
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualDeviceAndUidFocused(II)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 1451
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_8

    goto :goto_20

    .line 1454
    :cond_8
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v1

    .line 1455
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 1456
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v0
.end method

.method public final synthetic lambda$new$0(Landroid/content/ClipData;)V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 226
    :try_start_4
    invoke-virtual {p0, v1, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    if-eqz v1, :cond_13

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 231
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V
    .registers 3

    .line 235
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    return-void
.end method

.method public final synthetic lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method public final synthetic lambda$scheduleWriteClipDataStats$7(IILandroid/util/IntArray;I)V
    .registers 11

    .line 1737
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1740
    invoke-virtual {p0, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    .line 1741
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    const/16 v0, 0x418

    move v1, p1

    move v2, p2

    move v5, p4

    .line 1737
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[II)V

    return-void
.end method

.method public final synthetic lambda$scheduleWriteClipDataStats$8(II)V
    .registers 9

    .line 1744
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1747
    invoke-virtual {p0, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    sget-object v4, Lcom/android/server/clipboard/ClipboardService;->CLIP_DATA_TYPES_UNKNOWN:[I

    const/4 v5, 0x0

    const/16 v0, 0x418

    move v1, p1

    move v2, p2

    .line 1744
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[II)V

    return-void
.end method

.method public final synthetic lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 8

    .line 1540
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 1541
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1540
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x1040751

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1544
    const-string p2, "ClipboardService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_1f
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v1, p2, :cond_60

    .line 1546
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/SafetyProtectionUtils;->shouldShowSafetyProtectionResources(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4e

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x10800b5

    .line 1550
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1552
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 1551
    invoke-static {p2, v3, p1, v2, v0}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    move-result-object p2

    goto :goto_5a

    .line 1556
    :cond_4e
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1555
    invoke-static {p2, v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 1559
    :goto_5a
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_5d} :catch_60

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :catch_60
    :cond_60
    return-void
.end method

.method public final synthetic lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .registers 6

    .line 1141
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method public final notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .registers 6

    .line 1648
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    goto :goto_2c

    :cond_5
    const/4 v1, 0x0

    .line 1651
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_2c

    .line 1655
    :cond_d
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2c

    .line 1658
    :cond_16
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1b

    goto :goto_2c

    .line 1664
    :cond_1b
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_2c

    .line 1668
    :cond_24
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    :goto_2c
    return-void

    .line 1671
    :cond_2d
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1672
    new-instance p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 252
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V

    const-string v2, "clipboard"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V

    const-class v1, Lcom/android/server/clipboard/ClipboardManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->registerVirtualDeviceListener()V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 278
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final registerVirtualDeviceListener()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v0, :cond_9

    goto :goto_1f

    .line 261
    :cond_9
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 271
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, p0}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 1326
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1327
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1329
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1330
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1331
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method public final revokeUriPermission(Landroid/net/Uri;I)V
    .registers 7

    if-eqz p1, :cond_30

    .line 1312
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_30

    .line 1314
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1316
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1317
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1319
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    const/4 p2, 0x1

    .line 1316
    invoke-interface {v2, p0, v3, p2, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2b

    .line 1321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public final revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .registers 6

    .line 1336
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    goto :goto_1a

    .line 1339
    :cond_5
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 1341
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final scheduleWriteClipDataStats(Landroid/content/ClipData;II)V
    .registers 11

    .line 1719
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 1721
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 1722
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 1722
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v5, v0

    .line 1724
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_21
    if-ltz v0, :cond_39

    .line 1725
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1727
    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->mimeTypeToClipDataType(Ljava/lang/String;)I

    move-result v1

    .line 1728
    invoke-virtual {v4, v1}, Landroid/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1729
    invoke-virtual {v4, v1}, Landroid/util/IntArray;->add(I)V

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 1737
    :cond_39
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/clipboard/ClipboardService;IILandroid/util/IntArray;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_47
    move-object v1, p0

    move v2, p2

    move v3, p3

    .line 1744
    iget-object p0, v1, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda8;

    invoke-direct {p1, v1, v2, v3}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/clipboard/ClipboardService;II)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .registers 14

    .line 1085
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1086
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_48

    .line 1090
    :try_start_d
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 1091
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 1093
    iget-object v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 1098
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget v11, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_21} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_21} :catch_39
    .catchall {:try_start_d .. :try_end_21} :catchall_36

    const/16 v6, 0x1d

    move-object v5, p0

    .line 1093
    :try_start_24
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 1100
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Landroid/content/IOnPrimaryClipChangedListener;

    .line 1101
    invoke-interface {p0}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_35} :catch_44
    .catchall {:try_start_24 .. :try_end_35} :catchall_36

    goto :goto_44

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :catch_39
    move-object v5, p0

    goto :goto_44

    .line 1109
    :goto_3b
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw p0

    :catch_44
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_b

    .line 1109
    :cond_48
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .registers 6

    .line 974
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 975
    :try_start_5
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 976
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V
    .registers 11

    if-nez p3, :cond_7

    .line 983
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 986
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 989
    invoke-virtual {p0, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_71

    .line 993
    :cond_12
    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_71

    .line 1000
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 p1, 0x0

    goto :goto_4f

    :cond_2d
    if-nez p1, :cond_30

    goto :goto_4f

    .line 1015
    :cond_30
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 1016
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_3a
    if-ltz p1, :cond_4b

    .line 1017
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {v4, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v4, p1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3a

    .line 1019
    :cond_4b
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    move-object p1, v4

    :goto_4f
    const/4 v3, 0x0

    :goto_50
    if-ge v3, v2, :cond_71

    .line 1022
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v0, :cond_6e

    .line 1024
    const-string/jumbo v5, "no_sharing_into_profile"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1027
    invoke-virtual {p0, v4, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 1029
    invoke-virtual {p0, v4, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_71
    :goto_71
    return-void
.end method

.method public final setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 7

    .line 1049
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p2, :cond_b

    .line 1051
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;II)V

    .line 1054
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method public final setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 6

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 1061
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_f

    .line 1062
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_f

    return-void

    .line 1065
    :cond_f
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1066
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1067
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p2, :cond_22

    .line 1069
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1070
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_29

    :cond_22
    const/16 p3, 0x270f

    .line 1072
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    const/4 p3, 0x0

    .line 1073
    iput-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    :goto_29
    if-eqz p2, :cond_38

    .line 1076
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 1081
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    return-void
.end method

.method public final shouldSuppressAccessNotificationForUidLocked(I)Z
    .registers 6

    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1476
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mSuppressAccessNotification:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1482
    :cond_10
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mSuppressAccessNotification:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .registers 9

    .line 1495
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_6

    goto/16 :goto_68

    .line 1499
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->shouldSuppressAccessNotificationForUidLocked(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    .line 1502
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clipboard_show_access_notifications"

    .line 1504
    iget-boolean v2, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 1502
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_68

    .line 1508
    :cond_20
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_68

    .line 1512
    :cond_29
    invoke-virtual {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_68

    .line 1515
    :cond_30
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_3b

    .line 1516
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_68

    .line 1519
    :cond_3b
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v0, :cond_46

    .line 1520
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_68

    .line 1523
    :cond_46
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_51

    goto :goto_68

    .line 1528
    :cond_51
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v0, :cond_60

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v1, :cond_60

    .line 1529
    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v0

    if-ne v0, p2, :cond_60

    goto :goto_68

    .line 1533
    :cond_60
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_69

    :goto_68
    return-void

    .line 1537
    :cond_69
    invoke-virtual {p0, p4, p5}, Lcom/android/server/clipboard/ClipboardService;->getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;

    move-result-object p5

    .line 1538
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1566
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public final startClassificationLocked(Landroid/content/ClipData;II)V
    .registers 13

    .line 1117
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_7
    move-object v3, v0

    goto :goto_13

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    .line 1118
    :goto_13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_22

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_24

    :cond_22
    move-object v4, p1

    goto :goto_6e

    .line 1124
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1126
    :try_start_28
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-direct {v2, v6, v7}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    .line 1127
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_68

    .line 1134
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v4

    if-le v2, v4, :cond_58

    .line 1137
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void

    .line 1141
    :cond_58
    iget-object v8, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_68
    move-exception v0

    move-object p0, v0

    .line 1134
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1135
    throw p0

    .line 1119
    :goto_6e
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void
.end method

.method public final updateConfig()V
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 287
    const-string v1, "clipboard"

    const-string v2, "allow_virtualdevice_silos"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 291
    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 293
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method
