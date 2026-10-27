.class public final synthetic Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ImeTrackerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ImeTrackerService;JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ImeTrackerService;

    iput-wide p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$1:J

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/inputmethod/ImeTrackerService;->$r8$lambda$x4pxJopf79h3LdCZqlMY9-JYhgI(Lcom/android/server/inputmethod/ImeTrackerService;JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    return-void
.end method
