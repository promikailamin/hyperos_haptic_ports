.class Landroid/hardware/Camera$IAppOpsCallbackWrapper;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAppOpsCallbackWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/Camera;)V
    .registers 3

    .line 1705
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 1706
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;->mWeakCamera:Ljava/lang/ref/WeakReference;

    .line 1707
    return-void
.end method


# virtual methods
.method public blacklist opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1711
    const/16 p2, 0x1c

    if-ne p1, p2, :cond_11

    .line 1712
    iget-object p1, p0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;->mWeakCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    .line 1713
    if-eqz p1, :cond_11

    .line 1714
    invoke-static {p1}, Landroid/hardware/Camera;->-$$Nest$mupdateAppOpsPlayAudio(Landroid/hardware/Camera;)V

    .line 1717
    :cond_11
    return-void
.end method
