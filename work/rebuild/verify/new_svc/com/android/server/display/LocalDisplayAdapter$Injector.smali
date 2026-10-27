.class public Lcom/android/server/display/LocalDisplayAdapter$Injector;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayDeviceConfig(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 6

    .line 1616
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public getBacklightAdapter(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
    .registers 4

    .line 1621
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V

    return-object p0
.end method

.method public getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .registers 1

    .line 1611
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;-><init>()V

    return-object p0
.end method

.method public setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .registers 4

    .line 1608
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;-><init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$Injector;->mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    return-void
.end method
