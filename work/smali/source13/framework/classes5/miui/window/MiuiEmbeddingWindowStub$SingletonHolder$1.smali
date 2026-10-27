.class Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowStub.java"

# interfaces
.implements Lmiui/window/MiuiEmbeddingWindowStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->getStub()Lmiui/window/MiuiEmbeddingWindowStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "miui_embedding_window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/window/IMiuiEmbeddingWindow;

    move-result-object v0

    iput-object v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    return-void
.end method


# virtual methods
.method public blacklist overrideDisplayRotation(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 69
    iget-object v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 71
    :try_start_5
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow;->isUsingCameraWhenEmbedded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    iput v1, p1, Landroid/view/DisplayInfo;->rotation:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_14

    .line 73
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_13
    goto :goto_18

    .line 75
    :catch_14
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return v1
.end method
