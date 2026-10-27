.class public final synthetic Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->lambda$new$0$com-android-server-job-controllers-idle-DeviceIdlenessTracker()V

    return-void
.end method
