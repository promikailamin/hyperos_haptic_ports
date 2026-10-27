.class public Lcom/android/server/wm/WindowContainer$RemoteToken;
.super Landroid/window/IWindowContainerToken$Stub;
.source "WindowContainer.java"


# instance fields
.field public final mWeakRef:Ljava/lang/ref/WeakReference;

.field public mWindowContainerToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 3372
    invoke-direct {p0}, Landroid/window/IWindowContainerToken$Stub;-><init>()V

    .line 3373
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer$RemoteToken;
    .registers 1

    .line 3382
    check-cast p0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    return-object p0
.end method


# virtual methods
.method public getContainer()Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 3378
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3394
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3395
    const-string v1, "RemoteToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3396
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 3397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3398
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 3399
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toWindowContainerToken()Landroid/window/WindowContainerToken;
    .registers 2

    .line 3386
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_b

    .line 3387
    new-instance v0, Landroid/window/WindowContainerToken;

    invoke-direct {v0, p0}, Landroid/window/WindowContainerToken;-><init>(Landroid/window/IWindowContainerToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    .line 3389
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method
