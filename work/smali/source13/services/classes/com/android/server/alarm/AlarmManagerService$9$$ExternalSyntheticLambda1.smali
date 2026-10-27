.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$9;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$9;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$9;

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$9;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService$9;->lambda$updateAlarmsForUid$1$com-android-server-alarm-AlarmManagerService$9(ILcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
