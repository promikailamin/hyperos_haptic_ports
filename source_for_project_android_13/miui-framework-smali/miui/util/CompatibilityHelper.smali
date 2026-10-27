.class public Lmiui/util/CompatibilityHelper;
.super Ljava/lang/Object;
.source "CompatibilityHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNavigationBar(I)Z
    .registers 3
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    nop

    .line 48
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 49
    .local v0, "iWindow":Landroid/view/IWindowManager;
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v1

    return v1
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 42
    const-string v0, "CompatibilityHelper"

    const-string v1, "Unimplement screenshot in Android S"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I

    .line 28
    const-string v0, "CompatibilityHelper"

    const-string v1, "Unimplement screenshot in Android S"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
