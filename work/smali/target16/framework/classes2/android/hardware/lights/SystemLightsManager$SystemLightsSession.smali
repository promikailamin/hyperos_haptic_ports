.class public final Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;
.super Landroid/hardware/lights/LightsManager$LightsSession;
.source "SystemLightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/SystemLightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemLightsSession"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field final synthetic blacklist this$0:Landroid/hardware/lights/SystemLightsManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/lights/SystemLightsManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>()V

    .line 139
    new-instance p1, Landroid/util/CloseGuard;

    invoke-direct {p1}, Landroid/util/CloseGuard;-><init>()V

    iput-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 140
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    .line 147
    iget-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v0, "SystemLightsSession.close"

    invoke-virtual {p1, v0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/lights/SystemLightsManager;Landroid/hardware/lights/SystemLightsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;-><init>(Landroid/hardware/lights/SystemLightsManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 188
    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_20

    .line 190
    :try_start_4
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {v0}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->closeSession(Landroid/os/IBinder;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    .line 192
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 195
    goto :goto_20

    .line 193
    :catch_1a
    move-exception v0

    .line 194
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 197
    :cond_20
    :goto_20
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 205
    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 207
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    throw v0
.end method

.method public whitelist requestLights(Landroid/hardware/lights/LightsRequest;)V
    .registers 7

    .line 162
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_58

    .line 165
    :try_start_7
    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object p1

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 168
    const/4 v2, 0x0

    move v3, v2

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 169
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 171
    :cond_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/lights/LightState;

    .line 172
    nop

    :goto_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 173
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/LightState;

    aput-object v3, v0, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 175
    :cond_44
    iget-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {p1}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1, v2, v1, v0}, Landroid/hardware/lights/ILightsManager;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_51} :catch_52

    .line 178
    goto :goto_58

    .line 176
    :catch_52
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 180
    :cond_58
    :goto_58
    return-void
.end method
