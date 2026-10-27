.class public Lcom/android/server/location/injector/SystemEmergencyHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$2;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 91
    const-string p1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 96
    :cond_d
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$2;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/EmergencyHelper;->dispatchEmergencyStateChanged()V

    return-void
.end method
