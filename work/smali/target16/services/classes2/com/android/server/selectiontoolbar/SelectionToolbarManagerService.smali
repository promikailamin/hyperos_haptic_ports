.class public Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;
.super Lcom/android/server/SystemService;
.source "SelectionToolbarManagerService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SelectionToolbarManagerService"


# instance fields
.field public mClipboardManagerInternal:Lcom/android/server/clipboard/ClipboardManagerInternal;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mRemoteRenderServiceConnector:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClipboardManagerInternal(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/clipboard/ClipboardManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mClipboardManagerInternal:Lcom/android/server/clipboard/ClipboardManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManagerInternal(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/input/InputManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteRenderServiceConnector(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mRemoteRenderServiceConnector:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030b

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 58
    new-instance v1, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    new-instance v5, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mRemoteRenderServiceConnector:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c

    .line 75
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mRemoteRenderServiceConnector:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 64
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 65
    const-class v0, Lcom/android/server/clipboard/ClipboardManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardManagerInternal;

    iput-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->mClipboardManagerInternal:Lcom/android/server/clipboard/ClipboardManagerInternal;

    .line 67
    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V

    const-string/jumbo v1, "selection_toolbar"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
