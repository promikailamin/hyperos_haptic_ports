.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic f$0:Landroid/window/IScreenCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IScreenCaptureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/window/IScreenCaptureCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/window/IScreenCaptureCallback;

    check-cast p1, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$4i1HsIeTnWfqz9XAPMkOJs_5n_o(Landroid/window/IScreenCaptureCallback;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V

    return-void
.end method
