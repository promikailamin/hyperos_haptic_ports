.class final Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "BrightnessThrottler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessThrottler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field private mStarted:Z

.field private mThermalService:Landroid/os/IThermalService;

.field final synthetic this$0:Lcom/android/server/display/BrightnessThrottler;


# direct methods
.method constructor <init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V
    .registers 4
    .param p2, "injector"    # Lcom/android/server/display/BrightnessThrottler$Injector;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 191
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 193
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 246
    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz v0, :cond_27

    .line 249
    const-string v0, "    ThermalService available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 251
    :cond_27
    const-string v0, "    ThermalService not available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :goto_2c
    return-void
.end method

.method synthetic lambda$notifyThrottling$0$com-android-server-display-BrightnessThrottler$SkinThermalStatusObserver(Landroid/os/Temperature;)V
    .registers 4
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 202
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 203
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-static {v1, v0}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$mthermalStatusChanged(Lcom/android/server/display/BrightnessThrottler;I)V

    .line 204
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 4
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 201
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method startObserving()V
    .registers 4

    .line 208
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_5

    .line 212
    return-void

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 215
    const-string v1, "BrightnessThrottler"

    if-nez v0, :cond_17

    .line 216
    const-string v0, "Could not observe thermal status. Service not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 222
    :cond_17
    const/4 v2, 0x3

    :try_start_18
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 226
    goto :goto_25

    .line 224
    :catch_1f
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to register thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method stopObserving()V
    .registers 4

    .line 230
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_5

    .line 234
    return-void

    .line 237
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    .line 241
    goto :goto_16

    .line 239
    :catch_e
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BrightnessThrottler"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 243
    return-void
.end method
