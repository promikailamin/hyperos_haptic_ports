.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/Alarm;

.field public final synthetic f$1:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/alarm/Alarm;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/alarm/Alarm;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$maybeUnregisterTareListenerLocked$8(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
