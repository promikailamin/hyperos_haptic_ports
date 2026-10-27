.class Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .registers 2

    .line 1561
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1565
    if-nez p1, :cond_8

    .line 1566
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$monCallOver(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    goto :goto_d

    .line 1568
    :cond_8
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$monCall(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    .line 1570
    :goto_d
    return-void
.end method
