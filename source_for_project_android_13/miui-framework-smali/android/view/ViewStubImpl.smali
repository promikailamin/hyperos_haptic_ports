.class public Landroid/view/ViewStubImpl;
.super Ljava/lang/Object;
.source "ViewStubImpl.java"

# interfaces
.implements Landroid/view/IViewStub;


# static fields
.field public static final blacklist DRAG_FLAG_REQUEST_POSITION:I = 0x40000000

.field private static final blacklist PACKAGE_HOME:Ljava/lang/String; = "com.miui.home"

.field private static final blacklist PACKAGE_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final blacklist REQUEST_CODE_PERMISSIONS:I = 0x7fffffff

.field private static final blacklist REQUEST_DRAG_DROP_PERMISSIONS_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_DRAG_DROP_PERMISSIONS_VIEW_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ViewStubImpl"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/view/ViewStubImpl;->REQUEST_DRAG_DROP_PERMISSIONS_LIST:Ljava/util/HashSet;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/view/ViewStubImpl;->REQUEST_DRAG_DROP_PERMISSIONS_VIEW_LIST:Ljava/util/ArrayList;

    .line 39
    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "com.tencent.mm.pluginsdk.ui.tools.ScrollControlRecyclerView"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 49
    invoke-static {p1, p2}, Lmiui/contentcatcher/InterceptorProxy;->checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkDropViewClass(Landroid/view/View;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/view/ViewStubImpl;->REQUEST_DRAG_DROP_PERMISSIONS_VIEW_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2e

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "viewClass":Ljava/lang/String;
    const/4 v2, 0x0

    .line 74
    .local v2, "viewClassT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1f

    move-object v2, v3

    goto :goto_20

    .line 75
    :catchall_1f
    move-exception v3

    :goto_20
    nop

    .line 76
    if-eqz v2, :cond_2b

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 77
    const/4 v3, 0x1

    return v3

    .line 70
    .end local v1    # "viewClass":Ljava/lang/String;
    .end local v2    # "viewClassT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_2e
    return v3
.end method

.method public blacklist dispatchTouchEventToFreeDrag(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 85
    invoke-static {p2, p1}, Lmiui/freedrag/MiuiFreeDragHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public blacklist interceptReceiveContentListener(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 116
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist modifyDragStartPosition(Landroid/graphics/Point;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "position"    # Landroid/graphics/Point;
    .param p2, "myLocalState"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 102
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_17

    instance-of v0, p2, Landroid/graphics/Point;

    if-eqz v0, :cond_17

    .line 103
    move-object v0, p2

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 104
    move-object v0, p2

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 106
    :cond_17
    return-void
.end method

.method public blacklist notifyShadow(Landroid/view/View$DragShadowBuilder;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "shadowSize"    # Landroid/graphics/Point;

    .line 95
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->isInMouseShareMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 96
    return-void

    .line 98
    :cond_b
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->notifyShadow(Landroid/view/View$DragShadowBuilder;Landroid/graphics/Point;)V

    .line 99
    return-void
.end method

.method public blacklist onDragStart(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 91
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 92
    return-void
.end method

.method public blacklist requestDragAndDropPermissionsIfNeeded(Landroid/view/DragEvent;Landroid/app/Activity;Landroid/view/View;)V
    .registers 8
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "view"    # Landroid/view/View;

    .line 54
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    if-eqz p2, :cond_51

    sget-object v0, Landroid/view/ViewStubImpl;->REQUEST_DRAG_DROP_PERMISSIONS_LIST:Ljava/util/HashSet;

    .line 55
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 56
    invoke-virtual {p2, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 57
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_51

    .line 58
    const-string v1, "ViewStubImpl"

    const-string v2, "The activity does not have permission to read DragAndDrop files"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p3}, Landroid/view/ViewStubImpl;->checkDropViewClass(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 61
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 64
    .end local v1    # "i":I
    :cond_47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 67
    :cond_51
    return-void
.end method

.method public blacklist setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "view"    # Landroid/view/View;

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    return-void

    .line 112
    :cond_11
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImplStub;->setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V

    .line 113
    return-void
.end method
