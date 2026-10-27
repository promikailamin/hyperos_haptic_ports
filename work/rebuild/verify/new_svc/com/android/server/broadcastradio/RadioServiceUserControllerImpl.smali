.class public final Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;
.super Ljava/lang/Object;
.source "RadioServiceUserControllerImpl.java"

# interfaces
.implements Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUserId()I
    .registers 1

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public getCurrentUser()I
    .registers 3

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 46
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_11
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0

    .line 50
    :catch_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x2710

    return p0
.end method

.method public isCurrentOrSystemUser()Z
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCallingUserId()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCurrentUser()I

    move-result p0

    if-eq v0, p0, :cond_f

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method
