.class public Landroid/view/ViewRootImplStubImpl;
.super Landroid/view/ViewRootImplStub;
.source "ViewRootImplStubImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ViewRootImplStubImpl"


# instance fields
.field private blacklist DIRECTION_VECTOR:[[I

.field private blacklist mCurOffset:[I

.field private blacklist mCursor:I

.field private blacklist mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

.field private blacklist mIsLongApex:Z

.field private blacklist mMethodGetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

.field private blacklist mMethodSetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

.field private blacklist mOffsetRandom:Ljava/util/Random;

.field private blacklist mOffsetTimer:Ljava/util/Timer;

.field private blacklist mQuadrant:I

.field private blacklist mScreenAntiBurnDimRatio:F

.field private blacklist mScreenAntiBurnEnableOffset:Z

.field private blacklist mScreenAntiBurnEnabled:Z

.field private blacklist mScreenAntiBurnLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenAntiBurnLocation:[I

.field private blacklist mScreenAntiBurnMode:I

.field private blacklist mScreenAntiBurnOffsetInterval:I

.field private blacklist mScreenAntiBurnTolerance:I

.field private blacklist mViewRootImplMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewRootImpl;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDIRECTION_VECTOR(Landroid/view/ViewRootImplStubImpl;)[[I
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImplStubImpl;->DIRECTION_VECTOR:[[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImplStubImpl;->mCurOffset:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursor(Landroid/view/ViewRootImplStubImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImplStubImpl;->mCursor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLongApex(Landroid/view/ViewRootImplStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImplStubImpl;->mIsLongApex:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuadrant(Landroid/view/ViewRootImplStubImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImplStubImpl;->mQuadrant:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCursor(Landroid/view/ViewRootImplStubImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImplStubImpl;->mCursor:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsLongApex(Landroid/view/ViewRootImplStubImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImplStubImpl;->mIsLongApex:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQuadrant(Landroid/view/ViewRootImplStubImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImplStubImpl;->mQuadrant:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOffsetForScreenAntiBurn(Landroid/view/ViewRootImplStubImpl;Landroid/view/View;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImplStubImpl;->dispatchOffsetForScreenAntiBurn(Landroid/view/View;II)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 7

    .line 51
    invoke-direct {p0}, Landroid/view/ViewRootImplStub;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnabled:Z

    .line 122
    iput v0, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnMode:I

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    .line 124
    const/4 v1, 0x3

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    .line 125
    const/16 v2, 0x1e

    iput v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnTolerance:I

    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnDimRatio:F

    .line 127
    iput-boolean v0, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z

    .line 128
    const v2, 0xea60

    iput v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnOffsetInterval:I

    .line 132
    iput-boolean v0, p0, Landroid/view/ViewRootImplStubImpl;->mIsLongApex:Z

    .line 133
    const/4 v2, 0x4

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_64

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_74

    aput-object v4, v2, v1

    iput-object v2, p0, Landroid/view/ViewRootImplStubImpl;->DIRECTION_VECTOR:[[I

    .line 134
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/view/ViewRootImplStubImpl;->mCurOffset:[I

    .line 135
    iput v0, p0, Landroid/view/ViewRootImplStubImpl;->mCursor:I

    .line 136
    iput v0, p0, Landroid/view/ViewRootImplStubImpl;->mQuadrant:I

    .line 367
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    return-void

    nop

    :array_5c
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_64
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_6c
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_74
    .array-data 4
        0x1
        -0x1
    .end array-data
.end method

.method private blacklist addAllDragChildView(Landroid/view/View;)V
    .registers 7
    .param p1, "decorView"    # Landroid/view/View;

    .line 397
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 400
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_48

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 402
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, "view":Landroid/view/View;
    nop

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v2

    const-class v3, Landroid/view/View$OnDragListener;

    const-string v4, "mOnDragListener"

    invoke-static {v2, v4, v3}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 406
    .local v2, "mOnDragListener":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/view/View$OnDragListener;>;"
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 407
    invoke-static {}, Landroid/view/IViewStub;->getInstance()Landroid/view/IViewStub;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/view/IViewStub;->setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V

    .line 409
    :cond_3e
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_45

    .line 410
    invoke-direct {p0, v1}, Landroid/view/ViewRootImplStubImpl;->addAllDragChildView(Landroid/view/View;)V

    .line 401
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "mOnDragListener":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/view/View$OnDragListener;>;"
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 414
    .end local v0    # "i":I
    :cond_48
    return-void

    .line 398
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist dispatchOffsetForScreenAntiBurn(Landroid/view/View;II)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 355
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 356
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, p2, p3}, Landroid/view/ViewRootImplStubImpl;->dispatchOffsetForScreenAntiBurn(Landroid/view/View;II)V

    .line 357
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 361
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_18
    goto :goto_21

    .line 362
    :cond_19
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 363
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 365
    :goto_21
    return-void
.end method

.method private blacklist dispatchScreenAntiBurn(Landroid/view/View;Z)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "needDim"    # Z

    .line 345
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 346
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 347
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewRootImplStubImpl;->setScreenAntiBurn(Landroid/view/View;Z)V

    .line 347
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 352
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private blacklist getViewIdInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 220
    if-nez p1, :cond_5

    .line 221
    const-string v0, ""

    return-object v0

    .line 224
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 227
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_62

    .line 228
    const-string v2, " viewIdInfo:#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 230
    .local v2, "r":Landroid/content/res/Resources;
    if-lez v1, :cond_62

    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v3

    if-eqz v3, :cond_62

    if-eqz v2, :cond_62

    .line 233
    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_68

    .line 241
    :try_start_34
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    .line 235
    :sswitch_39
    const-string v3, "app"

    .line 236
    .local v3, "pkgname":Ljava/lang/String;
    goto :goto_41

    .line 238
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_3c
    const-string v3, "android"

    .line 239
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_41

    .line 252
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_3f
    move-exception v3

    goto :goto_62

    .line 244
    .restart local v3    # "pkgname":Ljava/lang/String;
    :goto_41
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "typeName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "entryName":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_61} :catch_3f

    .line 253
    nop

    .line 256
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "typeName":Ljava/lang/String;
    .end local v5    # "entryName":Ljava/lang/String;
    :cond_62
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_68
    .sparse-switch
        0x1000000 -> :sswitch_3c
        0x7f000000 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public blacklist addDragView(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 393
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImplStubImpl;->addAllDragChildView(Landroid/view/View;)V

    .line 394
    return-void
.end method

.method public blacklist disableOnClickForHoverMode(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 454
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    if-eqz v0, :cond_9

    .line 455
    invoke-virtual {v0, p1, p2}, Landroid/hovermode/MiuiHoverModeTransfer;->disableOnClickForHoverMode(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 457
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .line 202
    if-eqz p3, :cond_4f

    .line 203
    invoke-static {p3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 204
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_4f

    .line 205
    instance-of v1, p3, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_42

    .line 206
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 207
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->needOptimizeWebView()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 208
    .local v1, "optimizeWebViewEnable":Z
    :goto_23
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[App AutoUI Config: optimizeWebViewEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .end local v1    # "optimizeWebViewEnable":Z
    :cond_42
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0, p3}, Landroid/view/ViewRootImplStubImpl;->getViewIdInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .end local v0    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    :cond_4f
    return-void
.end method

.method public blacklist enableDebugConfig(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDebugConfig config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImplStubImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_114

    :cond_29
    goto/16 :goto_d9

    :sswitch_2b
    const-string v0, "VRI_DEBUG_DRAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x2

    goto/16 :goto_da

    :sswitch_36
    const-string v0, "VRI_DBG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto/16 :goto_da

    :sswitch_41
    const-string v0, "VRI_DEBUG_TRACKBALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x7

    goto/16 :goto_da

    :sswitch_4c
    const-string v0, "VRI_DEBUG_IMF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x8

    goto/16 :goto_da

    :sswitch_58
    const-string v0, "VRI_DEBUG_FPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xa

    goto/16 :goto_da

    :sswitch_64
    const-string v0, "VRI_DEBUG_SCROLL_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xe

    goto/16 :goto_da

    :sswitch_70
    const-string v0, "VRI_DEBUG_KEEP_SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xc

    goto :goto_da

    :sswitch_7b
    const-string v0, "VRI_LOCAL_LOGV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_da

    :sswitch_85
    const-string v0, "VRI_DEBUG_INPUT_STAGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xb

    goto :goto_da

    :sswitch_90
    const-string v0, "VRI_DEBUG_INPUT_RESIZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x5

    goto :goto_da

    :sswitch_9a
    const-string v0, "VRI_DEBUG_BLAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xf

    goto :goto_da

    :sswitch_a5
    const-string v0, "VRI_DEBUG_CONTENT_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xd

    goto :goto_da

    :sswitch_b0
    const-string v0, "VRI_DEBUG_LAYOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x3

    goto :goto_da

    :sswitch_ba
    const-string v0, "VRI_DEBUG_CONFIGURATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x9

    goto :goto_da

    :sswitch_c5
    const-string v0, "VRI_DEBUG_DIALOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x4

    goto :goto_da

    :sswitch_cf
    const-string v0, "VRI_DEBUG_ORIENTATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x6

    goto :goto_da

    :goto_d9
    const/4 v0, -0x1

    :goto_da
    packed-switch v0, :pswitch_data_156

    .line 114
    const-string v0, "Enable debug config fail, error config."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 111
    :pswitch_e3
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_BLAST:Z

    .line 112
    goto :goto_113

    .line 108
    :pswitch_e6
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_SCROLL_CAPTURE:Z

    .line 109
    goto :goto_113

    .line 105
    :pswitch_e9
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_CONTENT_CAPTURE:Z

    .line 106
    goto :goto_113

    .line 102
    :pswitch_ec
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_KEEP_SCREEN_ON:Z

    .line 103
    goto :goto_113

    .line 99
    :pswitch_ef
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_INPUT_STAGES:Z

    .line 100
    goto :goto_113

    .line 96
    :pswitch_f2
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_FPS:Z

    .line 97
    goto :goto_113

    .line 93
    :pswitch_f5
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_CONFIGURATION:Z

    .line 94
    goto :goto_113

    .line 90
    :pswitch_f8
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_IMF:Z

    .line 91
    goto :goto_113

    .line 87
    :pswitch_fb
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    .line 88
    goto :goto_113

    .line 84
    :pswitch_fe
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_ORIENTATION:Z

    .line 85
    goto :goto_113

    .line 81
    :pswitch_101
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_INPUT_RESIZE:Z

    .line 82
    goto :goto_113

    .line 78
    :pswitch_104
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_DIALOG:Z

    .line 79
    goto :goto_113

    .line 75
    :pswitch_107
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    .line 76
    goto :goto_113

    .line 72
    :pswitch_10a
    sput-boolean p2, Landroid/view/ViewRootImpl;->DEBUG_DRAW:Z

    .line 73
    goto :goto_113

    .line 69
    :pswitch_10d
    sput-boolean p2, Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z

    .line 70
    goto :goto_113

    .line 66
    :pswitch_110
    sput-boolean p2, Landroid/view/ViewRootImpl;->DBG:Z

    .line 67
    nop

    .line 117
    :goto_113
    return-void

    :sswitch_data_114
    .sparse-switch
        -0x6c9f410e -> :sswitch_cf
        -0x3a4d053a -> :sswitch_c5
        -0x37ec8668 -> :sswitch_ba
        -0x2d0c0758 -> :sswitch_b0
        -0x2ccdea7e -> :sswitch_a5
        -0x2b469766 -> :sswitch_9a
        0x1aa28de7 -> :sswitch_90
        0x1d228e68 -> :sswitch_85
        0x255eb498 -> :sswitch_7b
        0x2d8e39d6 -> :sswitch_70
        0x3c326332 -> :sswitch_64
        0x4dbda80b -> :sswitch_58
        0x4dbdb2e4 -> :sswitch_4c
        0x52a9076c -> :sswitch_41
        0x55763557 -> :sswitch_36
        0x69f67642 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
    .end packed-switch
.end method

.method public blacklist getScreenAntiBurnDimRatio()F
    .registers 2

    .line 197
    iget v0, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnDimRatio:F

    return v0
.end method

.method public blacklist getViewRootImplMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/ViewRootImpl;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public blacklist initScreenAntiBurn(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowBounds"    # Landroid/graphics/Rect;

    .line 143
    invoke-static {}, Lmiui/utils/GetCameraOccupierStub;->getInstance()Lmiui/utils/GetCameraOccupierStub;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/utils/GetCameraOccupierStub;->getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 146
    return-void

    .line 148
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 150
    .local v1, "navBarMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NavBarMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AntiBurn"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 v2, 0x3e9

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_4c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_fd

    .line 153
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v6, "jsonData":Lorg/json/JSONObject;
    const-string v7, "mode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnMode:I
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_5f} :catch_fe

    .line 155
    const-string v8, "enable_offset"

    const-string v9, "dim_ratio"

    if-ne v7, v3, :cond_94

    .line 156
    :try_start_65
    new-instance v7, Lorg/json/JSONArray;

    const-string v10, "layout"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "layoutList":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_71
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_83

    .line 158
    iget-object v11, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    .line 160
    .end local v10    # "i":I
    :cond_83
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnDimRatio:F

    .line 161
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z

    .end local v7    # "layoutList":Lorg/json/JSONArray;
    goto :goto_fd

    .line 162
    :cond_94
    if-ne v7, v2, :cond_fd

    .line 163
    iget v7, p2, Landroid/graphics/Rect;->right:I

    const/16 v10, 0x4b0

    const/4 v11, 0x2

    if-ge v7, v10, :cond_bc

    .line 164
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "y"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v5

    .line 165
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v4

    .line 166
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v11

    goto :goto_da

    .line 168
    :cond_bc
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "y_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v5

    .line 169
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "width_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v4

    .line 170
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "height_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v11

    .line 172
    :goto_da
    if-nez v1, :cond_e4

    .line 173
    iget-object v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v10, v7, v5

    add-int/lit8 v10, v10, -0x56

    aput v10, v7, v5

    .line 175
    :cond_e4
    const-string v7, "tolerance"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnTolerance:I

    .line 176
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnDimRatio:F

    .line 177
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z
    :try_end_fc
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_fc} :catch_fe

    nop

    .line 182
    .end local v6    # "jsonData":Lorg/json/JSONObject;
    :cond_fd
    :goto_fd
    goto :goto_104

    .line 180
    :catch_fe
    move-exception v6

    .line 181
    .local v6, "e":Lorg/json/JSONException;
    const-string v7, "Could not parse JSON object "

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_104
    nop

    .line 184
    const-string v6, "persist.sys.screen_anti_burn_enabled"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_115

    iget v6, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnMode:I

    if-eq v6, v3, :cond_113

    if-ne v6, v2, :cond_115

    :cond_113
    move v2, v4

    goto :goto_116

    :cond_115
    move v2, v5

    :goto_116
    iput-boolean v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnabled:Z

    .line 186
    iget-boolean v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z

    .line 187
    const-string v3, "persist.sys.anti_burn.offset_enable"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z

    .line 188
    const v2, 0xea60

    .line 189
    const-string v3, "persist.sys.anti_burn.offset_interval"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnOffsetInterval:I

    .line 190
    const-class v2, Landroid/view/View;

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "setScreenAntiBurnEnabled"

    invoke-static {v2, v4, v3}, Lmiui/util/ReflectionUtils;->tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImplStubImpl;->mMethodSetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

    .line 192
    const-class v2, Landroid/view/View;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getScreenAntiBurnEnabled"

    invoke-static {v2, v4, v3}, Lmiui/util/ReflectionUtils;->tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImplStubImpl;->mMethodGetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

    .line 194
    return-void
.end method

.method public blacklist isMiuiLayoutInCutoutAlways(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;

    .line 57
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isNotNeedSetFocusKey(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 463
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 464
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/InputDevice;->isXiaomiStylus()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public blacklist isSupportDragAndDrop(Landroid/view/ViewRootImpl;)Z
    .registers 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 417
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 418
    .local v0, "dragViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    if-nez v0, :cond_c

    .line 419
    const/4 v1, 0x0

    return v1

    .line 421
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method synthetic blacklist lambda$updateClientHoverState$0$android-view-ViewRootImplStubImpl(ZZ)V
    .registers 4
    .param p1, "hoverMode"    # Z
    .param p2, "supportTouch"    # Z

    .line 437
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    invoke-virtual {v0, p1, p2}, Landroid/hovermode/MiuiHoverModeTransfer;->updateClientHoverState(ZZ)V

    .line 438
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 442
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    if-eqz v0, :cond_7

    .line 443
    invoke-virtual {v0, p1}, Landroid/hovermode/MiuiHoverModeTransfer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 445
    :cond_7
    return-void
.end method

.method public blacklist processEventForHoverModeIfNeeded(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 448
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    if-eqz v0, :cond_7

    .line 449
    invoke-virtual {v0, p1}, Landroid/hovermode/MiuiHoverModeTransfer;->processEventForHoverModeIfNeeded(Landroid/view/InputEvent;)V

    .line 451
    :cond_7
    return-void
.end method

.method public blacklist removeDragView(Landroid/view/ViewRootImpl;Landroid/app/Activity;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 384
    sget-object v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->IME_WHITE_LIST:Ljava/util/List;

    .line 385
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 386
    invoke-static {}, Landroid/widget/ClipboardAlertDialogStub;->getInstance()Landroid/widget/ClipboardAlertDialogStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ClipboardAlertDialogStub;->getClipboardAlertDialog()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 387
    return-void

    .line 389
    :cond_17
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public blacklist setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "view"    # Landroid/view/View;

    .line 371
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 372
    .local v0, "dragViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    if-nez v0, :cond_15

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 374
    iget-object v1, p0, Landroid/view/ViewRootImplStubImpl;->mViewRootImplMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_15
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public blacklist setScreenAntiBurn(Landroid/view/View;Z)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "screenAntiBurnEnabled"    # Z

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_115

    iget-boolean v0, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnabled:Z

    if-nez v0, :cond_c

    goto/16 :goto_115

    .line 265
    :cond_c
    const/4 v0, 0x0

    .line 266
    .local v0, "isStartLayout":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_24

    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl;->mMethodSetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_24

    .line 268
    :try_start_15
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_22

    .line 269
    :catch_21
    move-exception v3

    :goto_22
    goto/16 :goto_c2

    .line 271
    :cond_24
    iget v3, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnMode:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_4c

    .line 272
    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 273
    .local v4, "tmpStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 274
    .end local v4    # "tmpStr":Ljava/lang/String;
    goto :goto_30

    :cond_4a
    goto/16 :goto_c2

    .line 275
    :cond_4c
    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_c2

    .line 276
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c2

    .line 277
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 278
    .local v3, "group":Landroid/view/ViewGroup;
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 279
    .local v5, "coord":[I
    iget v6, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnTolerance:I

    .line 280
    .local v6, "tolerance":I
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 281
    aget v7, v5, v2

    iget-object v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v8, v8, v1

    sub-int v9, v8, v6

    if-le v7, v9, :cond_a3

    aget v7, v5, v2

    add-int/2addr v8, v6

    if-ge v7, v8, :cond_a3

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v8, v8, v2

    const/4 v9, 0x5

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_a3

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v8, v8, v2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_a3

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v8, v8, v4

    sub-int/2addr v8, v6

    if-le v7, v8, :cond_a3

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnLocation:[I

    aget v4, v8, v4

    add-int/2addr v4, v6

    if-ge v7, v4, :cond_a3

    .line 287
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v9, :cond_a3

    move v4, v2

    goto :goto_a4

    :cond_a3
    move v4, v1

    :goto_a4
    move v0, v4

    .line 288
    const/4 v4, 0x1

    .line 289
    .local v4, "allChildIsGroup":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a7
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_ba

    .line 290
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 291
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-nez v9, :cond_b7

    .line 292
    const/4 v4, 0x0

    .line 293
    goto :goto_ba

    .line 289
    .end local v8    # "child":Landroid/view/View;
    :cond_b7
    add-int/lit8 v7, v7, 0x1

    goto :goto_a7

    .line 296
    .end local v7    # "i":I
    :cond_ba
    :goto_ba
    if-eqz v0, :cond_c0

    if-eqz v4, :cond_c0

    move v7, v2

    goto :goto_c1

    :cond_c0
    move v7, v1

    :goto_c1
    move v0, v7

    .line 302
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "allChildIsGroup":Z
    .end local v5    # "coord":[I
    .end local v6    # "tolerance":I
    :cond_c2
    :goto_c2
    iget-boolean v3, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnEnableOffset:Z

    if-eqz v3, :cond_e6

    if-eqz v0, :cond_e6

    .line 303
    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl;->mOffsetTimer:Ljava/util/Timer;

    if-nez v3, :cond_e6

    .line 304
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImplStubImpl;->mOffsetRandom:Ljava/util/Random;

    .line 305
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImplStubImpl;->mOffsetTimer:Ljava/util/Timer;

    .line 306
    new-instance v5, Landroid/view/ViewRootImplStubImpl$1;

    invoke-direct {v5, p0, p1}, Landroid/view/ViewRootImplStubImpl$1;-><init>(Landroid/view/ViewRootImplStubImpl;Landroid/view/View;)V

    iget v3, p0, Landroid/view/ViewRootImplStubImpl;->mScreenAntiBurnOffsetInterval:I

    int-to-long v6, v3

    int-to-long v8, v3

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 330
    :cond_e6
    const/4 v3, 0x0

    .line 331
    .local v3, "enabled":Z
    iget-object v4, p0, Landroid/view/ViewRootImplStubImpl;->mMethodGetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_fb

    .line 333
    :try_start_eb
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f7} :catch_f9

    move v3, v4

    .line 334
    :goto_f8
    goto :goto_fb

    :catch_f9
    move-exception v4

    goto :goto_f8

    .line 336
    :cond_fb
    :goto_fb
    if-nez v3, :cond_ff

    if-eqz v0, :cond_114

    :cond_ff
    iget-object v4, p0, Landroid/view/ViewRootImplStubImpl;->mMethodSetScreenAntiBurnEnabled:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_114

    .line 338
    :try_start_103
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10e} :catch_10f

    goto :goto_110

    .line 339
    :catch_10f
    move-exception v1

    :goto_110
    nop

    .line 340
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImplStubImpl;->dispatchScreenAntiBurn(Landroid/view/View;Z)V

    .line 342
    :cond_114
    return-void

    .line 262
    .end local v0    # "isStartLayout":Z
    .end local v3    # "enabled":Z
    :cond_115
    :goto_115
    return-void
.end method

.method public blacklist updateClientHoverState(Landroid/view/ViewRootImpl;ZZ)V
    .registers 6
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "hoverMode"    # Z
    .param p3, "supportTouch"    # Z

    .line 429
    invoke-static {}, Landroid/hovermode/MiuiHoverModeImpl;->getInstance()Landroid/hovermode/MiuiHoverModeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hovermode/MiuiHoverModeImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 430
    return-void

    .line 432
    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    if-nez v0, :cond_16

    .line 433
    new-instance v0, Landroid/hovermode/MiuiHoverModeTransfer;

    invoke-direct {v0, p1}, Landroid/hovermode/MiuiHoverModeTransfer;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImplStubImpl;->mHoverModeTransfer:Landroid/hovermode/MiuiHoverModeTransfer;

    .line 436
    :cond_16
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3}, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImplStubImpl;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method
