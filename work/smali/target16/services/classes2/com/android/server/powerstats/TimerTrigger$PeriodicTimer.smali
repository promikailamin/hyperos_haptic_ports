.class public Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;
.super Ljava/lang/Object;
.source "TimerTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mMsgType:I

.field public final mName:Ljava/lang/String;

.field public final mPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V
    .registers 6

    .line 46
    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mName:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    .line 49
    iput p5, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    return-void
.end method

.method public run()V
    .registers 13

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    add-long/2addr v2, v0

    .line 60
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v0}, Lcom/android/server/powerstats/TimerTrigger;->-$$Nest$fgetmAlarmManager(Lcom/android/server/powerstats/TimerTrigger;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v1}, Lcom/android/server/powerstats/TimerTrigger;->-$$Nest$fgetmHandler(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    iget v1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    invoke-virtual {v0, v1}, Lcom/android/server/powerstats/PowerStatsLogTrigger;->logPowerStatsData(I)V

    return-void
.end method
