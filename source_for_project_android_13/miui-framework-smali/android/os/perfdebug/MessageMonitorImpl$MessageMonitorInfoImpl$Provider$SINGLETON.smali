.class public final Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MessageMonitorImpl$MessageMonitorInfoImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {v0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;-><init>()V

    sput-object v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
