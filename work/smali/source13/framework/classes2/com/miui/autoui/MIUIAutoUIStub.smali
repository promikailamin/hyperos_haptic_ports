.class public interface abstract Lcom/miui/autoui/MIUIAutoUIStub;
.super Ljava/lang/Object;
.source "MIUIAutoUIStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/miui/autoui/MIUIAutoUIStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/miui/autoui/MIUIAutoUIStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/MIUIAutoUIStub;

    sput-object v0, Lcom/miui/autoui/MIUIAutoUIStub;->sInstance:Lcom/miui/autoui/MIUIAutoUIStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/autoui/MIUIAutoUIStub;
    .registers 1

    .line 25
    sget-object v0, Lcom/miui/autoui/MIUIAutoUIStub;->sInstance:Lcom/miui/autoui/MIUIAutoUIStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addAutoUIProperty(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 92
    return-void
.end method

.method public blacklist adjustSizeIfNeeded(Landroid/graphics/Point;Ljava/lang/String;)V
    .registers 3
    .param p1, "outSize"    # Landroid/graphics/Point;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 66
    return-void
.end method

.method public blacklist applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist getClipRight(I)I
    .registers 2
    .param p1, "right"    # I

    .line 77
    return p1
.end method

.method public blacklist getDisplayInfoWidth(ILjava/lang/String;)I
    .registers 3
    .param p1, "width"    # I
    .param p2, "activityName"    # Ljava/lang/String;

    .line 69
    return p1
.end method

.method public blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/util/DisplayMetrics;
    .registers 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 63
    return-object p1
.end method

.method public blacklist getDrawLocation(Landroid/view/View;[I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "screenLocation"    # [I

    .line 90
    return-void
.end method

.method public blacklist getRate()F
    .registers 2

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public blacklist initAutoUIConfig(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public blacklist interceptDisplayMetrics(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 88
    .local p1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 82
    return-void
.end method

.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 52
    return-void
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 50
    return-void
.end method

.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 56
    return-void
.end method

.method public blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 44
    return-void
.end method

.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 38
    return-void
.end method

.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 34
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 54
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 40
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "drawingTime"    # J

    .line 42
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 36
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 84
    return-void
.end method
