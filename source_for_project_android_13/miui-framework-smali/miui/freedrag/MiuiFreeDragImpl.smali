.class public Lmiui/freedrag/MiuiFreeDragImpl;
.super Ljava/lang/Object;
.source "MiuiFreeDragImpl.java"

# interfaces
.implements Lmiui/freedrag/IMiuiFreeDragInterface;
.implements Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mInputEventListener:Lmiui/freedrag/MiuiFreeDragInputListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist findTouchView(Landroid/view/View;II)Landroid/view/View;
    .registers 9
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/freedrag/MiuiFreeDragImpl;->findTouchViewRecursive(Landroid/view/View;IILjava/util/List;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find view count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeDragImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 88
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 90
    :cond_3d
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_42
    if-ge v1, v2, :cond_57

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 92
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-nez v4, :cond_56

    instance-of v4, v3, Landroid/view/TextureView;

    if-eqz v4, :cond_53

    goto :goto_56

    .line 90
    .end local v3    # "view":Landroid/view/View;
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 93
    .restart local v3    # "view":Landroid/view/View;
    :cond_56
    :goto_56
    return-object v3

    .line 96
    .end local v1    # "i":I
    .end local v2    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_57
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist findTouchViewRecursive(Landroid/view/View;IILjava/util/List;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p1, p2, p3}, Lmiui/freedrag/MiuiFreeDragViewUtils;->isTouchOnDragView(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    return-void

    .line 105
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 106
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_20

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "childView":Landroid/view/View;
    invoke-direct {p0, v2, p2, p3, p4}, Lmiui/freedrag/MiuiFreeDragImpl;->findTouchViewRecursive(Landroid/view/View;IILjava/util/List;)V

    .line 107
    .end local v2    # "childView":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 111
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_20
    goto :goto_24

    .line 112
    :cond_21
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_24
    return-void
.end method

.method private blacklist performDrag(Landroid/graphics/PointF;Landroid/view/View;)V
    .registers 9
    .param p1, "touchPoint"    # Landroid/graphics/PointF;
    .param p2, "rootView"    # Landroid/view/View;

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, "attachedActivity":Landroid/app/Activity;
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eq p2, v1, :cond_11

    goto :goto_60

    .line 59
    :cond_11
    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-direct {p0, p2, v1, v2}, Lmiui/freedrag/MiuiFreeDragImpl;->findTouchView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performDrag. Find view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiFreeDragImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragFilter;->allowDrag(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 65
    return-void

    .line 68
    :cond_3a
    invoke-static {}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->getInstance()Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performDrag. Get bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v2, :cond_5f

    .line 74
    iget-object v3, p0, Lmiui/freedrag/MiuiFreeDragImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v2}, Lmiui/freedrag/MiuiFreeDragViewImpl;->freeDragImage(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 76
    :cond_5f
    return-void

    .line 56
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_60
    :goto_60
    return-void
.end method


# virtual methods
.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragImpl;->mInputEventListener:Lmiui/freedrag/MiuiFreeDragInputListener;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lmiui/freedrag/MiuiFreeDragInputListener;

    invoke-direct {v0, p0}, Lmiui/freedrag/MiuiFreeDragInputListener;-><init>(Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;)V

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragImpl;->mInputEventListener:Lmiui/freedrag/MiuiFreeDragInputListener;

    .line 41
    :cond_b
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragImpl;->mInputEventListener:Lmiui/freedrag/MiuiFreeDragInputListener;

    invoke-virtual {v0, p1, p2}, Lmiui/freedrag/MiuiFreeDragInputListener;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public blacklist initialize(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragImpl;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lmiui/freedrag/MiuiFreeDragConstants;->TOUCH_SLOP:F

    .line 31
    invoke-static {}, Lmiui/freedrag/MiuiFreeDragFilter;->init()V

    .line 32
    const-string v0, "MiuiFreeDragImpl"

    const-string v1, "initialize."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public blacklist onDragLongPress(Landroid/graphics/PointF;Landroid/view/View;)V
    .registers 5
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "rootView"    # Landroid/view/View;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragLongPress: point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rootView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeDragImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, p1, p2}, Lmiui/freedrag/MiuiFreeDragImpl;->performDrag(Landroid/graphics/PointF;Landroid/view/View;)V

    .line 51
    return-void
.end method
