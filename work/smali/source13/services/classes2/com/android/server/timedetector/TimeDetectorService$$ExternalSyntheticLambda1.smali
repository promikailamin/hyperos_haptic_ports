.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Landroid/app/time/ExternalTimeSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;->f$1:Landroid/app/time/ExternalTimeSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;->f$1:Landroid/app/time/ExternalTimeSuggestion;

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestExternalTime$3$com-android-server-timedetector-TimeDetectorService(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method
