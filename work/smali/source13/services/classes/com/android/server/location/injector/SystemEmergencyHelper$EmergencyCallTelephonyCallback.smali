.class Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SystemEmergencyHelper.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 107
    if-nez p1, :cond_1d

    .line 108
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter v0

    .line 109
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-boolean v1, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_18

    .line 110
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 111
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 113
    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 115
    :cond_1d
    :goto_1d
    return-void
.end method
