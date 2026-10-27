.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$1$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
