.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->lambda$onPowerGroupWakefulnessChanged$4$com-android-server-power-Notifier(IIII)V

    return-void
.end method
