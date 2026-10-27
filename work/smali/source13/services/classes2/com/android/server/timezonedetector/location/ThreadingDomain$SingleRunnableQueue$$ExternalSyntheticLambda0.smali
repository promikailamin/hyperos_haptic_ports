.class public final synthetic Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->lambda$runDelayed$0$com-android-server-timezonedetector-location-ThreadingDomain$SingleRunnableQueue(Ljava/lang/Runnable;)V

    return-void
.end method
