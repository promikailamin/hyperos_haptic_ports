.class public final Landroid/os/perfdebug/PerfDebugMonitorImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "PerfDebugMonitorImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/PerfDebugMonitorImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/os/perfdebug/PerfDebugMonitorImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;

    invoke-direct {v0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;-><init>()V

    sput-object v0, Landroid/os/perfdebug/PerfDebugMonitorImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/perfdebug/PerfDebugMonitorImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
