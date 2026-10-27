.class public interface abstract Landroid/view/IViewStub;
.super Ljava/lang/Object;
.source "IViewStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/view/IViewStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-class v0, Landroid/view/IViewStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IViewStub;

    sput-object v0, Landroid/view/IViewStub;->sInstance:Landroid/view/IViewStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/IViewStub;
    .registers 1

    .line 16
    sget-object v0, Landroid/view/IViewStub;->sInstance:Landroid/view/IViewStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
.end method

.method public abstract blacklist dispatchTouchEventToFreeDrag(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public blacklist interceptReceiveContentListener(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modifyDragStartPosition(Landroid/graphics/Point;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "position"    # Landroid/graphics/Point;
    .param p2, "myLocalState"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 33
    return-void
.end method

.method public blacklist notifyShadow(Landroid/view/View$DragShadowBuilder;Landroid/graphics/Point;)V
    .registers 3
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "shadowSize"    # Landroid/graphics/Point;

    .line 29
    return-void
.end method

.method public abstract blacklist onDragStart(Landroid/view/View;)V
.end method

.method public abstract blacklist requestDragAndDropPermissionsIfNeeded(Landroid/view/DragEvent;Landroid/app/Activity;Landroid/view/View;)V
.end method

.method public blacklist setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "view"    # Landroid/view/View;

    .line 37
    return-void
.end method
