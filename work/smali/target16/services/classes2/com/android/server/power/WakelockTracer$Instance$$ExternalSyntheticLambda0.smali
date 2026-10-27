.class public final synthetic Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(JLjava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;->f$0:J

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/power/WakelockTracer$Instance;->$r8$lambda$XBbKylGABi8hw4-V8yGquxIc85k(JLjava/util/ArrayList;Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result p0

    return p0
.end method
