.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeForStoppedLocked$19$com-android-server-alarm-AlarmManagerService(ILcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
