.class public final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/Watchdog-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 1

    .line 456
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    return-void
.end method
