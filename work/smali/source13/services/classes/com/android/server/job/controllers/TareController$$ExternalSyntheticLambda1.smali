.class public final synthetic Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/TareController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/TareController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/TareController;

    return-void
.end method


# virtual methods
.method public final onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/TareController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/TareController;->lambda$new$0$com-android-server-job-controllers-TareController(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    return-void
.end method
