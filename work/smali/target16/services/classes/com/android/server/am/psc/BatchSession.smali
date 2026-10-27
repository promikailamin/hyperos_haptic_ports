.class public abstract Lcom/android/server/am/psc/BatchSession;
.super Ljava/lang/Object;
.source "BatchSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final BATCH_SESSION_TAGS:[Ljava/lang/String;


# instance fields
.field public mNestedStartCount:I

.field public mUpdateReason:I


# direct methods
.method public static synthetic $r8$lambda$8LA8XcP1Ug1GdlUiO3Bab_A9MnQ(I)Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatchSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToStringSuffix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1b

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/psc/BatchSession;->BATCH_SESSION_TAGS:[Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/android/server/am/psc/BatchSession$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/psc/BatchSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 67
    const-string p0, "BatchSession"

    const-string v0, "close() called on an unstarted BatchSession!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_e
    iget v0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->onClose()V

    :cond_1d
    const-wide/16 v0, 0x40

    .line 77
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onClose()V
.end method

.method public start(I)V
    .registers 5

    .line 51
    sget-object v0, Lcom/android/server/am/psc/BatchSession;->BATCH_SESSION_TAGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    if-nez v0, :cond_f

    .line 54
    iput p1, p0, Lcom/android/server/am/psc/BatchSession;->mUpdateReason:I

    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 56
    iput v0, p0, Lcom/android/server/am/psc/BatchSession;->mNestedStartCount:I

    return-void
.end method
