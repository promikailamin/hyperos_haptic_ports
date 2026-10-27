.class public interface abstract Lcom/android/server/alarm/AlarmManagerServiceStub;
.super Ljava/lang/Object;
.source "AlarmManagerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerServiceStub$Instance;
    }
.end annotation


# direct methods
.method public static get()Lcom/android/server/alarm/AlarmManagerServiceStub;
    .registers 1

    .line 15
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerServiceStub$Instance;->-$$Nest$sfgetsInstance()Lcom/android/server/alarm/AlarmManagerServiceStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract alignAlarmLocked(Lcom/android/server/alarm/Alarm;)Z
.end method

.method public checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/alarm/Alarm;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p1, "pkgList"    # [Ljava/lang/String;

    .line 27
    return-object p1
.end method

.method public abstract init(Lcom/android/server/alarm/AlarmManagerService;)V
.end method
