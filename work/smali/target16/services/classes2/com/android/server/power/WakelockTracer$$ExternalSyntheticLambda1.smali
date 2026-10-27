.class public final synthetic Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/WakelockTracer$Instance;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/WakelockTracer$Instance;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/WakelockTracer$Instance;

    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/WakelockTracer$Instance;

    invoke-static {p0, p1}, Lcom/android/server/power/WakelockTracer;->$r8$lambda$PSi6d9bxQArkO2T9FQ7_pZ3lpj4(Lcom/android/server/power/WakelockTracer$Instance;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
