.class public final Lcom/android/server/inputmethod/ImePlatformCompatUtils;
.super Ljava/lang/Object;
.source "ImePlatformCompatUtils.java"


# instance fields
.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "platform_compat"

    .line 33
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    return-void
.end method


# virtual methods
.method public final isChangeEnabledByUid(JI)Z
    .registers 4

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseSetInteractiveProtocol(I)Z
    .registers 4

    const-wide/32 v0, 0x94fa793

    .line 42
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->isChangeEnabledByUid(JI)Z

    move-result p0

    return p0
.end method
