.class public Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "ProcessMemInfo.java"


# instance fields
.field public final adjReason:Ljava/lang/String;

.field public final adjType:Ljava/lang/String;

.field public dmabufPss:J

.field public dmabufRss:J

.field public memtrack:J

.field public final name:Ljava/lang/String;

.field public final oomAdj:I

.field public final pid:I

.field public final procState:I

.field public pss:J

.field public swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/android/server/am/ProcessMemInfo;->pid:I

    .line 36
    iput p3, p0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 37
    iput p4, p0, Lcom/android/server/am/ProcessMemInfo;->procState:I

    .line 38
    iput-object p5, p0, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    return-void
.end method
