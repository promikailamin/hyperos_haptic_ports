.class public final Landroid/os/TurboSchedMonitorImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "TurboSchedMonitorImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TurboSchedMonitorImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/os/TurboSchedMonitorImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {v0}, Landroid/os/TurboSchedMonitorImpl;-><init>()V

    sput-object v0, Landroid/os/TurboSchedMonitorImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/TurboSchedMonitorImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
