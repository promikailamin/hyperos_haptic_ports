.class public Lcom/android/server/am/TraceErrorLogger;
.super Ljava/lang/Object;
.source "TraceErrorLogger.java"


# static fields
.field private static final COUNTER_PREFIX:Ljava/lang/String; = "ErrorId:"

.field private static final PLACEHOLDER_VALUE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "errorId"    # Ljava/util/UUID;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-wide/16 v1, 0x40

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 55
    return-void
.end method

.method public addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    .registers 7
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "errorId"    # Ljava/util/UUID;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v2, "Subject(for ErrorId %s):%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 68
    return-void
.end method

.method public generateErrorId()Ljava/util/UUID;
    .registers 2

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public isAddErrorIdEnabled()Z
    .registers 2

    .line 33
    const/4 v0, 0x1

    return v0
.end method
