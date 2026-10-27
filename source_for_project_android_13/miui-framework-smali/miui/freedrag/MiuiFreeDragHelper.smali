.class public Lmiui/freedrag/MiuiFreeDragHelper;
.super Ljava/lang/Object;
.source "MiuiFreeDragHelper.java"


# static fields
.field private static volatile blacklist sEnableMiuiFreeDrag:Z

.field private static final blacklist sInstance:Lmiui/freedrag/IMiuiFreeDragInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lmiui/freedrag/MiuiFreeDragImpl;

    invoke-direct {v0}, Lmiui/freedrag/MiuiFreeDragImpl;-><init>()V

    sput-object v0, Lmiui/freedrag/MiuiFreeDragHelper;->sInstance:Lmiui/freedrag/IMiuiFreeDragInterface;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/freedrag/MiuiFreeDragHelper;->sEnableMiuiFreeDrag:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rootView"    # Landroid/view/View;

    .line 29
    sget-boolean v0, Lmiui/freedrag/MiuiFreeDragHelper;->sEnableMiuiFreeDrag:Z

    if-eqz v0, :cond_9

    .line 30
    sget-object v0, Lmiui/freedrag/MiuiFreeDragHelper;->sInstance:Lmiui/freedrag/IMiuiFreeDragInterface;

    invoke-interface {v0, p0, p1}, Lmiui/freedrag/IMiuiFreeDragInterface;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 32
    :cond_9
    return-void
.end method

.method public static blacklist initialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    sget-object v0, Lmiui/freedrag/MiuiFreeDragConstants;->ALLOW_PACKAGE_LIST:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lmiui/freedrag/MiuiFreeDragConstants;->IS_FOLD:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_20

    :cond_14
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_20

    .line 23
    sget-object v0, Lmiui/freedrag/MiuiFreeDragHelper;->sInstance:Lmiui/freedrag/IMiuiFreeDragInterface;

    invoke-interface {v0, p0}, Lmiui/freedrag/IMiuiFreeDragInterface;->initialize(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/freedrag/MiuiFreeDragHelper;->sEnableMiuiFreeDrag:Z

    .line 26
    :cond_20
    return-void
.end method
