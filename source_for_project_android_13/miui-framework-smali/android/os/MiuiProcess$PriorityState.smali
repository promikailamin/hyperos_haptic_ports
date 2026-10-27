.class final Landroid/os/MiuiProcess$PriorityState;
.super Ljava/lang/Object;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriorityState"
.end annotation


# instance fields
.field private blacklist prevPriority:I

.field private blacklist regionCounter:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetprevPriority(Landroid/os/MiuiProcess$PriorityState;)I
    .registers 1

    iget p0, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetregionCounter(Landroid/os/MiuiProcess$PriorityState;)I
    .registers 1

    iget p0, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputprevPriority(Landroid/os/MiuiProcess$PriorityState;I)V
    .registers 2

    iput p1, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputregionCounter(Landroid/os/MiuiProcess$PriorityState;I)V
    .registers 2

    iput p1, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    .line 59
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MiuiProcess$PriorityState-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/MiuiProcess$PriorityState;-><init>()V

    return-void
.end method
