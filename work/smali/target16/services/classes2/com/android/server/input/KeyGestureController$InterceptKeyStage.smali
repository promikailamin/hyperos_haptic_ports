.class public abstract Lcom/android/server/input/KeyGestureController$InterceptKeyStage;
.super Ljava/lang/Object;
.source "KeyGestureController.java"


# instance fields
.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$minterceptKey(Lcom/android/server/input/KeyGestureController$InterceptKeyStage;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->interceptKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/KeyGestureController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1933
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1934
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1935
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1c

    .line 1937
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1938
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1941
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->onKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_37

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_37

    .line 1942
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_37

    .line 1943
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3

    .line 1947
    :cond_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 1948
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_4b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 1949
    :cond_4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1950
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 1951
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_5d
    return p1
.end method

.method public abstract onKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
.end method
