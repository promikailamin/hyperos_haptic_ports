.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;
.super Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback$Stub;
.source "SelectionToolbarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V

    return-void
.end method


# virtual methods
.method public onPasteAction(I)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$fgetmClipboardManagerInternal(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/clipboard/ClipboardManagerInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/clipboard/ClipboardManagerInternal;->notifyUserAuthorizedClipAccess(I)V

    return-void
.end method

.method public transferTouch(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarRenderServiceRemoteCallback;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$fgetmInputManagerInternal(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/input/InputManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerInternal;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    return-void
.end method
