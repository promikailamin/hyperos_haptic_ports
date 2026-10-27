.class public final synthetic Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/WorkSource;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;IIILandroid/os/WorkSource;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$5:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 9

    .line 0
    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;->f$5:Landroid/os/WorkSource;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/power/WakelockTracer;->$r8$lambda$xCB5Z5GO_6FtUDCYWxvUpuwGJJs(ZLjava/lang/String;IIILandroid/os/WorkSource;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
