.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/Alarm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/Alarm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/alarm/Alarm;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/alarm/Alarm;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
